// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings_domains_v1beta1.dart';
import 'dns_settings_domains_v1beta1.dart';
import 'management_settings_domains_v1beta1.dart';
import 'money_domains_v1beta1.dart';
import 'registration_contact_notices_item_domains_v1beta1.dart';
import 'registration_domain_notices_item_domains_v1beta1.dart';

/// {@template pulumi_domains_v1beta1_registration_domains_v1beta1_args_doc}
/// The set of arguments for Registration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1beta1_registration_domains_v1beta1_args_doc}
class RegistrationDomainsV1beta1Args {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final pulumi.Input<List<RegistrationContactNoticesItemDomainsV1beta1>>? contactNotices;
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final pulumi.Input<ContactSettingsDomainsV1beta1> contactSettings;
  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final pulumi.Input<DnsSettingsDomainsV1beta1>? dnsSettings;
  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;
  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final pulumi.Input<List<RegistrationDomainNoticesItemDomainsV1beta1>>? domainNotices;
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

  /// Creates a new [RegistrationDomainsV1beta1Args].
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
  RegistrationDomainsV1beta1Args({
    List<RegistrationContactNoticesItemDomainsV1beta1>? contactNotices,
    required ContactSettingsDomainsV1beta1 contactSettings,
    DnsSettingsDomainsV1beta1? dnsSettings,
    required String domainName,
    List<RegistrationDomainNoticesItemDomainsV1beta1>? domainNotices,
    Map<String, String>? labels,
    String? location,
    ManagementSettingsDomainsV1beta1? managementSettings,
    String? project,
    bool? validateOnly,
    required MoneyDomainsV1beta1 yearlyPrice,
  }) :
      contactNotices = pulumi.Input.asOptionalInput<List<RegistrationContactNoticesItemDomainsV1beta1>>(contactNotices),
      contactSettings = pulumi.Input.asInput<ContactSettingsDomainsV1beta1>(contactSettings),
      dnsSettings = pulumi.Input.asOptionalInput<DnsSettingsDomainsV1beta1>(dnsSettings),
      domainName = pulumi.Input.asInput<String>(domainName),
      domainNotices = pulumi.Input.asOptionalInput<List<RegistrationDomainNoticesItemDomainsV1beta1>>(domainNotices),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementSettings = pulumi.Input.asOptionalInput<ManagementSettingsDomainsV1beta1>(managementSettings),
      project = pulumi.Input.asOptionalInput<String>(project),
      validateOnly = pulumi.Input.asOptionalInput<bool>(validateOnly),
      yearlyPrice = pulumi.Input.asInput<MoneyDomainsV1beta1>(yearlyPrice);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationContactNoticesItemDomainsV1beta1>, List<String>>(contactNotices, (value) => pulumi.Input.encodeList<RegistrationContactNoticesItemDomainsV1beta1, String>(value, (value) => value.value)),
      'contactSettings': pulumi.Input.mapInputValue<ContactSettingsDomainsV1beta1, Map<String, dynamic>>(contactSettings, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<DnsSettingsDomainsV1beta1, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'domainName': domainName,
      'domainNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationDomainNoticesItemDomainsV1beta1>, List<String>>(domainNotices, (value) => pulumi.Input.encodeList<RegistrationDomainNoticesItemDomainsV1beta1, String>(value, (value) => value.value)),
      'labels': ?labels,
      'location': ?location,
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<ManagementSettingsDomainsV1beta1, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'project': ?project,
      'validateOnly': ?validateOnly,
      'yearlyPrice': pulumi.Input.mapInputValue<MoneyDomainsV1beta1, Map<String, dynamic>>(yearlyPrice, (value) => value.toMap()),
    };
  }

  factory RegistrationDomainsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return RegistrationDomainsV1beta1Args(
      contactNotices: map['contactNotices'] == null ? null : pulumi.Input.decodeList<RegistrationContactNoticesItemDomainsV1beta1>(map['contactNotices'], (value) => RegistrationContactNoticesItemDomainsV1beta1.fromValue(value as String)),
      contactSettings: ContactSettingsDomainsV1beta1.fromMap((map['contactSettings'] as Map).cast<String, dynamic>()),
      dnsSettings: map['dnsSettings'] == null ? null : DnsSettingsDomainsV1beta1.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      domainNotices: map['domainNotices'] == null ? null : pulumi.Input.decodeList<RegistrationDomainNoticesItemDomainsV1beta1>(map['domainNotices'], (value) => RegistrationDomainNoticesItemDomainsV1beta1.fromValue(value as String)),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      managementSettings: map['managementSettings'] == null ? null : ManagementSettingsDomainsV1beta1.fromMap((map['managementSettings'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      validateOnly: map['validateOnly'] == null ? null : map['validateOnly'] as bool,
      yearlyPrice: MoneyDomainsV1beta1.fromMap((map['yearlyPrice'] as Map).cast<String, dynamic>()),
    );
  }
}

