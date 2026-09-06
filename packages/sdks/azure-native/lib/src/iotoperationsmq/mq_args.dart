// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property.dart';

/// {@template pulumi_iotoperationsmq_mq_args_doc}
/// The set of arguments for Mq.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_mq_args_doc}
class MqArgs {
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Name of MQ resource
  final pulumi.Input<String?>? mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [MqArgs].
  /// [extendedLocation] Extended Location
  /// [location] The geo-location where the resource lives
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const MqArgs({
    required this.extendedLocation,
    this.location,
    this.mqName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'mqName': ?mqName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MqArgs.fromMap(Map<String, dynamic> map) {
    return MqArgs(
      extendedLocation: pulumi.Input.fromValue(ExtendedLocationProperty.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mqName: (() { final guardedValue = map['mqName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
