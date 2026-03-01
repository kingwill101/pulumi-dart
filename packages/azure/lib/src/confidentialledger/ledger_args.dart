// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ledger_azuread_based_service_principal.dart';
import 'ledger_certificate_based_security_principal.dart';

/// {@template pulumi_confidentialledger_ledger_ledger_args_doc}
/// The set of arguments for Ledger.
/// {@endtemplate}
/// {@macro pulumi_confidentialledger_ledger_ledger_args_doc}
class LedgerArgs {
  /// A list of `azuread_based_service_principal` blocks as defined below.
  final pulumi.Input<List<LedgerAzureadBasedServicePrincipal>> azureadBasedServicePrincipals;
  /// A list of `certificate_based_security_principal` blocks as defined below.
  final pulumi.Input<List<LedgerCertificateBasedSecurityPrincipal>>? certificateBasedSecurityPrincipals;
  /// Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created.
  final pulumi.Input<String> ledgerType;
  /// Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Confidential Ledger.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LedgerArgs].
  /// [azureadBasedServicePrincipals] A list of `azuread_based_service_principal` blocks as defined below.
  /// [certificateBasedSecurityPrincipals] A list of `certificate_based_security_principal` blocks as defined below.
  /// [ledgerType] Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Confidential Ledger.
  LedgerArgs({
    required List<LedgerAzureadBasedServicePrincipal> azureadBasedServicePrincipals,
    List<LedgerCertificateBasedSecurityPrincipal>? certificateBasedSecurityPrincipals,
    required String ledgerType,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      azureadBasedServicePrincipals = pulumi.Input.asInput<List<LedgerAzureadBasedServicePrincipal>>(azureadBasedServicePrincipals),
      certificateBasedSecurityPrincipals = pulumi.Input.asOptionalInput<List<LedgerCertificateBasedSecurityPrincipal>>(certificateBasedSecurityPrincipals),
      ledgerType = pulumi.Input.asInput<String>(ledgerType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadBasedServicePrincipals': pulumi.Input.mapInputValue<List<LedgerAzureadBasedServicePrincipal>, List<Map<String, dynamic>>>(azureadBasedServicePrincipals, (value) => pulumi.Input.encodeList<LedgerAzureadBasedServicePrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateBasedSecurityPrincipals': ?pulumi.Input.mapOptionalInputValue<List<LedgerCertificateBasedSecurityPrincipal>, List<Map<String, dynamic>>>(certificateBasedSecurityPrincipals, (value) => pulumi.Input.encodeList<LedgerCertificateBasedSecurityPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ledgerType': ledgerType,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LedgerArgs.fromMap(Map<String, dynamic> map) {
    return LedgerArgs(
      azureadBasedServicePrincipals: pulumi.Input.decodeList<LedgerAzureadBasedServicePrincipal>(map['azureadBasedServicePrincipals'], (value) => LedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>())),
      certificateBasedSecurityPrincipals: map['certificateBasedSecurityPrincipals'] == null ? null : pulumi.Input.decodeList<LedgerCertificateBasedSecurityPrincipal>(map['certificateBasedSecurityPrincipals'], (value) => LedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())),
      ledgerType: map['ledgerType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

