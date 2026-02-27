// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../registration_contact_settings/registration_contact_settings.dart';
import '../registration_dns_settings/registration_dns_settings.dart';
import '../registration_management_settings/registration_management_settings.dart';
import '../registration_yearly_price/registration_yearly_price.dart';

/// The set of arguments for Registration.
class RegistrationArgs {
  /// The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  final pulumi.Input<List<String>>? contactNotices;

  /// Required. Settings for contact information linked to the Registration.
  /// Structure is documented below.
  final pulumi.Input<RegistrationContactSettings> contactSettings;

  /// Settings controlling the DNS configuration of the Registration.
  /// Structure is documented below.
  final pulumi.Input<RegistrationDnsSettings>? dnsSettings;

  /// Required. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;

  /// The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  final pulumi.Input<List<String>>? domainNotices;

  /// Set of labels associated with the Registration.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Settings for management of the Registration, including renewal, billing, and transfer
  /// Structure is documented below.
  final pulumi.Input<RegistrationManagementSettings>? managementSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  /// registrations.retrieveRegisterParameters or registrations.searchDomains calls.
  /// Structure is documented below.
  final pulumi.Input<RegistrationYearlyPrice> yearlyPrice;

  RegistrationArgs({
    this.contactNotices,
    required this.contactSettings,
    this.dnsSettings,
    required this.domainName,
    this.domainNotices,
    this.labels,
    required this.location,
    this.managementSettings,
    this.project,
    required this.yearlyPrice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contactNoticesValue = contactNotices;
    if (contactNoticesValue != null) {
      map['contactNotices'] = contactNoticesValue;
    }
    map['contactSettings'] = pulumi.Input.mapInputValue<
        RegistrationContactSettings,
        Map<String, dynamic>>(contactSettings, (value) => value.toMap());
    final dnsSettingsValue = dnsSettings;
    if (dnsSettingsValue != null) {
      map['dnsSettings'] = pulumi.Input.mapOptionalInputValue<
          RegistrationDnsSettings,
          Map<String, dynamic>>(dnsSettingsValue, (value) => value.toMap());
    }
    map['domainName'] = domainName;
    final domainNoticesValue = domainNotices;
    if (domainNoticesValue != null) {
      map['domainNotices'] = domainNoticesValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final managementSettingsValue = managementSettings;
    if (managementSettingsValue != null) {
      map['managementSettings'] = pulumi.Input.mapOptionalInputValue<
              RegistrationManagementSettings, Map<String, dynamic>>(
          managementSettingsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['yearlyPrice'] = pulumi.Input.mapInputValue<RegistrationYearlyPrice,
        Map<String, dynamic>>(yearlyPrice, (value) => value.toMap());
    return map;
  }

  factory RegistrationArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs(
      contactNotices:
          pulumi.Input.asOptionalInput<List<String>>(map['contactNotices']),
      contactSettings: pulumi.Input.asInput<RegistrationContactSettings>(
          map['contactSettings']),
      dnsSettings: pulumi.Input.asOptionalInput<RegistrationDnsSettings>(
          map['dnsSettings']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      domainNotices:
          pulumi.Input.asOptionalInput<List<String>>(map['domainNotices']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      managementSettings:
          pulumi.Input.asOptionalInput<RegistrationManagementSettings>(
              map['managementSettings']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      yearlyPrice:
          pulumi.Input.asInput<RegistrationYearlyPrice>(map['yearlyPrice']),
    );
  }
}
