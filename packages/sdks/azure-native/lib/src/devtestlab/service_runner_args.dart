// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties.dart';

/// {@template pulumi_devtestlab_service_runner_args_doc}
/// The set of arguments for ServiceRunner.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_service_runner_args_doc}
class ServiceRunnerArgs {
  /// The identity of the resource.
  final pulumi.Input<IdentityProperties?>? identity;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the service runner.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServiceRunnerArgs].
  /// [identity] The identity of the resource.
  /// [labName] The name of the lab.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the service runner.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const ServiceRunnerArgs({
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
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
