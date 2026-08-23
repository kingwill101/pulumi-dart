// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_lambda_function_code_location_args_doc}
/// Arguments for getLambdaFunctionCodeLocation.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_lambda_function_code_location_args_doc}
class GetLambdaFunctionCodeLocationArgs {
  /// Name of LambdaFunctionCodeLocation
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLambdaFunctionCodeLocationArgs].
  /// [name] Name of LambdaFunctionCodeLocation
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetLambdaFunctionCodeLocationArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLambdaFunctionCodeLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetLambdaFunctionCodeLocationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
