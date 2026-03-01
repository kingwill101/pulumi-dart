// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_wafv2_logging_configuration_args_doc}
/// Arguments for getWafv2LoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_wafv2_logging_configuration_args_doc}
class GetWafv2LoggingConfigurationArgs {
  /// Name of Wafv2LoggingConfiguration
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWafv2LoggingConfigurationArgs].
  /// [name] Name of Wafv2LoggingConfiguration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWafv2LoggingConfigurationArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWafv2LoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetWafv2LoggingConfigurationArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

