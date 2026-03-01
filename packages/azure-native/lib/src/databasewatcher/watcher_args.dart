// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_databasewatcher_watcher_args_doc}
/// The set of arguments for Watcher.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_watcher_args_doc}
class WatcherArgs {
  /// The data store for collected monitoring data.
  final pulumi.Input<Datastore>? datastore;
  /// The resource ID of a user-assigned managed identity that will be assigned to a new alert rule.
  final pulumi.Input<String>? defaultAlertRuleIdentityResourceId;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The database watcher name.
  final pulumi.Input<String>? watcherName;

  /// Creates a new [WatcherArgs].
  /// [datastore] The data store for collected monitoring data.
  /// [defaultAlertRuleIdentityResourceId] The resource ID of a user-assigned managed identity that will be assigned to a new alert rule.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [watcherName] The database watcher name.
  WatcherArgs({
    Datastore? datastore,
    String? defaultAlertRuleIdentityResourceId,
    ManagedServiceIdentity? identity,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? watcherName,
  }) :
      datastore = pulumi.Input.asOptionalInput<Datastore>(datastore),
      defaultAlertRuleIdentityResourceId = pulumi.Input.asOptionalInput<String>(defaultAlertRuleIdentityResourceId),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      watcherName = pulumi.Input.asOptionalInput<String>(watcherName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': ?pulumi.Input.mapOptionalInputValue<Datastore, Map<String, dynamic>>(datastore, (value) => value.toMap()),
      'defaultAlertRuleIdentityResourceId': ?defaultAlertRuleIdentityResourceId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'watcherName': ?watcherName,
    };
  }

  factory WatcherArgs.fromMap(Map<String, dynamic> map) {
    return WatcherArgs(
      datastore: map['datastore'] == null ? null : Datastore.fromMap((map['datastore'] as Map).cast<String, dynamic>()),
      defaultAlertRuleIdentityResourceId: map['defaultAlertRuleIdentityResourceId'] == null ? null : map['defaultAlertRuleIdentityResourceId'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      watcherName: map['watcherName'] == null ? null : map['watcherName'] as String,
    );
  }
}

