// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_sync_sync_args_doc}
/// The set of arguments for Sync.
/// {@endtemplate}
/// {@macro pulumi_storage_sync_sync_args_doc}
class SyncArgs {
  /// Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`.
  final pulumi.Input<String>? incomingTrafficPolicy;
  /// The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Storage Sync.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SyncArgs].
  /// [incomingTrafficPolicy] Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`.
  /// [location] The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  /// [name] The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created.
  /// [resourceGroupName] The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  /// [tags] A mapping of tags which should be assigned to the Storage Sync.
  SyncArgs({
    String? incomingTrafficPolicy,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      incomingTrafficPolicy = pulumi.Input.asOptionalInput<String>(incomingTrafficPolicy),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incomingTrafficPolicy': ?incomingTrafficPolicy,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SyncArgs.fromMap(Map<String, dynamic> map) {
    return SyncArgs(
      incomingTrafficPolicy: map['incomingTrafficPolicy'] == null ? null : map['incomingTrafficPolicy'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

