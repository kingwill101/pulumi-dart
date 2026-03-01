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
    required pulumi.Output<String> integrationAccountName,
    required pulumi.Output<String> partnerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      partnerName = pulumi.Input.asInput<String>(partnerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'partnerName': partnerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountPartnerArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountPartnerArgs(
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      partnerName: pulumi.Output.create<String>(map['partnerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

