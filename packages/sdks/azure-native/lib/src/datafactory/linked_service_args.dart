// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_mwslinked_service.dart';

/// {@template pulumi_datafactory_linked_service_args_doc}
/// The set of arguments for LinkedService.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_args_doc}
class LinkedServiceArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The linked service name.
  final pulumi.Input<String>? linkedServiceName;
  /// Properties of linked service.
  final pulumi.Input<AmazonMWSLinkedService> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [LinkedServiceArgs].
  /// [factoryName] The factory name.
  /// [linkedServiceName] The linked service name.
  /// [properties] Properties of linked service.
  /// [resourceGroupName] The resource group name.
  LinkedServiceArgs({
    required pulumi.Output<String> factoryName,
    pulumi.Output<String>? linkedServiceName,
    required pulumi.Output<AmazonMWSLinkedService> properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      linkedServiceName = pulumi.Input.asOptionalInput<String>(linkedServiceName),
      properties = pulumi.Input.asInput<AmazonMWSLinkedService>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'linkedServiceName': ?linkedServiceName,
      'properties': pulumi.Input.mapInputValue<AmazonMWSLinkedService, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory LinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceArgs(
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      linkedServiceName: map['linkedServiceName'] == null ? null : pulumi.Output.create<String>(map['linkedServiceName'] as String),
      properties: pulumi.Output.create<AmazonMWSLinkedService>(AmazonMWSLinkedService.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

