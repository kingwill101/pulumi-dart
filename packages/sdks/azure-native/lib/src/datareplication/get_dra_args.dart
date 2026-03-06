// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datareplication_get_dra_args_doc}
/// Arguments for getDra.
/// {@endtemplate}
/// {@macro pulumi_datareplication_get_dra_args_doc}
class GetDraArgs {
  /// The fabric agent (Dra) name.
  final pulumi.Input<String> fabricAgentName;
  /// The fabric name.
  final pulumi.Input<String> fabricName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDraArgs].
  /// [fabricAgentName] The fabric agent (Dra) name.
  /// [fabricName] The fabric name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDraArgs({
    required this.fabricAgentName,
    required this.fabricName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricAgentName': fabricAgentName,
      'fabricName': fabricName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDraArgs.fromMap(Map<String, dynamic> map) {
    return GetDraArgs(
      fabricAgentName: pulumi.Input.fromValue(map['fabricAgentName'] as String),
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

