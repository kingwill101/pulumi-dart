// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings_domains_v1beta1.dart';
import 'dns_settings_domains_v1beta1.dart';
import 'management_settings_domains_v1beta1.dart';
import 'money_domains_v1beta1.dart';
import 'registration_contact_notices_item_domains_v1beta1.dart';
import 'registration_domain_notices_item_domains_v1beta1.dart';

/// The set of arguments for Registration.
class RegistrationDomainsV1beta1Args {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final pulumi.Input<List<RegistrationContactNoticesItemDomainsV1beta1>>?
      contactNotices;

  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final pulumi.Input<ContactSettingsDomainsV1beta1> contactSettings;

  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final pulumi.Input<DnsSettingsDomainsV1beta1>? dnsSettings;

  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;

  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final pulumi.Input<List<RegistrationDomainNoticesItemDomainsV1beta1>>?
      domainNotices;

  /// Set of labels associated with the `Registration`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final pulumi.Input<ManagementSettingsDomainsV1beta1>? managementSettings;
  final pulumi.Input<String>? project;

  /// When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  final pulumi.Input<bool>? validateOnly;

  /// Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  final pulumi.Input<MoneyDomainsV1beta1> yearlyPrice;

  RegistrationDomainsV1beta1Args({
    this.contactNotices,
    required this.contactSettings,
    this.dnsSettings,
    required this.domainName,
    this.domainNotices,
    this.labels,
    this.location,
    this.managementSettings,
    this.project,
    this.validateOnly,
    required this.yearlyPrice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contactNoticesValue = contactNotices;
    if (contactNoticesValue != null) {
      map['contactNotices'] = pulumi.Input.mapOptionalInputValue<
              List<RegistrationContactNoticesItemDomainsV1beta1>, List<String>>(
          contactNoticesValue,
          (value) => pulumi.Input.encodeList<
              RegistrationContactNoticesItemDomainsV1beta1,
              String>(value, (value) => value.value));
    }
    map['contactSettings'] = pulumi.Input.mapInputValue<
        ContactSettingsDomainsV1beta1,
        Map<String, dynamic>>(contactSettings, (value) => value.toMap());
    final dnsSettingsValue = dnsSettings;
    if (dnsSettingsValue != null) {
      map['dnsSettings'] = pulumi.Input.mapOptionalInputValue<
          DnsSettingsDomainsV1beta1,
          Map<String, dynamic>>(dnsSettingsValue, (value) => value.toMap());
    }
    map['domainName'] = domainName;
    final domainNoticesValue = domainNotices;
    if (domainNoticesValue != null) {
      map['domainNotices'] = pulumi.Input.mapOptionalInputValue<
              List<RegistrationDomainNoticesItemDomainsV1beta1>, List<String>>(
          domainNoticesValue,
          (value) => pulumi.Input.encodeList<
              RegistrationDomainNoticesItemDomainsV1beta1,
              String>(value, (value) => value.value));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final managementSettingsValue = managementSettings;
    if (managementSettingsValue != null) {
      map['managementSettings'] = pulumi.Input.mapOptionalInputValue<
              ManagementSettingsDomainsV1beta1, Map<String, dynamic>>(
          managementSettingsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final validateOnlyValue = validateOnly;
    if (validateOnlyValue != null) {
      map['validateOnly'] = validateOnlyValue;
    }
    map['yearlyPrice'] =
        pulumi.Input.mapInputValue<MoneyDomainsV1beta1, Map<String, dynamic>>(
            yearlyPrice, (value) => value.toMap());
    return map;
  }

  factory RegistrationDomainsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return RegistrationDomainsV1beta1Args(
      contactNotices: pulumi.Input.asOptionalInput<
              List<RegistrationContactNoticesItemDomainsV1beta1>>(
          map['contactNotices']),
      contactSettings: pulumi.Input.asInput<ContactSettingsDomainsV1beta1>(
          map['contactSettings']),
      dnsSettings: pulumi.Input.asOptionalInput<DnsSettingsDomainsV1beta1>(
          map['dnsSettings']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      domainNotices: pulumi.Input.asOptionalInput<
              List<RegistrationDomainNoticesItemDomainsV1beta1>>(
          map['domainNotices']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      managementSettings:
          pulumi.Input.asOptionalInput<ManagementSettingsDomainsV1beta1>(
              map['managementSettings']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      validateOnly: pulumi.Input.asOptionalInput<bool>(map['validateOnly']),
      yearlyPrice:
          pulumi.Input.asInput<MoneyDomainsV1beta1>(map['yearlyPrice']),
    );
  }
}
