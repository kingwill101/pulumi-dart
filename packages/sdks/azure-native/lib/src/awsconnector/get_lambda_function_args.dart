// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_lambda_function_args_doc}
/// Arguments for getLambdaFunction.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_lambda_function_args_doc}
class GetLambdaFunctionArgs {
  /// Name of LambdaFunction
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLambdaFunctionArgs].
  /// [name] Name of LambdaFunction
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLambdaFunctionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLambdaFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetLambdaFunctionArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

