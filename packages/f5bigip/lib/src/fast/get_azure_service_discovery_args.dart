// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fast_get_azure_service_discovery_get_azure_service_discovery_args_doc}
/// Arguments for getAzureServiceDiscovery.
/// {@endtemplate}
/// {@macro pulumi_fast_get_azure_service_discovery_get_azure_service_discovery_args_doc}
class GetAzureServiceDiscoveryArgs {
  /// Specifies whether to look for public or private IP addresses,default `private`.
  final pulumi.Input<String>? addressRealm;
  /// Specifies whether you are updating your credentials,default `false`.
  final pulumi.Input<bool>? credentialUpdate;
  /// Member is down when fewer than minimum monitors report it healthy.
  final pulumi.Input<String>? minimumMonitors;
  /// Port to be used for Azure service discovery,default `80`.
  final pulumi.Input<int>? port;
  /// Azure Resource Group name.
  final pulumi.Input<String> resourceGroup;
  /// Azure subscription ID.
  final pulumi.Input<String> subscriptionId;
  /// The tag key associated with the node to add to this pool.
  final pulumi.Input<String>? tagKey;
  /// The tag value associated with the node to add to this pool.
  final pulumi.Input<String>? tagValue;
  final pulumi.Input<String>? type;
  /// Action to take when node cannot be detected,default `remove`.
  final pulumi.Input<String>? undetectableAction;
  /// Update interval for service discovery.
  final pulumi.Input<String>? updateInterval;

  /// Creates a new [GetAzureServiceDiscoveryArgs].
  /// [addressRealm] Specifies whether to look for public or private IP addresses,default `private`.
  /// [credentialUpdate] Specifies whether you are updating your credentials,default `false`.
  /// [minimumMonitors] Member is down when fewer than minimum monitors report it healthy.
  /// [port] Port to be used for Azure service discovery,default `80`.
  /// [resourceGroup] Azure Resource Group name.
  /// [subscriptionId] Azure subscription ID.
  /// [tagKey] The tag key associated with the node to add to this pool.
  /// [tagValue] The tag value associated with the node to add to this pool.
  /// [type] Optional.
  /// [undetectableAction] Action to take when node cannot be detected,default `remove`.
  /// [updateInterval] Update interval for service discovery.
  GetAzureServiceDiscoveryArgs({
    String? addressRealm,
    bool? credentialUpdate,
    String? minimumMonitors,
    int? port,
    required String resourceGroup,
    required String subscriptionId,
    String? tagKey,
    String? tagValue,
    String? type,
    String? undetectableAction,
    String? updateInterval,
  }) :
      addressRealm = pulumi.Input.asOptionalInput<String>(addressRealm),
      credentialUpdate = pulumi.Input.asOptionalInput<bool>(credentialUpdate),
      minimumMonitors = pulumi.Input.asOptionalInput<String>(minimumMonitors),
      port = pulumi.Input.asOptionalInput<int>(port),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
      tagKey = pulumi.Input.asOptionalInput<String>(tagKey),
      tagValue = pulumi.Input.asOptionalInput<String>(tagValue),
      type = pulumi.Input.asOptionalInput<String>(type),
      undetectableAction = pulumi.Input.asOptionalInput<String>(undetectableAction),
      updateInterval = pulumi.Input.asOptionalInput<String>(updateInterval);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'credentialUpdate': ?credentialUpdate,
      'minimumMonitors': ?minimumMonitors,
      'port': ?port,
      'resourceGroup': resourceGroup,
      'subscriptionId': subscriptionId,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
    };
  }

  factory GetAzureServiceDiscoveryArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureServiceDiscoveryArgs(
      addressRealm: map['addressRealm'] == null ? null : map['addressRealm'] as String,
      credentialUpdate: map['credentialUpdate'] == null ? null : map['credentialUpdate'] as bool,
      minimumMonitors: map['minimumMonitors'] == null ? null : map['minimumMonitors'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      resourceGroup: map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      undetectableAction: map['undetectableAction'] == null ? null : map['undetectableAction'] as String,
      updateInterval: map['updateInterval'] == null ? null : map['updateInterval'] as String,
    );
  }
}

