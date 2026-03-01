import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_object_aclargs.dart';

/// Authoritatively manages the default object ACLs for a Google Cloud Storage bucket
/// without managing the bucket itself.
///
/// > Note that for each object, its creator will have the `"OWNER"` role in addition
/// to the default ACL that has been defined.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/access-control/lists)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/defaultObjectAccessControls).
///
/// > Want fine-grained control over default object ACLs? Use `gcp.storage.DefaultObjectAccessControl`
/// to control individual role entity pairs.
///
/// ## Example Usage
///
/// Example creating a default object ACL on a bucket with one owner, and one reader.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const image_store = new gcp.storage.Bucket("image-store", {
///     name: "image-store-bucket",
///     location: "EU",
/// });
/// const image_store_default_acl = new gcp.storage.DefaultObjectACL("image-store-default-acl", {
///     bucket: image_store.name,
///     roleEntities: [
///         "OWNER:user-my.email@gmail.com",
///         "READER:group-mygroup",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_store = gcp.storage.Bucket("image-store",
///     name="image-store-bucket",
///     location="EU")
/// image_store_default_acl = gcp.storage.DefaultObjectACL("image-store-default-acl",
///     bucket=image_store.name,
///     role_entities=[
///         "OWNER:user-my.email@gmail.com",
///         "READER:group-mygroup",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image_store = new Gcp.Storage.Bucket("image-store", new()
///     {
///         Name = "image-store-bucket",
///         Location = "EU",
///     });
///
///     var image_store_default_acl = new Gcp.Storage.DefaultObjectACL("image-store-default-acl", new()
///     {
///         Bucket = image_store.Name,
///         RoleEntities = new[]
///         {
///             "OWNER:user-my.email@gmail.com",
///             "READER:group-mygroup",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		image_store, err := storage.NewBucket(ctx, "image-store", &storage.BucketArgs{
/// 			Name:     pulumi.String("image-store-bucket"),
/// 			Location: pulumi.String("EU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewDefaultObjectACL(ctx, "image-store-default-acl", &storage.DefaultObjectACLArgs{
/// 			Bucket: image_store.Name,
/// 			RoleEntities: pulumi.StringArray{
/// 				pulumi.String("OWNER:user-my.email@gmail.com"),
/// 				pulumi.String("READER:group-mygroup"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.storage.DefaultObjectACL;
/// import com.pulumi.gcp.storage.DefaultObjectACLArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var image_store = new Bucket("image-store", BucketArgs.builder()
///             .name("image-store-bucket")
///             .location("EU")
///             .build());
///
///         var image_store_default_acl = new DefaultObjectACL("image-store-default-acl", DefaultObjectACLArgs.builder()
///             .bucket(image_store.name())
///             .roleEntities(
///                 "OWNER:user-my.email@gmail.com",
///                 "READER:group-mygroup")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   image-store:
///     type: gcp:storage:Bucket
///     properties:
///       name: image-store-bucket
///       location: EU
///   image-store-default-acl:
///     type: gcp:storage:DefaultObjectACL
///     properties:
///       bucket: ${["image-store"].name}
///       roleEntities:
///         - OWNER:user-my.email@gmail.com
///         - READER:group-mygroup
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class DefaultObjectACL extends pulumi.CustomResource {
  /// The name of the bucket it applies to.
  late final pulumi.Output<String> bucket;

  /// List of role/entity pairs in the form `ROLE:entity`.
  /// See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Omitting the field is the same as providing an empty list.
  late final pulumi.Output<List<String>> roleEntities;

  /// Creates a new [DefaultObjectACL].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultObjectACL]. {@macro pulumi_storage_default_object_acl_default_object_aclargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultObjectACL(
    String name, {
    DefaultObjectACLArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:storage/defaultObjectACL:DefaultObjectACL',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bucket = registerOutput<String>('bucket');
    this.roleEntities = registerOutput<List<String>>('roleEntities');
  }
}
