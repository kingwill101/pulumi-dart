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
    this.identity,
    this.linkName,
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

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
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      linkName: map['linkName'] == null ? null : (map['linkName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (LinkedServiceProps.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

