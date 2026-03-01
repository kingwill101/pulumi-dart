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
  CloudConnectionArgs({
    pulumi.Output<String>? cloudConnectionName,
    pulumi.Output<ResourceReference>? cloudConnector,
    pulumi.Output<String>? location,
    pulumi.Output<String>? remoteResourceId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sharedKey,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ResourceReference>? virtualHub,
  }) :
      cloudConnectionName = pulumi.Input.asOptionalInput<String>(cloudConnectionName),
      cloudConnector = pulumi.Input.asOptionalInput<ResourceReference>(cloudConnector),
      location = pulumi.Input.asOptionalInput<String>(location),
      remoteResourceId = pulumi.Input.asOptionalInput<String>(remoteResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHub = pulumi.Input.asOptionalInput<ResourceReference>(virtualHub);

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
      cloudConnectionName: map['cloudConnectionName'] == null ? null : pulumi.Output.create<String>(map['cloudConnectionName'] as String),
      cloudConnector: map['cloudConnector'] == null ? null : pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['cloudConnector'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      remoteResourceId: map['remoteResourceId'] == null ? null : pulumi.Output.create<String>(map['remoteResourceId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharedKey: map['sharedKey'] == null ? null : pulumi.Output.create<String>(map['sharedKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHub: map['virtualHub'] == null ? null : pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())),
    );
  }
}

