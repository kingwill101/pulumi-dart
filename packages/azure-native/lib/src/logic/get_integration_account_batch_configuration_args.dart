// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_batch_configuration_args_doc}
/// Arguments for getIntegrationAccountBatchConfiguration.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_batch_configuration_args_doc}
class GetIntegrationAccountBatchConfigurationArgs {
  /// The batch configuration name.
  final pulumi.Input<String> batchConfigurationName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountBatchConfigurationArgs].
  /// [batchConfigurationName] The batch configuration name.
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  GetIntegrationAccountBatchConfigurationArgs({
    required String batchConfigurationName,
    required String integrationAccountName,
    required String resourceGroupName,
  }) :
      batchConfigurationName = pulumi.Input.asInput<String>(batchConfigurationName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchConfigurationName': batchConfigurationName,
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountBatchConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountBatchConfigurationArgs(
      batchConfigurationName: map['batchConfigurationName'] as String,
      integrationAccountName: map['integrationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

