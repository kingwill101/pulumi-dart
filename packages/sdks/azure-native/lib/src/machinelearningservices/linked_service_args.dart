// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'linked_service_props.dart';

/// {@template pulumi_machinelearningservices_linked_service_args_doc}
/// The set of arguments for LinkedService.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_linked_service_args_doc}
class LinkedServiceArgs {
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// Friendly name of the linked workspace
  final pulumi.Input<String>? linkName;
  /// location of the linked service.
  final pulumi.Input<String>? location;
  /// Friendly name of the linked service
  final pulumi.Input<String>? name;
  /// LinkedService specific properties.
  final pulumi.Input<LinkedServiceProps>? properties;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [LinkedServiceArgs].
  /// [identity] Identity for the resource.
  /// [linkName] Friendly name of the linked workspace
  /// [location] location of the linked service.
  /// [name] Friendly name of the linked service
  /// [properties] LinkedService specific properties.
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  LinkedServiceArgs({
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? linkName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<LinkedServiceProps>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      linkName = pulumi.Input.asOptionalInput<String>(linkName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<LinkedServiceProps>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'linkName': ?linkName,
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<LinkedServiceProps, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory LinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      linkName: map['linkName'] == null ? null : pulumi.Output.create<String>(map['linkName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<LinkedServiceProps>(LinkedServiceProps.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

