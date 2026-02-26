import 'package:pulumi/pulumi.dart';
import '../default_object_access_control_project_team/default_object_access_control_project_team.dart';
import 'default_object_access_control_args.dart';

/// The DefaultObjectAccessControls resources represent the Access Control
/// Lists (ACLs) applied to a new object within a Google Cloud Storage bucket
/// when no ACL was provided for that object. ACLs let you specify who has
/// access to your bucket contents and to what extent.
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
/// To get more information about DefaultObjectAccessControl, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/defaultObjectAccessControls)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/access-control/create-manage-lists)
///
/// ## Example Usage
///
/// ### Storage Default Object Access Control Public
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
/// const publicRule = new gcp.storage.DefaultObjectAccessControl("public_rule", {
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
/// public_rule = gcp.storage.DefaultObjectAccessControl("public_rule",
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
/// var publicRule = new Gcp.Storage.DefaultObjectAccessControl("public_rule", new()
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
/// _, err = storage.NewDefaultObjectAccessControl(ctx, "public_rule", &storage.DefaultObjectAccessControlArgs{
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
/// import com.pulumi.gcp.storage.DefaultObjectAccessControl;
/// import com.pulumi.gcp.storage.DefaultObjectAccessControlArgs;
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
/// var publicRule = new DefaultObjectAccessControl("publicRule", DefaultObjectAccessControlArgs.builder()
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
/// type: gcp:storage:DefaultObjectAccessControl
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
/// DefaultObjectAccessControl can be imported using any of these accepted formats:
///
/// * `{{bucket}}/{{entity}}`
///
/// When using the `pulumi import` command, DefaultObjectAccessControl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/defaultObjectAccessControl:DefaultObjectAccessControl default {{bucket}}/{{entity}}
/// ```
class DefaultObjectAccessControl extends CustomResource {
  /// The name of the bucket.
  late final Output<String> bucket;

  /// The domain associated with the entity.
  late final Output<String> domain;

  /// The email address associated with the entity.
  late final Output<String> email;

  /// The entity holding the permission, in one of the following forms:
  /// * user-{{userId}}
  /// * user-{{email}} (such as "user-liz@example.com")
  /// * group-{{groupId}}
  /// * group-{{email}} (such as "group-example@googlegroups.com")
  /// * domain-{{domain}} (such as "domain-example.com")
  /// * project-team-{{projectId}}
  /// * allUsers
  /// * allAuthenticatedUsers
  late final Output<String> entity;

  /// The ID for the entity
  late final Output<String> entityId;

  /// The content generation of the object, if applied to an object.
  late final Output<int> generation;

  /// The name of the object, if applied to an object.
  late final Output<String?> object;

  /// The project team associated with the entity
  /// Structure is documented below.
  late final Output<List<DefaultObjectAccessControlProjectTeam>> projectTeams;

  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  late final Output<String> role;

  DefaultObjectAccessControl(
    String name, {
    DefaultObjectAccessControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/defaultObjectAccessControl:DefaultObjectAccessControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.email = Output.createUnknown<String>();
    this.entity = Output.createUnknown<String>();
    this.entityId = Output.createUnknown<String>();
    this.generation = Output.createUnknown<int>();
    this.object = Output.createUnknown<String?>();
    this.projectTeams =
        Output.createUnknown<List<DefaultObjectAccessControlProjectTeam>>();
    this.role = Output.createUnknown<String>();
  }
}
