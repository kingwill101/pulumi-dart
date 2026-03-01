// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_linked_service_args_doc}
/// Arguments for getLinkedService.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_linked_service_args_doc}
class GetLinkedServiceArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The linked service name.
  final pulumi.Input<String> linkedServiceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLinkedServiceArgs].
  /// [factoryName] The factory name.
  /// [linkedServiceName] The linked service name.
  /// [resourceGroupName] The resource group name.
  GetLinkedServiceArgs({
    required pulumi.Output<String> factoryName,
    required pulumi.Output<String> linkedServiceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      linkedServiceName = pulumi.Input.asInput<String>(linkedServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'linkedServiceName': linkedServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedServiceArgs(
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      linkedServiceName: pulumi.Output.create<String>(map['linkedServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

