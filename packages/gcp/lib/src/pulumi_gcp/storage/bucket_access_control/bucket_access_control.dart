import 'package:pulumi/pulumi.dart';
import 'bucket_access_control_args.dart';

/// Bucket ACLs can be managed authoritatively using the
/// <span pulumi-lang-nodejs="`storageBucketAcl`" pulumi-lang-dotnet="`StorageBucketAcl`" pulumi-lang-go="`storageBucketAcl`" pulumi-lang-python="`storage_bucket_acl`" pulumi-lang-yaml="`storageBucketAcl`" pulumi-lang-java="`storageBucketAcl`">`storage_bucket_acl`</span> resource. Do not use these two resources in conjunction to manage the same bucket.
///
/// The BucketAccessControls resource manages the Access Control List
/// (ACLs) for a single entity/role pairing on a bucket. ACLs let you specify who
/// has access to your data and to what extent.
///
/// There are three roles that can be assigned to an entity:
///
/// READERs can get the bucket, though no acl property will be returned, and
/// list the bucket's objects.  WRITERs are READERs, and they can insert
/// objects into the bucket and delete the bucket's objects.  OWNERs are
/// WRITERs, and they can get the acl property of a bucket, update a bucket,
/// and call all BucketAccessControls methods on the bucket.  For more
/// information, see Access Control, with the caveat that this API uses
/// READER, WRITER, and OWNER instead of READ, WRITE, and FULL_CONTROL.
///
///
/// To get more information about BucketAccessControl, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/access-control/lists)
///
/// ## Example Usage
///
/// ### Storage Bucket Access Control Public Bucket
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "static-content-bucket",
/// location: "US",
/// });
/// const publicRule = new gcp.storage.BucketAccessControl("public_rule", {
/// bucket: bucket.name,
/// role: "READER",
/// entity: "allUsers",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
/// name="static-content-bucket",
/// location="US")
/// public_rule = gcp.storage.BucketAccessControl("public_rule",
/// bucket=bucket.name,
/// role="READER",
/// entity="allUsers")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "static-content-bucket",
/// Location = "US",
/// });
///
/// var publicRule = new Gcp.Storage.BucketAccessControl("public_rule", new()
/// {
/// Bucket = bucket.Name,
/// Role = "READER",
/// Entity = "allUsers",
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
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:     pulumi.String("static-content-bucket"),
/// Location: pulumi.String("US"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewBucketAccessControl(ctx, "public_rule", &storage.BucketAccessControlArgs{
/// Bucket: bucket.Name,
/// Role:   pulumi.String("READER"),
/// Entity: pulumi.String("allUsers"),
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
/// import com.pulumi.gcp.storage.BucketAccessControl;
/// import com.pulumi.gcp.storage.BucketAccessControlArgs;
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
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("static-content-bucket")
/// .location("US")
/// .build());
///
/// var publicRule = new BucketAccessControl("publicRule", BucketAccessControlArgs.builder()
/// .bucket(bucket.name())
/// .role("READER")
/// .entity("allUsers")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// publicRule:
/// type: gcp:storage:BucketAccessControl
/// name: public_rule
/// properties:
/// bucket: ${bucket.name}
/// role: READER
/// entity: allUsers
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: static-content-bucket
/// location: US
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// BucketAccessControl can be imported using any of these accepted formats:
///
/// * `{{bucket}}/{{entity}}`
///
/// When using the `pulumi import` command, BucketAccessControl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/bucketAccessControl:BucketAccessControl default {{bucket}}/{{entity}}
/// ```
class BucketAccessControl extends CustomResource {
  /// The name of the bucket.
  late final Output<String> bucket;

  /// The domain associated with the entity.
  late final Output<String> domain;

  /// The email address associated with the entity.
  late final Output<String> email;

  /// The entity holding the permission, in one of the following forms:
  /// user-userId
  /// user-email
  /// group-groupId
  /// group-email
  /// domain-domain
  /// project-team-projectId
  /// allUsers
  /// allAuthenticatedUsers
  /// Examples:
  /// The user liz@example.com would be user-liz@example.com.
  /// The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  late final Output<String> entity;

  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`, `WRITER`.
  late final Output<String?> role;

  BucketAccessControl(
    String name, {
    BucketAccessControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucketAccessControl:BucketAccessControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.email = Output.createUnknown<String>();
    this.entity = Output.createUnknown<String>();
    this.role = Output.createUnknown<String?>();
  }
}
