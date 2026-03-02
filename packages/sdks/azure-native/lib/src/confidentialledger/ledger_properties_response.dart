// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadbased_security_principal_response.dart';
import 'cert_based_security_principal_response.dart';

/// Additional Confidential Ledger properties.
class LedgerPropertiesResponse {
  /// Array of all AAD based Security Principals.
  final pulumi.Input<List<AADBasedSecurityPrincipalResponse>>? aadBasedSecurityPrincipals;
  /// Array of all cert based Security Principals.
  final pulumi.Input<List<CertBasedSecurityPrincipalResponse>>? certBasedSecurityPrincipals;
  /// Endpoint for accessing network identity.
  final pulumi.Input<String> identityServiceUri;
  /// Internal namespace for the Ledger
  final pulumi.Input<String> ledgerInternalNamespace;
  /// Unique name for the Confidential Ledger.
  final pulumi.Input<String> ledgerName;
  /// SKU associated with the ledger
  final pulumi.Input<String>? ledgerSku;
  /// Type of Confidential Ledger
  final pulumi.Input<String>? ledgerType;
  /// Endpoint for calling Ledger Service.
  final pulumi.Input<String> ledgerUri;
  /// Provisioning state of Ledger Resource
  final pulumi.Input<String> provisioningState;
  /// Object representing RunningState for Ledger.
  final pulumi.Input<String>? runningState;

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
      'aadBasedSecurityPrincipals': ?pulumi.Input.mapOptionalInputValue<List<AADBasedSecurityPrincipalResponse>, List<Map<String, dynamic>>>(aadBasedSecurityPrincipals, (value) => pulumi.Input.encodeList<AADBasedSecurityPrincipalResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certBasedSecurityPrincipals': ?pulumi.Input.mapOptionalInputValue<List<CertBasedSecurityPrincipalResponse>, List<Map<String, dynamic>>>(certBasedSecurityPrincipals, (value) => pulumi.Input.encodeList<CertBasedSecurityPrincipalResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      aadBasedSecurityPrincipals: map['aadBasedSecurityPrincipals'] == null ? null : (pulumi.Input.decodeList<AADBasedSecurityPrincipalResponse>(map['aadBasedSecurityPrincipals']!, (value) => AADBasedSecurityPrincipalResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      certBasedSecurityPrincipals: map['certBasedSecurityPrincipals'] == null ? null : (pulumi.Input.decodeList<CertBasedSecurityPrincipalResponse>(map['certBasedSecurityPrincipals']!, (value) => CertBasedSecurityPrincipalResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identityServiceUri: (map['identityServiceUri'] as String).input(),
      ledgerInternalNamespace: (map['ledgerInternalNamespace'] as String).input(),
      ledgerName: (map['ledgerName'] as String).input(),
      ledgerSku: map['ledgerSku'] == null ? null : (map['ledgerSku']! as String).input(),
      ledgerType: map['ledgerType'] == null ? null : (map['ledgerType']! as String).input(),
      ledgerUri: (map['ledgerUri'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      runningState: map['runningState'] == null ? null : (map['runningState']! as String).input(),
    );
  }
}

