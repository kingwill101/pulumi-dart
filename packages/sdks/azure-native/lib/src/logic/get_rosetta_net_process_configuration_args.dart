// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_rosetta_net_process_configuration_args_doc}
/// Arguments for getRosettaNetProcessConfiguration.
/// {@endtemplate}
/// {@macro pulumi_logic_get_rosetta_net_process_configuration_args_doc}
class GetRosettaNetProcessConfigurationArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The integration account RosettaNetProcessConfiguration name.
  final pulumi.Input<String> rosettaNetProcessConfigurationName;

  /// Creates a new [GetRosettaNetProcessConfigurationArgs].
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  /// [rosettaNetProcessConfigurationName] The integration account RosettaNetProcessConfiguration name.
  GetRosettaNetProcessConfigurationArgs({
    required this.integrationAccountName,
    required this.resourceGroupName,
    required this.rosettaNetProcessConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
      'rosettaNetProcessConfigurationName': rosettaNetProcessConfigurationName,
    };
  }

  factory GetRosettaNetProcessConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetRosettaNetProcessConfigurationArgs(
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rosettaNetProcessConfigurationName: pulumi.Input.fromValue(map['rosettaNetProcessConfigurationName'] as String),
    );
  }
}

