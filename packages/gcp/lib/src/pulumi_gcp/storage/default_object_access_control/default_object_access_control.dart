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
///
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
    this.bucket = registerOutput<String>('bucket');
    this.domain = registerOutput<String>('domain');
    this.email = registerOutput<String>('email');
    this.entity = registerOutput<String>('entity');
    this.entityId = registerOutput<String>('entityId');
    this.generation = registerOutput<int>('generation');
    this.object = registerOutput<String?>('object');
    this.projectTeams =
        registerOutput<List<DefaultObjectAccessControlProjectTeam>>(
            'projectTeams');
    this.role = registerOutput<String>('role');
  }
}
