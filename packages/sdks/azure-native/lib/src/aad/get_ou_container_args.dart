// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aad_get_ou_container_args_doc}
/// Arguments for getOuContainer.
/// {@endtemplate}
/// {@macro pulumi_aad_get_ou_container_args_doc}
class GetOuContainerArgs {
  /// The name of the domain service.
  final pulumi.Input<String> domainServiceName;
  /// The name of the OuContainer.
  final pulumi.Input<String> ouContainerName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOuContainerArgs].
  /// [domainServiceName] The name of the domain service.
  /// [ouContainerName] The name of the OuContainer.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetOuContainerArgs({
    required this.domainServiceName,
    required this.ouContainerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceName': domainServiceName,
      'ouContainerName': ouContainerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOuContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetOuContainerArgs(
      domainServiceName: pulumi.Input.fromValue(map['domainServiceName'] as String),
      ouContainerName: pulumi.Input.fromValue(map['ouContainerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

