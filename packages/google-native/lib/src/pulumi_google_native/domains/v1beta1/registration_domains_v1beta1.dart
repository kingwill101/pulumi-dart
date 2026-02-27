import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings_response_domains_v1beta1.dart';
import 'dns_settings_response_domains_v1beta1.dart';
import 'management_settings_response_domains_v1beta1.dart';
import 'registration_domains_v1beta1_args.dart';

/// Registers a new domain name and creates a corresponding `Registration` resource. Call `RetrieveRegisterParameters` first to check availability of the domain name and determine parameters like price that are needed to build a call to this method. A successful call creates a `Registration` resource in state `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2 minutes, indicating that the domain was successfully registered. If the resource ends up in state `REGISTRATION_FAILED`, it indicates that the domain was not registered successfully, and you can safely delete the resource and retry registration.
/// Auto-naming is currently not supported for this resource.
class RegistrationDomainsV1beta1 extends pulumi.CustomResource {
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  late final pulumi.Output<ContactSettingsResponseDomainsV1beta1>
      contactSettings;

  /// The creation timestamp of the `Registration` resource.
  late final pulumi.Output<String> createTime;

  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  late final pulumi.Output<DnsSettingsResponseDomainsV1beta1> dnsSettings;

  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  late final pulumi.Output<String> domainName;

  /// The expiration timestamp of the `Registration`.
  late final pulumi.Output<String> expireTime;

  /// The set of issues with the `Registration` that require attention.
  late final pulumi.Output<List<String>> issues;

  /// Set of labels associated with the `Registration`.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  late final pulumi.Output<ManagementSettingsResponseDomainsV1beta1>
      managementSettings;

  /// Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.
  late final pulumi.Output<String> name;

  /// Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.
  late final pulumi.Output<ContactSettingsResponseDomainsV1beta1>
      pendingContactSettings;
  late final pulumi.Output<String> project;

  /// The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  late final pulumi.Output<String> registerFailureReason;

  /// The state of the `Registration`
  late final pulumi.Output<String> state;

  /// Set of options for the `contact_settings.privacy` field that this `Registration` supports.
  late final pulumi.Output<List<String>> supportedPrivacy;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The reason the domain transfer failed. Only set for domains in TRANSFER_FAILED state.
  late final pulumi.Output<String> transferFailureReason;

  RegistrationDomainsV1beta1(
    String name, {
    RegistrationDomainsV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:domains/v1beta1:Registration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contactSettings =
        registerOutput<ContactSettingsResponseDomainsV1beta1>(
            'contactSettings');
    this.createTime = registerOutput<String>('createTime');
    this.dnsSettings =
        registerOutput<DnsSettingsResponseDomainsV1beta1>('dnsSettings');
    this.domainName = registerOutput<String>('domainName');
    this.expireTime = registerOutput<String>('expireTime');
    this.issues = registerOutput<List<String>>('issues');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.managementSettings =
        registerOutput<ManagementSettingsResponseDomainsV1beta1>(
            'managementSettings');
    this.name = registerOutput<String>('name');
    this.pendingContactSettings =
        registerOutput<ContactSettingsResponseDomainsV1beta1>(
            'pendingContactSettings');
    this.project = registerOutput<String>('project');
    this.registerFailureReason =
        registerOutput<String>('registerFailureReason');
    this.state = registerOutput<String>('state');
    this.supportedPrivacy = registerOutput<List<String>>('supportedPrivacy');
    this.transferFailureReason =
        registerOutput<String>('transferFailureReason');
  }
}
