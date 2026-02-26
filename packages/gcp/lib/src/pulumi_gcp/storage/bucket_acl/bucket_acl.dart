import 'package:pulumi/pulumi.dart';
import 'bucket_aclargs.dart';

/// Authoritatively manages a bucket's ACLs in Google cloud storage service (GCS). For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/access-control/lists)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls).
///
/// Bucket ACLs can be managed non authoritatively using the <span pulumi-lang-nodejs="`storageBucketAccessControl`" pulumi-lang-dotnet="`StorageBucketAccessControl`" pulumi-lang-go="`storageBucketAccessControl`" pulumi-lang-python="`storage_bucket_access_control`" pulumi-lang-yaml="`storageBucketAccessControl`" pulumi-lang-java="`storageBucketAccessControl`">`storage_bucket_access_control`</span> resource. Do not use these two resources in conjunction to manage the same bucket.
///
/// Permissions can be granted either by ACLs or Cloud IAM policies. In general, permissions granted by Cloud IAM policies do not appear in ACLs, and permissions granted by ACLs do not appear in Cloud IAM policies. The only exception is for ACLs applied directly on a bucket and certain bucket-level Cloud IAM policies, as described in [Cloud IAM relation to ACLs](https://cloud.google.com/storage/docs/access-control/iam#acls).
///
/// **NOTE** This resource will not remove the `project-owners-<project_id>` entity from the `OWNER` role.
///
/// ## Example Usage
///
/// Example creating an ACL on a bucket with one owner, and one reader.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const image_store = new gcp.storage.Bucket("image-store", {
/// name: "image-store-bucket",
/// location: "EU",
/// });
/// const image_store_acl = new gcp.storage.BucketACL("image-store-acl", {
/// bucket: image_store.name,
/// roleEntities: [
/// "OWNER:user-my.email@gmail.com",
/// "READER:group-mygroup",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_store = gcp.storage.Bucket("image-store",
/// name="image-store-bucket",
/// location="EU")
/// image_store_acl = gcp.storage.BucketACL("image-store-acl",
/// bucket=image_store.name,
/// role_entities=[
/// "OWNER:user-my.email@gmail.com",
/// "READER:group-mygroup",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var image_store = new Gcp.Storage.Bucket("image-store", new()
/// {
/// Name = "image-store-bucket",
/// Location = "EU",
/// });
///
/// var image_store_acl = new Gcp.Storage.BucketACL("image-store-acl", new()
/// {
/// Bucket = image_store.Name,
/// RoleEntities = new[]
/// {
/// "OWNER:user-my.email@gmail.com",
/// "READER:group-mygroup",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// image_store, err := storage.NewBucket(ctx, "image-store", &storage.BucketArgs{
/// Name:     pulumi.String("image-store-bucket"),
/// Location: pulumi.String("EU"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewBucketACL(ctx, "image-store-acl", &storage.BucketACLArgs{
/// Bucket: image_store.Name,
/// RoleEntities: pulumi.StringArray{
/// pulumi.String("OWNER:user-my.email@gmail.com"),
/// pulumi.String("READER:group-mygroup"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketACL;
/// import com.pulumi.gcp.storage.BucketACLArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var image_store = new Bucket("image-store", BucketArgs.builder()
/// .name("image-store-bucket")
/// .location("EU")
/// .build());
///
/// var image_store_acl = new BucketACL("image-store-acl", BucketACLArgs.builder()
/// .bucket(image_store.name())
/// .roleEntities(
/// "OWNER:user-my.email@gmail.com",
/// "READER:group-mygroup")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// image-store:
/// type: gcp:storage:Bucket
/// properties:
/// name: image-store-bucket
/// location: EU
/// image-store-acl:
/// type: gcp:storage:BucketACL
/// properties:
/// bucket: ${["image-store"].name}
/// roleEntities:
/// - OWNER:user-my.email@gmail.com
/// - READER:group-mygroup
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// This resource does not support import.
class BucketACL extends CustomResource {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  late final Output<String> bucket;

  /// Configure this ACL to be the default ACL.
  late final Output<String?> defaultAcl;

  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if <span pulumi-lang-nodejs="`roleEntity`" pulumi-lang-dotnet="`RoleEntity`" pulumi-lang-go="`roleEntity`" pulumi-lang-python="`role_entity`" pulumi-lang-yaml="`roleEntity`" pulumi-lang-java="`roleEntity`">`role_entity`</span> is not.
  late final Output<String?> predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if <span pulumi-lang-nodejs="`predefinedAcl`" pulumi-lang-dotnet="`PredefinedAcl`" pulumi-lang-go="`predefinedAcl`" pulumi-lang-python="`predefined_acl`" pulumi-lang-yaml="`predefinedAcl`" pulumi-lang-java="`predefinedAcl`">`predefined_acl`</span> is not.
  late final Output<List<String>> roleEntities;

  BucketACL(
    String name, {
    BucketACLArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucketACL:BucketACL',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.defaultAcl = registerOutput<String?>('defaultAcl');
    this.predefinedAcl = registerOutput<String?>('predefinedAcl');
    this.roleEntities = registerOutput<List<String>>('roleEntities');
  }
}
