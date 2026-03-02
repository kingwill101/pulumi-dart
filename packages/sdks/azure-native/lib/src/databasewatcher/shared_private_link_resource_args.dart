// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasewatcher_shared_private_link_resource_args_doc}
/// The set of arguments for SharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_shared_private_link_resource_args_doc}
class SharedPrivateLinkResourceArgs {
  /// The DNS zone segment to be included in the DNS name of the shared private link. Value is required for Azure Data Explorer clusters and SQL managed instances, and must be omitted for SQL logical servers and key vaults. The value is the second segment of the host FQDN name of the resource that the shared private link resource is for. For example: if the host name is 'adx-cluster-21187695.eastus.kusto.windows.net', then the value is 'eastus'; if the host name is 'sql-mi-23961134.767d5869f605.database.windows.net', then the value is '767d5869f605'.
  final pulumi.Input<String>? dnsZone;
  /// The group id from the provider of resource the shared private link resource is for.
  final pulumi.Input<String> groupId;
  /// The resource ID of the resource the shared private link resource is for.
  final pulumi.Input<String> privateLinkResourceId;
  /// The request message for requesting approval of the shared private link resource.
  final pulumi.Input<String> requestMessage;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Shared Private Link resource name.
  final pulumi.Input<String>? sharedPrivateLinkResourceName;
  /// The database watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [SharedPrivateLinkResourceArgs].
  /// [dnsZone] The DNS zone segment to be included in the DNS name of the shared private link. Value is required for Azure Data Explorer clusters and SQL managed instances, and must be omitted for SQL logical servers and key vaults. The value is the second segment of the host FQDN name of the resource that the shared private link resource is for. For example: if the host name is 'adx-cluster-21187695.eastus.kusto.windows.net', then the value is 'eastus'; if the host name is 'sql-mi-23961134.767d5869f605.database.windows.net', then the value is '767d5869f605'.
  /// [groupId] The group id from the provider of resource the shared private link resource is for.
  /// [privateLinkResourceId] The resource ID of the resource the shared private link resource is for.
  /// [requestMessage] The request message for requesting approval of the shared private link resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharedPrivateLinkResourceName] The Shared Private Link resource name.
  /// [watcherName] The database watcher name.
  SharedPrivateLinkResourceArgs({
    this.dnsZone,
    required this.groupId,
    required this.privateLinkResourceId,
    required this.requestMessage,
    required this.resourceGroupName,
    this.sharedPrivateLinkResourceName,
    required this.watcherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsZone': ?dnsZone,
      'groupId': groupId,
      'privateLinkResourceId': privateLinkResourceId,
      'requestMessage': requestMessage,
      'resourceGroupName': resourceGroupName,
      'sharedPrivateLinkResourceName': ?sharedPrivateLinkResourceName,
      'watcherName': watcherName,
    };
  }

  factory SharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceArgs(
      dnsZone: map['dnsZone'] == null ? null : (map['dnsZone']! as String).input(),
      groupId: (map['groupId'] as String).input(),
      privateLinkResourceId: (map['privateLinkResourceId'] as String).input(),
      requestMessage: (map['requestMessage'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sharedPrivateLinkResourceName: map['sharedPrivateLinkResourceName'] == null ? null : (map['sharedPrivateLinkResourceName']! as String).input(),
      watcherName: (map['watcherName'] as String).input(),
    );
  }
}

