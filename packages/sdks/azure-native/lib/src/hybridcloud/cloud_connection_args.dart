// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// {@template pulumi_hybridcloud_cloud_connection_args_doc}
/// The set of arguments for CloudConnection.
/// {@endtemplate}
/// {@macro pulumi_hybridcloud_cloud_connection_args_doc}
class CloudConnectionArgs {
  /// The name of the cloud connection resource
  final pulumi.Input<String>? cloudConnectionName;
  /// The cloud connector which discovered the remote resource.
  final pulumi.Input<ResourceReference>? cloudConnector;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Identifier for the remote cloud resource
  final pulumi.Input<String>? remoteResourceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Shared key of the cloud connection.
  final pulumi.Input<String>? sharedKey;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The virtualHub to which the cloud connection belongs.
  final pulumi.Input<ResourceReference>? virtualHub;

  /// Creates a new [CloudConnectionArgs].
  /// [cloudConnectionName] The name of the cloud connection resource
  /// [cloudConnector] The cloud connector which discovered the remote resource.
  /// [location] The geo-location where the resource lives
  /// [remoteResourceId] Identifier for the remote cloud resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharedKey] Shared key of the cloud connection.
  /// [tags] Resource tags.
  /// [virtualHub] The virtualHub to which the cloud connection belongs.
  const CloudConnectionArgs({
    this.cloudConnectionName,
    this.cloudConnector,
    this.location,
    this.remoteResourceId,
    required this.resourceGroupName,
    this.sharedKey,
    this.tags,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudConnectionName': ?cloudConnectionName,
      'cloudConnector': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(cloudConnector, (value) => value.toMap()),
      'location': ?location,
      'remoteResourceId': ?remoteResourceId,
      'resourceGroupName': resourceGroupName,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
    };
  }

  factory CloudConnectionArgs.fromMap(Map<String, dynamic> map) {
    return CloudConnectionArgs(
      cloudConnectionName: (() { final guardedValue = map['cloudConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudConnector: (() { final guardedValue = map['cloudConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteResourceId: (() { final guardedValue = map['remoteResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
