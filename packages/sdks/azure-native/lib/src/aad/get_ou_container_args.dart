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
    required pulumi.Output<String> domainServiceName,
    required pulumi.Output<String> ouContainerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      domainServiceName = pulumi.Input.asInput<String>(domainServiceName),
      ouContainerName = pulumi.Input.asInput<String>(ouContainerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceName': domainServiceName,
      'ouContainerName': ouContainerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOuContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetOuContainerArgs(
      domainServiceName: pulumi.Output.create<String>(map['domainServiceName'] as String),
      ouContainerName: pulumi.Output.create<String>(map['ouContainerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

