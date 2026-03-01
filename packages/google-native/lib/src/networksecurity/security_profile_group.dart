import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_group_args.dart';

/// Creates a new SecurityProfileGroup in a given organization and location.
/// Auto-naming is currently not supported for this resource.
class SecurityProfileGroup extends pulumi.CustomResource {
  /// Resource creation timestamp.
  late final pulumi.Output<String> createTime;

  /// Optional. An optional description of the profile group. Max length 2048 characters.
  late final pulumi.Output<String> description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. Labels as key value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Required. Short name of the SecurityProfileGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile_group1".
  late final pulumi.Output<String> securityProfileGroupId;

  /// Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  late final pulumi.Output<String> threatPreventionProfile;

  /// Last resource update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SecurityProfileGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityProfileGroup]. {@macro pulumi_networksecurity_v1beta1_security_profile_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityProfileGroup(
    String name, {
    SecurityProfileGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networksecurity/v1beta1:SecurityProfileGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.securityProfileGroupId = registerOutput<String>(
      'securityProfileGroupId',
    );
    this.threatPreventionProfile = registerOutput<String>(
      'threatPreventionProfile',
    );
    this.updateTime = registerOutput<String>('updateTime');
  }
}
