// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'instance_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_iotoperations_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_instance_args_doc}
class InstanceArgs {
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Name of instance.
  final pulumi.Input<String>? instanceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<InstanceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [extendedLocation] Edge location of the resource.
  /// [identity] The managed service identities assigned to this resource.
  /// [instanceName] Name of instance.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  InstanceArgs({
    required ExtendedLocation extendedLocation,
    ManagedServiceIdentity? identity,
    String? instanceName,
    String? location,
    InstanceProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<InstanceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instanceName': ?instanceName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<InstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : InstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

