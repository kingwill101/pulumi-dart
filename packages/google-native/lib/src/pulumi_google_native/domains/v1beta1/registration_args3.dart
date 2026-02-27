// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'contact_settings3.dart';
import 'dns_settings3.dart';
import 'management_settings3.dart';
import 'money3.dart';
import 'registration_contact_notices_item3.dart';
import 'registration_domain_notices_item3.dart';

/// The set of arguments for Registration.
class RegistrationArgs3 {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final Input<List<RegistrationContactNoticesItem3>>? contactNotices;

  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final Input<ContactSettings3> contactSettings;

  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final Input<DnsSettings3>? dnsSettings;

  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final Input<String> domainName;

  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final Input<List<RegistrationDomainNoticesItem3>>? domainNotices;

  /// Set of labels associated with the `Registration`.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final Input<ManagementSettings3>? managementSettings;
  final Input<String>? project;

  /// When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  final Input<bool>? validateOnly;

  /// Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  final Input<Money3> yearlyPrice;

  RegistrationArgs3({
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
              List<RegistrationContactNoticesItem3>, List<String>>(
          contactNoticesValue,
          (value) => Input.encodeList<RegistrationContactNoticesItem3, String>(
              value, (value) => value.value));
    }
    map['contactSettings'] =
        Input.mapInputValue<ContactSettings3, Map<String, dynamic>>(
            contactSettings, (value) => value.toMap());
    final dnsSettingsValue = dnsSettings;
    if (dnsSettingsValue != null) {
      map['dnsSettings'] =
          Input.mapOptionalInputValue<DnsSettings3, Map<String, dynamic>>(
              dnsSettingsValue, (value) => value.toMap());
    }
    map['domainName'] = domainName;
    final domainNoticesValue = domainNotices;
    if (domainNoticesValue != null) {
      map['domainNotices'] = Input.mapOptionalInputValue<
              List<RegistrationDomainNoticesItem3>, List<String>>(
          domainNoticesValue,
          (value) => Input.encodeList<RegistrationDomainNoticesItem3, String>(
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
      map['managementSettings'] = Input.mapOptionalInputValue<
              ManagementSettings3, Map<String, dynamic>>(
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
    map['yearlyPrice'] = Input.mapInputValue<Money3, Map<String, dynamic>>(
        yearlyPrice, (value) => value.toMap());
    return map;
  }

  factory RegistrationArgs3.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs3(
      contactNotices:
          Input.asOptionalInput<List<RegistrationContactNoticesItem3>>(
              map['contactNotices']),
      contactSettings: Input.asInput<ContactSettings3>(map['contactSettings']),
      dnsSettings: Input.asOptionalInput<DnsSettings3>(map['dnsSettings']),
      domainName: Input.asInput<String>(map['domainName']),
      domainNotices:
          Input.asOptionalInput<List<RegistrationDomainNoticesItem3>>(
              map['domainNotices']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      managementSettings:
          Input.asOptionalInput<ManagementSettings3>(map['managementSettings']),
      project: Input.asOptionalInput<String>(map['project']),
      validateOnly: Input.asOptionalInput<bool>(map['validateOnly']),
      yearlyPrice: Input.asInput<Money3>(map['yearlyPrice']),
    );
  }
}
