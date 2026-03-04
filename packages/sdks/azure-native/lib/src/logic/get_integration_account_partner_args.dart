// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_partner_args_doc}
/// Arguments for getIntegrationAccountPartner.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_partner_args_doc}
class GetIntegrationAccountPartnerArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;

  /// The integration account partner name.
  final pulumi.Input<String> partnerName;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountPartnerArgs].
  /// [integrationAccountName] The integration account name.
  /// [partnerName] The integration account partner name.
  /// [resourceGroupName] The resource group name.
  GetIntegrationAccountPartnerArgs({
    required this.integrationAccountName,
    required this.partnerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'partnerName': partnerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountPartnerArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountPartnerArgs(
      integrationAccountName: pulumi.Input.fromValue(
        map['integrationAccountName'] as String,
      ),
      partnerName: pulumi.Input.fromValue(map['partnerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
