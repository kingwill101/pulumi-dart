// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_api_gateway_stage_args_doc}
/// Arguments for getApiGatewayStage.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_api_gateway_stage_args_doc}
class GetApiGatewayStageArgs {
  /// Name of ApiGatewayStage
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApiGatewayStageArgs].
  /// [name] Name of ApiGatewayStage
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApiGatewayStageArgs({
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

  factory GetApiGatewayStageArgs.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayStageArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

