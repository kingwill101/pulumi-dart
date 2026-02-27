import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_group_args.dart';

/// A security profile group defines a container for security profiles.
///
///
/// To get more information about SecurityProfileGroup, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/organizations.locations.securityProfileGroups)
/// * How-to Guides
/// * [Create and manage security profile groups](https://cloud.google.com/firewall/docs/configure-security-profile-groups)
/// * [Security profile groups overview](https://cloud.google.com/firewall/docs/about-security-profile-groups)
///
/// ## Example Usage
///
/// ### Network Security Security Profile Group Basic
///
///
///
/// ### Network Security Security Profile Group Mirroring
///
///
///
/// ### Network Security Security Profile Group Intercept
///
///
///
/// ### Network Security Security Profile Group Url Filtering
///
///
///
///
/// ## Import
///
/// SecurityProfileGroup can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/securityProfileGroups/{{name}}`
///
/// When using the `pulumi import` command, SecurityProfileGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/securityProfileGroup:SecurityProfileGroup default {{parent}}/locations/{{location}}/securityProfileGroups/{{name}}
/// ```
class SecurityProfileGroup extends pulumi.CustomResource {
  /// Time the security profile group was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Reference to a SecurityProfile with the CustomIntercept configuration.
  late final pulumi.Output<String?> customInterceptProfile;

  /// Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  late final pulumi.Output<String?> customMirroringProfile;

  /// An optional description of the profile. The Max length is 512 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an up-to-date
  /// value before proceeding.
  late final pulumi.Output<String> etag;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the security profile group.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// The name of the security profile group resource.
  late final pulumi.Output<String> name;

  /// The name of the parent this security profile group belongs to.
  /// Format: organizations/{organization_id}.
  late final pulumi.Output<String?> parent;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  late final pulumi.Output<String?> threatPreventionProfile;

  /// Time the security profile group was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  late final pulumi.Output<String?> urlFilteringProfile;

  SecurityProfileGroup(
    String name, {
    SecurityProfileGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/securityProfileGroup:SecurityProfileGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customInterceptProfile =
        registerOutput<String?>('customInterceptProfile');
    this.customMirroringProfile =
        registerOutput<String?>('customMirroringProfile');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.threatPreventionProfile =
        registerOutput<String?>('threatPreventionProfile');
    this.updateTime = registerOutput<String>('updateTime');
    this.urlFilteringProfile = registerOutput<String?>('urlFilteringProfile');
  }
}
