// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_iotoperations_akri_service_args_doc}
/// The set of arguments for AkriService.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_akri_service_args_doc}
class AkriServiceArgs {
  /// Name of AkriService resource.
  final pulumi.Input<String?>? akriServiceName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AkriServiceArgs].
  /// [akriServiceName] Name of AkriService resource.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AkriServiceArgs({
    this.akriServiceName,
    this.extendedLocation,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'akriServiceName': ?akriServiceName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AkriServiceArgs.fromMap(Map<String, dynamic> map) {
    return AkriServiceArgs(
      akriServiceName: (() { final guardedValue = map['akriServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
