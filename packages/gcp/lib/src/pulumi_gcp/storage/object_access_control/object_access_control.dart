import 'package:pulumi/pulumi.dart' as pulumi;
import '../object_access_control_project_team/object_access_control_project_team.dart';
import 'object_access_control_args.dart';

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
    this.projectTeams =
        registerOutput<List<ObjectAccessControlProjectTeam>>('projectTeams');
    this.role = registerOutput<String>('role');
  }
}
