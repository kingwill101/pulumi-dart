// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sku.dart';

/// {@template pulumi_signalrservice_signal_rreplica_args_doc}
/// The set of arguments for SignalRReplica.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_signal_rreplica_args_doc}
class SignalRReplicaArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  final pulumi.Input<String>? regionEndpointEnabled;
  /// The name of the replica.
  final pulumi.Input<String>? replicaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;
  /// Stop or start the resource.  Default to "false".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  final pulumi.Input<String>? resourceStopped;
  /// The billing information of the resource.
  final pulumi.Input<ResourceSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SignalRReplicaArgs].
  /// [location] The geo-location where the resource lives
  /// [regionEndpointEnabled] Enable or disable the regional endpoint. Default to "Enabled".
  /// [replicaName] The name of the replica.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [resourceStopped] Stop or start the resource.  Default to "false".
  /// [sku] The billing information of the resource.
  /// [tags] Resource tags.
  SignalRReplicaArgs({
    String? location,
    String? regionEndpointEnabled,
    String? replicaName,
    required String resourceGroupName,
    required String resourceName,
    String? resourceStopped,
    ResourceSku? sku,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      regionEndpointEnabled = pulumi.Input.asOptionalInput<String>(regionEndpointEnabled),
      replicaName = pulumi.Input.asOptionalInput<String>(replicaName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceStopped = pulumi.Input.asOptionalInput<String>(resourceStopped),
      sku = pulumi.Input.asOptionalInput<ResourceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'replicaName': ?replicaName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceStopped': ?resourceStopped,
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SignalRReplicaArgs.fromMap(Map<String, dynamic> map) {
    return SignalRReplicaArgs(
      location: map['location'] == null ? null : map['location'] as String,
      regionEndpointEnabled: map['regionEndpointEnabled'] == null ? null : map['regionEndpointEnabled'] as String,
      replicaName: map['replicaName'] == null ? null : map['replicaName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      resourceStopped: map['resourceStopped'] == null ? null : map['resourceStopped'] as String,
      sku: map['sku'] == null ? null : ResourceSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

