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
  final pulumi.Input<String>? location;
  /// Name of MQ resource
  final pulumi.Input<String>? mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MqArgs].
  /// [extendedLocation] Extended Location
  /// [location] The geo-location where the resource lives
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  MqArgs({
    required pulumi.Output<ExtendedLocationProperty> extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mqName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      mqName = pulumi.Input.asOptionalInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: pulumi.Output.create<ExtendedLocationProperty>(ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mqName: map['mqName'] == null ? null : pulumi.Output.create<String>(map['mqName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

