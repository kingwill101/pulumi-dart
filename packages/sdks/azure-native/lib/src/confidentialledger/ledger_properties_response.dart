// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadbased_security_principal_response.dart';
import 'cert_based_security_principal_response.dart';

/// Additional Confidential Ledger properties.
class LedgerPropertiesResponse {
  /// Array of all AAD based Security Principals.
  final List<AADBasedSecurityPrincipalResponse>? aadBasedSecurityPrincipals;
  /// Array of all cert based Security Principals.
  final List<CertBasedSecurityPrincipalResponse>? certBasedSecurityPrincipals;
  /// Endpoint for accessing network identity.
  final String identityServiceUri;
  /// Internal namespace for the Ledger
  final String ledgerInternalNamespace;
  /// Unique name for the Confidential Ledger.
  final String ledgerName;
  /// SKU associated with the ledger
  final String? ledgerSku;
  /// Type of Confidential Ledger
  final String? ledgerType;
  /// Endpoint for calling Ledger Service.
  final String ledgerUri;
  /// Provisioning state of Ledger Resource
  final String provisioningState;
  /// Object representing RunningState for Ledger.
  final String? runningState;

  /// Creates a new [LedgerPropertiesResponse].
  /// [aadBasedSecurityPrincipals] Array of all AAD based Security Principals.
  /// [certBasedSecurityPrincipals] Array of all cert based Security Principals.
  /// [identityServiceUri] Endpoint for accessing network identity.
  /// [ledgerInternalNamespace] Internal namespace for the Ledger
  /// [ledgerName] Unique name for the Confidential Ledger.
  /// [ledgerSku] SKU associated with the ledger
  /// [ledgerType] Type of Confidential Ledger
  /// [ledgerUri] Endpoint for calling Ledger Service.
  /// [provisioningState] Provisioning state of Ledger Resource
  /// [runningState] Object representing RunningState for Ledger.
  LedgerPropertiesResponse({
    this.aadBasedSecurityPrincipals,
    this.certBasedSecurityPrincipals,
    required this.identityServiceUri,
    required this.ledgerInternalNamespace,
    required this.ledgerName,
    this.ledgerSku,
    this.ledgerType,
    required this.ledgerUri,
    required this.provisioningState,
    this.runningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadBasedSecurityPrincipals': ?aadBasedSecurityPrincipals == null ? null : pulumi.Input.encodeList<AADBasedSecurityPrincipalResponse, Map<String, dynamic>>(aadBasedSecurityPrincipals!, (value) => value.toMap()),
      'certBasedSecurityPrincipals': ?certBasedSecurityPrincipals == null ? null : pulumi.Input.encodeList<CertBasedSecurityPrincipalResponse, Map<String, dynamic>>(certBasedSecurityPrincipals!, (value) => value.toMap()),
      'identityServiceUri': identityServiceUri,
      'ledgerInternalNamespace': ledgerInternalNamespace,
      'ledgerName': ledgerName,
      'ledgerSku': ?ledgerSku,
      'ledgerType': ?ledgerType,
      'ledgerUri': ledgerUri,
      'provisioningState': provisioningState,
      'runningState': ?runningState,
    };
  }

  factory LedgerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LedgerPropertiesResponse(
      aadBasedSecurityPrincipals: map['aadBasedSecurityPrincipals'] == null ? null : pulumi.Input.decodeList<AADBasedSecurityPrincipalResponse>(map['aadBasedSecurityPrincipals'], (value) => AADBasedSecurityPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())),
      certBasedSecurityPrincipals: map['certBasedSecurityPrincipals'] == null ? null : pulumi.Input.decodeList<CertBasedSecurityPrincipalResponse>(map['certBasedSecurityPrincipals'], (value) => CertBasedSecurityPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())),
      identityServiceUri: map['identityServiceUri'] as String,
      ledgerInternalNamespace: map['ledgerInternalNamespace'] as String,
      ledgerName: map['ledgerName'] as String,
      ledgerSku: map['ledgerSku'] == null ? null : map['ledgerSku'] as String,
      ledgerType: map['ledgerType'] == null ? null : map['ledgerType'] as String,
      ledgerUri: map['ledgerUri'] as String,
      provisioningState: map['provisioningState'] as String,
      runningState: map['runningState'] == null ? null : map['runningState'] as String,
    );
  }
}

