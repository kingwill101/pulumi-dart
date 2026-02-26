import 'package:pulumi/pulumi.dart';
import 'security_profile_args2.dart';
import 'threat_prevention_profile_response.dart';

/// Creates a new SecurityProfile in a given organization and location.
/// Auto-naming is currently not supported for this resource.
class SecurityProfile2 extends CustomResource {
  /// Resource creation timestamp.
  late final Output<String> createTime;

  /// Optional. An optional description of the profile. Max length 512 characters.
  late final Output<String> description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. Labels as key value pairs.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile1".
  late final Output<String> securityProfileId;

  /// The threat prevention configuration for the SecurityProfile.
  late final Output<ThreatPreventionProfileResponse> threatPreventionProfile;

  /// Immutable. The single ProfileType that the SecurityProfile resource configures.
  late final Output<String> type;

  /// Last resource update timestamp.
  late final Output<String> updateTime;

  SecurityProfile2(
    String name, {
    SecurityProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:SecurityProfile',
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
    this.securityProfileId = Output.createUnknown<String>();
    this.threatPreventionProfile =
        Output.createUnknown<ThreatPreventionProfileResponse>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
