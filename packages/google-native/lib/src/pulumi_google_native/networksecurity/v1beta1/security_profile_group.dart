import 'package:pulumi/pulumi.dart';
import 'security_profile_group_args.dart';

/// Creates a new SecurityProfileGroup in a given organization and location.
/// Auto-naming is currently not supported for this resource.
class SecurityProfileGroup extends CustomResource {
  /// Resource creation timestamp.
  late final Output<String> createTime;

  /// Optional. An optional description of the profile group. Max length 2048 characters.
  late final Output<String> description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. Labels as key value pairs.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Required. Short name of the SecurityProfileGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile_group1".
  late final Output<String> securityProfileGroupId;

  /// Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  late final Output<String> threatPreventionProfile;

  /// Last resource update timestamp.
  late final Output<String> updateTime;

  SecurityProfileGroup(
    String name, {
    SecurityProfileGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:SecurityProfileGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.securityProfileGroupId = Output.createUnknown<String>();
    this.threatPreventionProfile = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
