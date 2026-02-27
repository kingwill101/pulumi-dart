import 'package:pulumi/pulumi.dart';
import '../security_profile_custom_intercept_profile/security_profile_custom_intercept_profile.dart';
import '../security_profile_custom_mirroring_profile/security_profile_custom_mirroring_profile.dart';
import '../security_profile_threat_prevention_profile/security_profile_threat_prevention_profile.dart';
import '../security_profile_url_filtering_profile/security_profile_url_filtering_profile.dart';
import 'security_profile_args.dart';

/// A security profile defines the behavior associated to a profile type.
///
///
/// To get more information about SecurityProfile, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/organizations.locations.securityProfiles)
/// * How-to Guides
/// * [Create and manage security profiles](https://cloud.google.com/firewall/docs/configure-security-profiles)
///
/// ## Example Usage
///
/// ### Network Security Security Profile Basic
///
///
///
/// ### Network Security Security Profile Overrides
///
///
///
/// ### Network Security Security Profile Mirroring
///
///
///
/// ### Network Security Security Profile Intercept
///
///
///
/// ### Network Security Security Profile Url Filtering
///
///
///
/// ### Network Security Security Profile Broker
///
///
///
///
/// ## Import
///
/// SecurityProfile can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/securityProfiles/{{name}}`
///
/// When using the `pulumi import` command, SecurityProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/securityProfile:SecurityProfile default {{parent}}/locations/{{location}}/securityProfiles/{{name}}
/// ```
class SecurityProfile extends CustomResource {
  /// Time the security profile was created in UTC.
  late final Output<String> createTime;

  /// The configuration for defining the Intercept Endpoint Group used to
  /// intercept traffic to third-party firewall appliances.
  /// Structure is documented below.
  late final Output<SecurityProfileCustomInterceptProfile?>
      customInterceptProfile;

  /// The configuration for defining the Mirroring Endpoint Group used to
  /// mirror traffic to third-party collectors.
  /// Structure is documented below.
  late final Output<SecurityProfileCustomMirroringProfile?>
      customMirroringProfile;

  /// An optional description of the security profile. The Max length is 512 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an up-to-date
  /// value before proceeding.
  late final Output<String> etag;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the security profile.
  /// The default value is `global`.
  late final Output<String?> location;

  /// The name of the security profile resource.
  late final Output<String> name;

  /// The name of the parent this security profile belongs to.
  /// Format: organizations/{organization_id}.
  late final Output<String?> parent;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Server-defined URL of this resource.
  late final Output<String> selfLink;

  /// The threat prevention configuration for the security profile.
  /// Structure is documented below.
  late final Output<SecurityProfileThreatPreventionProfile?>
      threatPreventionProfile;

  /// The type of security profile.
  /// Possible values are: `THREAT_PREVENTION`, `URL_FILTERING`, `CUSTOM_MIRRORING`, `CUSTOM_INTERCEPT`.
  late final Output<String> type;

  /// Time the security profile was updated in UTC.
  late final Output<String> updateTime;

  /// The url filtering configuration for the security profile.
  /// Structure is documented below.
  late final Output<SecurityProfileUrlFilteringProfile?> urlFilteringProfile;

  SecurityProfile(
    String name, {
    SecurityProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/securityProfile:SecurityProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customInterceptProfile =
        registerOutput<SecurityProfileCustomInterceptProfile?>(
            'customInterceptProfile');
    this.customMirroringProfile =
        registerOutput<SecurityProfileCustomMirroringProfile?>(
            'customMirroringProfile');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.selfLink = registerOutput<String>('selfLink');
    this.threatPreventionProfile =
        registerOutput<SecurityProfileThreatPreventionProfile?>(
            'threatPreventionProfile');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
    this.urlFilteringProfile =
        registerOutput<SecurityProfileUrlFilteringProfile?>(
            'urlFilteringProfile');
  }
}
