// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../registration_contact_settings/registration_contact_settings.dart';
import '../registration_dns_settings/registration_dns_settings.dart';
import '../registration_management_settings/registration_management_settings.dart';
import '../registration_yearly_price/registration_yearly_price.dart';

/// The set of arguments for Registration.
class RegistrationArgs {
  /// The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  final Input<List<String>>? contactNotices;

  /// Required. Settings for contact information linked to the Registration.
  /// Structure is documented below.
  final Input<RegistrationContactSettings> contactSettings;

  /// Settings controlling the DNS configuration of the Registration.
  /// Structure is documented below.
  final Input<RegistrationDnsSettings>? dnsSettings;

  /// Required. The domain name. Unicode domain names must be expressed in Punycode format.
  final Input<String> domainName;

  /// The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  final Input<List<String>>? domainNotices;

  /// Set of labels associated with the Registration.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// Settings for management of the Registration, including renewal, billing, and transfer
  /// Structure is documented below.
  final Input<RegistrationManagementSettings>? managementSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  /// registrations.retrieveRegisterParameters or registrations.searchDomains calls.
  /// Structure is documented below.
  final Input<RegistrationYearlyPrice> yearlyPrice;

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
    map['contactSettings'] =
        Input.mapInputValue<RegistrationContactSettings, Map<String, dynamic>>(
            contactSettings, (value) => value.toMap());
    final dnsSettingsValue = dnsSettings;
    if (dnsSettingsValue != null) {
      map['dnsSettings'] = Input.mapOptionalInputValue<RegistrationDnsSettings,
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
      map['managementSettings'] = Input.mapOptionalInputValue<
              RegistrationManagementSettings, Map<String, dynamic>>(
          managementSettingsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['yearlyPrice'] =
        Input.mapInputValue<RegistrationYearlyPrice, Map<String, dynamic>>(
            yearlyPrice, (value) => value.toMap());
    return map;
  }

  factory RegistrationArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs(
      contactNotices:
          Input.asOptionalInput<List<String>>(map['contactNotices']),
      contactSettings:
          Input.asInput<RegistrationContactSettings>(map['contactSettings']),
      dnsSettings:
          Input.asOptionalInput<RegistrationDnsSettings>(map['dnsSettings']),
      domainName: Input.asInput<String>(map['domainName']),
      domainNotices: Input.asOptionalInput<List<String>>(map['domainNotices']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      managementSettings: Input.asOptionalInput<RegistrationManagementSettings>(
          map['managementSettings']),
      project: Input.asOptionalInput<String>(map['project']),
      yearlyPrice: Input.asInput<RegistrationYearlyPrice>(map['yearlyPrice']),
    );
  }
}
