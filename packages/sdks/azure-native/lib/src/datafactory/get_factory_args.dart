// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_factory_args_doc}
/// Arguments for getFactory.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_factory_args_doc}
class GetFactoryArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFactoryArgs].
  /// [factoryName] The factory name.
  /// [resourceGroupName] The resource group name.
  GetFactoryArgs({required this.factoryName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFactoryArgs.fromMap(Map<String, dynamic> map) {
    return GetFactoryArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
