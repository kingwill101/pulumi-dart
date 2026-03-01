import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_control_args.dart';

/// Bucket ACLs can be managed authoritatively using the
/// `storage_bucket_acl` resource. Do not use these two resources in conjunction to manage the same bucket.
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
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "static-content-bucket",
///     location: "US",
/// });
/// const publicRule = new gcp.storage.BucketAccessControl("public_rule", {
///     bucket: bucket.name,
///     role: "READER",
///     entity: "allUsers",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="static-content-bucket",
///     location="US")
/// public_rule = gcp.storage.BucketAccessControl("public_rule",
///     bucket=bucket.name,
///     role="READER",
///     entity="allUsers")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "static-content-bucket",
///         Location = "US",
///     });
///
///     var publicRule = new Gcp.Storage.BucketAccessControl("public_rule", new()
///     {
///         Bucket = bucket.Name,
///         Role = "READER",
///         Entity = "allUsers",
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
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("static-content-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketAccessControl(ctx, "public_rule", &storage.BucketAccessControlArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("READER"),
/// 			Entity: pulumi.String("allUsers"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("static-content-bucket")
///             .location("US")
///             .build());
///
///         var publicRule = new BucketAccessControl("publicRule", BucketAccessControlArgs.builder()
///             .bucket(bucket.name())
///             .role("READER")
///             .entity("allUsers")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   publicRule:
///     type: gcp:storage:BucketAccessControl
///     name: public_rule
///     properties:
///       bucket: ${bucket.name}
///       role: READER
///       entity: allUsers
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: static-content-bucket
///       location: US
/// ```
///
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
class BucketAccessControl extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;

  /// The domain associated with the entity.
  late final pulumi.Output<String> domain;

  /// The email address associated with the entity.
  late final pulumi.Output<String> email;

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
  late final pulumi.Output<String> entity;

  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`, `WRITER`.
  late final pulumi.Output<String?> role;

  /// Creates a new [BucketAccessControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketAccessControl]. {@macro pulumi_storage_bucket_access_control_bucket_access_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketAccessControl(
    String name, {
    BucketAccessControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:storage/bucketAccessControl:BucketAccessControl',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.email = registerOutput<String>('email');
    this.entity = registerOutput<String>('entity');
    this.role = registerOutput<String?>('role');
  }
}
