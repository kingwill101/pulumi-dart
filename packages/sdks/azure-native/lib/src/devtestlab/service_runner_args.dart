// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties.dart';

/// {@template pulumi_devtestlab_service_runner_args_doc}
/// The set of arguments for ServiceRunner.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_service_runner_args_doc}
class ServiceRunnerArgs {
  /// The identity of the resource.
  final pulumi.Input<IdentityProperties>? identity;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the ServiceRunner
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceRunnerArgs].
  /// [identity] The identity of the resource.
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the ServiceRunner
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  ServiceRunnerArgs({
    this.identity,
    required this.labName,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ServiceRunnerArgs.fromMap(Map<String, dynamic> map) {
    return ServiceRunnerArgs(
      identity: map['identity'] == null ? null : (IdentityProperties.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

