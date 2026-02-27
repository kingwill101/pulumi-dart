import 'package:pulumi/pulumi.dart';
import '../registration_contact_settings/registration_contact_settings.dart';
import '../registration_dns_settings/registration_dns_settings.dart';
import '../registration_management_settings/registration_management_settings.dart';
import '../registration_yearly_price/registration_yearly_price.dart';
import 'registration_args.dart';

/// ## Example Usage
///
/// ### Clouddomains Registration Full
///
///
///
///
/// ## Import
///
/// Registration can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/registrations/{{domain_name}}`
///
/// * `{{project}}/{{location}}/{{domain_name}}`
///
/// * `{{location}}/{{domain_name}}`
///
/// When using the `pulumi import` command, Registration can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddomains/registration:Registration default projects/{{project}}/locations/{{location}}/registrations/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddomains/registration:Registration default {{project}}/{{location}}/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddomains/registration:Registration default {{location}}/{{domain_name}}
/// ```
class Registration extends CustomResource {
  /// The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  late final Output<List<String>?> contactNotices;

  /// Required. Settings for contact information linked to the Registration.
  /// Structure is documented below.
  late final Output<RegistrationContactSettings> contactSettings;

  /// Output only. Time at which the automation was created.
  late final Output<String> createTime;

  /// Settings controlling the DNS configuration of the Registration.
  /// Structure is documented below.
  late final Output<RegistrationDnsSettings?> dnsSettings;

  /// Required. The domain name. Unicode domain names must be expressed in Punycode format.
  late final Output<String> domainName;

  /// The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  late final Output<List<String>?> domainNotices;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Output only. Time at which the automation was updated.
  late final Output<String> expireTime;

  /// Output only. The set of issues with the Registration that require attention.
  late final Output<List<String>> issues;

  /// Set of labels associated with the Registration.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the resource
  late final Output<String> location;

  /// Settings for management of the Registration, including renewal, billing, and transfer
  /// Structure is documented below.
  late final Output<RegistrationManagementSettings> managementSettings;

  /// Output only. Name of the Registration resource, in the format projects/*/locations/*/registrations/<domain_name>.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  late final Output<String> registerFailureReason;

  /// Output only. The current state of the Registration.
  late final Output<String> state;

  /// Output only. Set of options for the contactSettings.privacy field that this Registration supports.
  late final Output<List<String>> supportedPrivacies;

  /// Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  /// registrations.retrieveRegisterParameters or registrations.searchDomains calls.
  /// Structure is documented below.
  late final Output<RegistrationYearlyPrice> yearlyPrice;

  Registration(
    String name, {
    RegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddomains/registration:Registration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactNotices = registerOutput<List<String>?>('contactNotices');
    this.contactSettings =
        registerOutput<RegistrationContactSettings>('contactSettings');
    this.createTime = registerOutput<String>('createTime');
    this.dnsSettings = registerOutput<RegistrationDnsSettings?>('dnsSettings');
    this.domainName = registerOutput<String>('domainName');
    this.domainNotices = registerOutput<List<String>?>('domainNotices');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.expireTime = registerOutput<String>('expireTime');
    this.issues = registerOutput<List<String>>('issues');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.managementSettings =
        registerOutput<RegistrationManagementSettings>('managementSettings');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.registerFailureReason =
        registerOutput<String>('registerFailureReason');
    this.state = registerOutput<String>('state');
    this.supportedPrivacies =
        registerOutput<List<String>>('supportedPrivacies');
    this.yearlyPrice = registerOutput<RegistrationYearlyPrice>('yearlyPrice');
  }
}
