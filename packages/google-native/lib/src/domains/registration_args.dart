// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings.dart';
import 'dns_settings.dart';
import 'management_settings.dart';
import 'money.dart';
import 'registration_contact_notices_item.dart';
import 'registration_domain_notices_item.dart';

/// {@template pulumi_domains_v1_registration_args_doc}
/// The set of arguments for Registration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1_registration_args_doc}
class RegistrationArgs {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final pulumi.Input<List<RegistrationContactNoticesItem>>? contactNotices;
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final pulumi.Input<ContactSettings> contactSettings;
  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final pulumi.Input<DnsSettings>? dnsSettings;
  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;
  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final pulumi.Input<List<RegistrationDomainNoticesItem>>? domainNotices;
  /// Set of labels associated with the `Registration`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final pulumi.Input<ManagementSettings>? managementSettings;
  final pulumi.Input<String>? project;
  /// When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  final pulumi.Input<bool>? validateOnly;
  /// Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  final pulumi.Input<Money> yearlyPrice;

  /// Creates a new [RegistrationArgs].
  /// [contactNotices] The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  /// [contactSettings] Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  /// [dnsSettings] Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  /// [domainName] Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  /// [domainNotices] The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  /// [labels] Set of labels associated with the `Registration`.
  /// [location] Optional.
  /// [managementSettings] Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  /// [project] Optional.
  /// [validateOnly] When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  /// [yearlyPrice] Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  RegistrationArgs({
    List<RegistrationContactNoticesItem>? contactNotices,
    required ContactSettings contactSettings,
    DnsSettings? dnsSettings,
    required String domainName,
    List<RegistrationDomainNoticesItem>? domainNotices,
    Map<String, String>? labels,
    String? location,
    ManagementSettings? managementSettings,
    String? project,
    bool? validateOnly,
    required Money yearlyPrice,
  }) :
      contactNotices = pulumi.Input.asOptionalInput<List<RegistrationContactNoticesItem>>(contactNotices),
      contactSettings = pulumi.Input.asInput<ContactSettings>(contactSettings),
      dnsSettings = pulumi.Input.asOptionalInput<DnsSettings>(dnsSettings),
      domainName = pulumi.Input.asInput<String>(domainName),
      domainNotices = pulumi.Input.asOptionalInput<List<RegistrationDomainNoticesItem>>(domainNotices),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementSettings = pulumi.Input.asOptionalInput<ManagementSettings>(managementSettings),
      project = pulumi.Input.asOptionalInput<String>(project),
      validateOnly = pulumi.Input.asOptionalInput<bool>(validateOnly),
      yearlyPrice = pulumi.Input.asInput<Money>(yearlyPrice);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationContactNoticesItem>, List<String>>(contactNotices, (value) => pulumi.Input.encodeList<RegistrationContactNoticesItem, String>(value, (value) => value.value)),
      'contactSettings': pulumi.Input.mapInputValue<ContactSettings, Map<String, dynamic>>(contactSettings, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<DnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'domainName': domainName,
      'domainNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationDomainNoticesItem>, List<String>>(domainNotices, (value) => pulumi.Input.encodeList<RegistrationDomainNoticesItem, String>(value, (value) => value.value)),
      'labels': ?labels,
      'location': ?location,
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<ManagementSettings, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'project': ?project,
      'validateOnly': ?validateOnly,
      'yearlyPrice': pulumi.Input.mapInputValue<Money, Map<String, dynamic>>(yearlyPrice, (value) => value.toMap()),
    };
  }

  factory RegistrationArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs(
      contactNotices: map['contactNotices'] == null ? null : pulumi.Input.decodeList<RegistrationContactNoticesItem>(map['contactNotices'], (value) => RegistrationContactNoticesItem.fromValue(value as String)),
      contactSettings: ContactSettings.fromMap((map['contactSettings'] as Map).cast<String, dynamic>()),
      dnsSettings: map['dnsSettings'] == null ? null : DnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      domainNotices: map['domainNotices'] == null ? null : pulumi.Input.decodeList<RegistrationDomainNoticesItem>(map['domainNotices'], (value) => RegistrationDomainNoticesItem.fromValue(value as String)),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      managementSettings: map['managementSettings'] == null ? null : ManagementSettings.fromMap((map['managementSettings'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      validateOnly: map['validateOnly'] == null ? null : map['validateOnly'] as bool,
      yearlyPrice: Money.fromMap((map['yearlyPrice'] as Map).cast<String, dynamic>()),
    );
  }
}

