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
  const LedgerPropertiesResponse({
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
      aadBasedSecurityPrincipals: (() { final guardedValue = map['aadBasedSecurityPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AADBasedSecurityPrincipalResponse>(guardedValue, (value) => AADBasedSecurityPrincipalResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      certBasedSecurityPrincipals: (() { final guardedValue = map['certBasedSecurityPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertBasedSecurityPrincipalResponse>(guardedValue, (value) => CertBasedSecurityPrincipalResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identityServiceUri: pulumi.Input.fromValue(map['identityServiceUri'] as String),
      ledgerInternalNamespace: pulumi.Input.fromValue(map['ledgerInternalNamespace'] as String),
      ledgerName: pulumi.Input.fromValue(map['ledgerName'] as String),
      ledgerSku: (() { final guardedValue = map['ledgerSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ledgerType: (() { final guardedValue = map['ledgerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ledgerUri: pulumi.Input.fromValue(map['ledgerUri'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      runningState: (() { final guardedValue = map['runningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

