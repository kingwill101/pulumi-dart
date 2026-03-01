// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_confidential_ledger_azuread_based_service_principal.dart';
import 'get_confidential_ledger_certificate_based_security_principal.dart';

/// Result data returned by getConfidentialLedger.
class GetConfidentialLedgerResult {
  final List<GetConfidentialLedgerAzureadBasedServicePrincipal> azureadBasedServicePrincipals;
  final List<GetConfidentialLedgerCertificateBasedSecurityPrincipal> certificateBasedSecurityPrincipals;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Identity Service Endpoint for this Confidential Ledger.
  final String identityServiceEndpoint;
  /// The Endpoint for this Confidential Ledger.
  final String ledgerEndpoint;
  /// The type of Confidential Ledger.
  final String ledgerType;
  /// The supported Azure location where the Confidential Ledger exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags to assign to the Confidential Ledger.
  final Map<String, String> tags;

  /// Creates a new [GetConfidentialLedgerResult].
  /// [azureadBasedServicePrincipals] Required.
  /// [certificateBasedSecurityPrincipals] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityServiceEndpoint] The Identity Service Endpoint for this Confidential Ledger.
  /// [ledgerEndpoint] The Endpoint for this Confidential Ledger.
  /// [ledgerType] The type of Confidential Ledger.
  /// [location] The supported Azure location where the Confidential Ledger exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags to assign to the Confidential Ledger.
  GetConfidentialLedgerResult({
    required this.azureadBasedServicePrincipals,
    required this.certificateBasedSecurityPrincipals,
    required this.id,
    required this.identityServiceEndpoint,
    required this.ledgerEndpoint,
    required this.ledgerType,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadBasedServicePrincipals': pulumi.Input.encodeList<GetConfidentialLedgerAzureadBasedServicePrincipal, Map<String, dynamic>>(azureadBasedServicePrincipals, (value) => value.toMap()),
      'certificateBasedSecurityPrincipals': pulumi.Input.encodeList<GetConfidentialLedgerCertificateBasedSecurityPrincipal, Map<String, dynamic>>(certificateBasedSecurityPrincipals, (value) => value.toMap()),
      'id': id,
      'identityServiceEndpoint': identityServiceEndpoint,
      'ledgerEndpoint': ledgerEndpoint,
      'ledgerType': ledgerType,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetConfidentialLedgerResult.fromMap(Map<String, dynamic> map) {
    return GetConfidentialLedgerResult(
      azureadBasedServicePrincipals: pulumi.Input.decodeList<GetConfidentialLedgerAzureadBasedServicePrincipal>(map['azureadBasedServicePrincipals'], (value) => GetConfidentialLedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>())),
      certificateBasedSecurityPrincipals: pulumi.Input.decodeList<GetConfidentialLedgerCertificateBasedSecurityPrincipal>(map['certificateBasedSecurityPrincipals'], (value) => GetConfidentialLedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identityServiceEndpoint: map['identityServiceEndpoint'] as String,
      ledgerEndpoint: map['ledgerEndpoint'] as String,
      ledgerType: map['ledgerType'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

