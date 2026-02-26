// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'contact_settings.dart';
import 'dns_settings.dart';
import 'management_settings.dart';
import 'money.dart';
import 'registration_contact_notices_item.dart';
import 'registration_domain_notices_item.dart';

/// The set of arguments for Registration.
class RegistrationArgs {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final Input<List<RegistrationContactNoticesItem>>? contactNotices;

  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final Input<ContactSettings> contactSettings;

  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final Input<DnsSettings>? dnsSettings;

  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final Input<String> domainName;

  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final Input<List<RegistrationDomainNoticesItem>>? domainNotices;

  /// Set of labels associated with the `Registration`.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final Input<ManagementSettings>? managementSettings;
  final Input<String>? project;

  /// When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  final Input<bool>? validateOnly;

  /// Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  final Input<Money> yearlyPrice;

  RegistrationArgs({
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
      map['contactNotices'] = Input.mapOptionalInputValue<
              List<RegistrationContactNoticesItem>, List<String>>(
          contactNoticesValue,
          (value) => Input.encodeList<RegistrationContactNoticesItem, String>(
              value, (value) => value.value));
    }
    map['contactSettings'] =
        Input.mapInputValue<ContactSettings, Map<String, dynamic>>(
            contactSettings, (value) => value.toMap());
    final dnsSettingsValue = dnsSettings;
    if (dnsSettingsValue != null) {
      map['dnsSettings'] =
          Input.mapOptionalInputValue<DnsSettings, Map<String, dynamic>>(
              dnsSettingsValue, (value) => value.toMap());
    }
    map['domainName'] = domainName;
    final domainNoticesValue = domainNotices;
    if (domainNoticesValue != null) {
      map['domainNotices'] = Input.mapOptionalInputValue<
              List<RegistrationDomainNoticesItem>, List<String>>(
          domainNoticesValue,
          (value) => Input.encodeList<RegistrationDomainNoticesItem, String>(
              value, (value) => value.value));
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
      map['managementSettings'] =
          Input.mapOptionalInputValue<ManagementSettings, Map<String, dynamic>>(
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
    map['yearlyPrice'] = Input.mapInputValue<Money, Map<String, dynamic>>(
        yearlyPrice, (value) => value.toMap());
    return map;
  }

  factory RegistrationArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs(
      contactNotices:
          Input.asOptionalInput<List<RegistrationContactNoticesItem>>(
              map['contactNotices']),
      contactSettings: Input.asInput<ContactSettings>(map['contactSettings']),
      dnsSettings: Input.asOptionalInput<DnsSettings>(map['dnsSettings']),
      domainName: Input.asInput<String>(map['domainName']),
      domainNotices: Input.asOptionalInput<List<RegistrationDomainNoticesItem>>(
          map['domainNotices']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      managementSettings:
          Input.asOptionalInput<ManagementSettings>(map['managementSettings']),
      project: Input.asOptionalInput<String>(map['project']),
      validateOnly: Input.asOptionalInput<bool>(map['validateOnly']),
      yearlyPrice: Input.asInput<Money>(map['yearlyPrice']),
    );
  }
}
