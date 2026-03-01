// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainservices_service_trust_service_trust_args_doc}
/// The set of arguments for ServiceTrust.
/// {@endtemplate}
/// {@macro pulumi_domainservices_service_trust_service_trust_args_doc}
class ServiceTrustArgs {
  /// The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String> domainServiceId;
  /// The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String>? name;
  /// The password of the inbound trust set in the on-premise Active Directory Domain Service.
  final pulumi.Input<String> password;
  /// Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  final pulumi.Input<List<String>> trustedDomainDnsIps;
  /// The FQDN of the on-premise Active Directory Domain Service.
  final pulumi.Input<String> trustedDomainFqdn;

  /// Creates a new [ServiceTrustArgs].
  /// [domainServiceId] The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [name] The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [password] The password of the inbound trust set in the on-premise Active Directory Domain Service.
  /// [trustedDomainDnsIps] Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  /// [trustedDomainFqdn] The FQDN of the on-premise Active Directory Domain Service.
  ServiceTrustArgs({
    required String domainServiceId,
    String? name,
    required String password,
    required List<String> trustedDomainDnsIps,
    required String trustedDomainFqdn,
  }) :
      domainServiceId = pulumi.Input.asInput<String>(domainServiceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      trustedDomainDnsIps = pulumi.Input.asInput<List<String>>(trustedDomainDnsIps),
      trustedDomainFqdn = pulumi.Input.asInput<String>(trustedDomainFqdn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceId': domainServiceId,
      'name': ?name,
      'password': password,
      'trustedDomainDnsIps': trustedDomainDnsIps,
      'trustedDomainFqdn': trustedDomainFqdn,
    };
  }

  factory ServiceTrustArgs.fromMap(Map<String, dynamic> map) {
    return ServiceTrustArgs(
      domainServiceId: map['domainServiceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] as String,
      trustedDomainDnsIps: (map['trustedDomainDnsIps'] as List).cast<String>(),
      trustedDomainFqdn: map['trustedDomainFqdn'] as String,
    );
  }
}

