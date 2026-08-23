// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_sage_maker_app_args_doc}
/// Arguments for getSageMakerApp.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_sage_maker_app_args_doc}
class GetSageMakerAppArgs {
  /// Name of SageMakerApp
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSageMakerAppArgs].
  /// [name] Name of SageMakerApp
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetSageMakerAppArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSageMakerAppArgs.fromMap(Map<String, dynamic> map) {
    return GetSageMakerAppArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
