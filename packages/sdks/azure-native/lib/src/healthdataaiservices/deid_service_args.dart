// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deid_service_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_healthdataaiservices_deid_service_args_doc}
/// The set of arguments for DeidService.
/// {@endtemplate}
/// {@macro pulumi_healthdataaiservices_deid_service_args_doc}
class DeidServiceArgs {
  /// The name of the deid service
  final pulumi.Input<String>? deidServiceName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DeidServiceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeidServiceArgs].
  /// [deidServiceName] The name of the deid service
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DeidServiceArgs({
    pulumi.Output<String>? deidServiceName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<DeidServiceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deidServiceName = pulumi.Input.asOptionalInput<String>(deidServiceName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<DeidServiceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidServiceName': ?deidServiceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<DeidServiceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DeidServiceArgs.fromMap(Map<String, dynamic> map) {
    return DeidServiceArgs(
      deidServiceName: map['deidServiceName'] == null ? null : pulumi.Output.create<String>(map['deidServiceName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DeidServiceProperties>(DeidServiceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

