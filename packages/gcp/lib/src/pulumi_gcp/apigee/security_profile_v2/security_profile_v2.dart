import 'package:pulumi/pulumi.dart';
import '../security_profile_v2_profile_assessment_config/security_profile_v2_profile_assessment_config.dart';
import 'security_profile_v2_args.dart';

/// Security profile for risk assessment version 2 in Apigee.
///
///
/// To get more information about SecurityProfileV2, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.securityProfilesV2/create)
/// * How-to Guides
/// * [Creating a security profile](https://cloud.google.com/apigee/docs/api-security/security-scores#security-profiles-v2)
///
/// ## Example Usage
///
/// ### Apigee Security Profile V2 Basic
///
///
///
///
/// ## Import
///
/// SecurityProfileV2 can be imported using any of these accepted formats:
///
/// * `{{org_id}}/securityProfilesV2/{{profile_id}}`
///
/// * `{{org_id}}/{{profile_id}}`
///
/// When using the `pulumi import` command, SecurityProfileV2 can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/securityProfileV2:SecurityProfileV2 default {{org_id}}/securityProfilesV2/{{profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/securityProfileV2:SecurityProfileV2 default {{org_id}}/{{profile_id}}
/// ```
class SecurityProfileV2 extends CustomResource {
  /// The timestamp at which this profile was created.
  late final Output<String> createTime;

  /// Description of the security profile.
  late final Output<String?> description;

  /// Name of the security profile v2 resource,
  /// in the format `organizations/{{org_name}}/securityProfilesV2/{{profile_id}}`.
  late final Output<String> name;

  /// The Apigee Organization associated with the Apigee Security Profile V2,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// A map of the assessment name and the assessment config.
  /// Structure is documented below.
  late final Output<List<SecurityProfileV2ProfileAssessmentConfig>>
      profileAssessmentConfigs;

  /// Resource ID of the security profile.
  late final Output<String> profileId;

  /// The timestamp at which this profile was most recently updated.
  late final Output<String> updateTime;

  SecurityProfileV2(
    String name, {
    SecurityProfileV2Args? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/securityProfileV2:SecurityProfileV2',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.profileAssessmentConfigs =
        registerOutput<List<SecurityProfileV2ProfileAssessmentConfig>>(
            'profileAssessmentConfigs');
    this.profileId = registerOutput<String>('profileId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
