import 'package:pulumi/pulumi.dart';
import 'contact_settings_response2.dart';
import 'dns_settings_response2.dart';
import 'management_settings_response2.dart';
import 'registration_args2.dart';

/// Registers a new domain name and creates a corresponding `Registration` resource. Call `RetrieveRegisterParameters` first to check availability of the domain name and determine parameters like price that are needed to build a call to this method. A successful call creates a `Registration` resource in state `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2 minutes, indicating that the domain was successfully registered. If the resource ends up in state `REGISTRATION_FAILED`, it indicates that the domain was not registered successfully, and you can safely delete the resource and retry registration.
/// Auto-naming is currently not supported for this resource.
class Registration2 extends CustomResource {
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  late final Output<ContactSettingsResponse2> contactSettings;

  /// The creation timestamp of the `Registration` resource.
  late final Output<String> createTime;

  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  late final Output<DnsSettingsResponse2> dnsSettings;

  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  late final Output<String> domainName;

  /// The expiration timestamp of the `Registration`.
  late final Output<String> expireTime;

  /// The set of issues with the `Registration` that require attention.
  late final Output<List<String>> issues;

  /// Set of labels associated with the `Registration`.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  late final Output<ManagementSettingsResponse2> managementSettings;

  /// Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.
  late final Output<String> name;

  /// Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.
  late final Output<ContactSettingsResponse2> pendingContactSettings;
  late final Output<String> project;

  /// The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  late final Output<String> registerFailureReason;

  /// The state of the `Registration`
  late final Output<String> state;

  /// Set of options for the `contact_settings.privacy` field that this `Registration` supports.
  late final Output<List<String>> supportedPrivacy;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The reason the domain transfer failed. Only set for domains in TRANSFER_FAILED state.
  late final Output<String> transferFailureReason;

  Registration2(
    String name, {
    RegistrationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:domains/v1alpha2:Registration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactSettings = Output.createUnknown<ContactSettingsResponse2>();
    this.createTime = Output.createUnknown<String>();
    this.dnsSettings = Output.createUnknown<DnsSettingsResponse2>();
    this.domainName = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.issues = Output.createUnknown<List<String>>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.managementSettings =
        Output.createUnknown<ManagementSettingsResponse2>();
    this.name = Output.createUnknown<String>();
    this.pendingContactSettings =
        Output.createUnknown<ContactSettingsResponse2>();
    this.project = Output.createUnknown<String>();
    this.registerFailureReason = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.supportedPrivacy = Output.createUnknown<List<String>>();
    this.transferFailureReason = Output.createUnknown<String>();
  }
}
