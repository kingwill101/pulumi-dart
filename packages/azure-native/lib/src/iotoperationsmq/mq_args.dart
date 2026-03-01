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
    required ExtendedLocationProperty extendedLocation,
    String? location,
    String? mqName,
    required String resourceGroupName,
    Map<String, String>? tags,
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
      extendedLocation: ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      mqName: map['mqName'] == null ? null : map['mqName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

