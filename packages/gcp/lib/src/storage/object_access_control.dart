import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_args.dart';
import 'object_access_control_project_team.dart';

/// The ObjectAccessControls resources represent the Access Control Lists
/// (ACLs) for objects within Google Cloud Storage. ACLs let you specify
/// who has access to your data and to what extent.
///
/// There are two roles that can be assigned to an entity:
///
/// READERs can get an object, though the acl property will not be revealed.
/// OWNERs are READERs, and they can get the acl property, update an object,
/// and call all objectAccessControls methods on the object. The owner of an
/// object is always an OWNER.
/// For more information, see Access Control, with the caveat that this API
/// uses READER and OWNER instead of READ and FULL_CONTROL.
///
///
/// To get more information about ObjectAccessControl, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/access-control/create-manage-lists)
///
/// ## Example Usage
///
/// ### Storage Object Access Control Public Object
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
/// const object = new gcp.storage.BucketObject("object", {
///     name: "public-object",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("../static/img/header-logo.png"),
/// });
/// const publicRule = new gcp.storage.ObjectAccessControl("public_rule", {
///     object: object.outputName,
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
/// object = gcp.storage.BucketObject("object",
///     name="public-object",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("../static/img/header-logo.png"))
/// public_rule = gcp.storage.ObjectAccessControl("public_rule",
///     object=object.output_name,
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
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "public-object",
///         Bucket = bucket.Name,
///         Source = new FileAsset("../static/img/header-logo.png"),
///     });
///
///     var publicRule = new Gcp.Storage.ObjectAccessControl("public_rule", new()
///     {
///         Object = @object.OutputName,
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
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("public-object"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("../static/img/header-logo.png"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewObjectAccessControl(ctx, "public_rule", &storage.ObjectAccessControlArgs{
/// 			Object: object.OutputName,
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.ObjectAccessControl;
/// import com.pulumi.gcp.storage.ObjectAccessControlArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("public-object")
///             .bucket(bucket.name())
///             .source(new FileAsset("../static/img/header-logo.png"))
///             .build());
///
///         var publicRule = new ObjectAccessControl("publicRule", ObjectAccessControlArgs.builder()
///             .object(object.outputName())
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
///     type: gcp:storage:ObjectAccessControl
///     name: public_rule
///     properties:
///       object: ${object.outputName}
///       bucket: ${bucket.name}
///       role: READER
///       entity: allUsers
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: static-content-bucket
///       location: US
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: public-object
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: ../static/img/header-logo.png
/// ```
///
///
/// ## Import
///
/// ObjectAccessControl can be imported using any of these accepted formats:
///
/// * `{{bucket}}/{{object}}/{{entity}}`
///
/// When using the `pulumi import` command, ObjectAccessControl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/objectAccessControl:ObjectAccessControl default {{bucket}}/{{object}}/{{entity}}
/// ```
class ObjectAccessControl extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// The domain associated with the entity.
  late final pulumi.Output<String> domain;
  /// The email address associated with the entity.
  late final pulumi.Output<String> email;
  /// The entity holding the permission, in one of the following forms:
  /// * user-{{userId}}
  /// * user-{{email}} (such as "user-liz@example.com")
  /// * group-{{groupId}}
  /// * group-{{email}} (such as "group-example@googlegroups.com")
  /// * domain-{{domain}} (such as "domain-example.com")
  /// * project-team-{{projectId}}
  /// * allUsers
  /// * allAuthenticatedUsers
  late final pulumi.Output<String> entity;
  /// The ID for the entity
  late final pulumi.Output<String> entityId;
  /// The content generation of the object, if applied to an object.
  late final pulumi.Output<int> generation;
  /// The name of the object to apply the access control to.
  late final pulumi.Output<String> object;
  /// The project team associated with the entity
  /// Structure is documented below.
  late final pulumi.Output<List<ObjectAccessControlProjectTeam>> projectTeams;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  late final pulumi.Output<String> role;

  /// Creates a new [ObjectAccessControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectAccessControl]. {@macro pulumi_storage_object_access_control_object_access_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectAccessControl(
    String name, {
    ObjectAccessControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/objectAccessControl:ObjectAccessControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.email = registerOutput<String>('email');
    this.entity = registerOutput<String>('entity');
    this.entityId = registerOutput<String>('entityId');
    this.generation = registerOutput<int>('generation');
    this.object = registerOutput<String>('object');
    this.projectTeams = registerOutput<List<ObjectAccessControlProjectTeam>>('projectTeams');
    this.role = registerOutput<String>('role');
  }
}
