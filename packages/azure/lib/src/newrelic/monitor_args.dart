// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_identity.dart';
import 'monitor_plan.dart';
import 'monitor_user.dart';

/// {@template pulumi_newrelic_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_newrelic_monitor_monitor_args_doc}
class MonitorArgs {
  /// Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? accountCreationSource;
  /// Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created.
  ///
  /// > **Note:** The value of `account_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
  final pulumi.Input<String>? accountId;
  /// An `identity` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorIdentity>? identity;
  /// Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? ingestionKey;
  /// Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? name;
  /// Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? orgCreationSource;
  /// Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created.
  ///
  /// > **Note:** The value of `organization_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
  final pulumi.Input<String>? organizationId;
  /// A `plan` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorPlan> plan;
  /// Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `user` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorUser> user;
  /// Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [MonitorArgs].
  /// [accountCreationSource] Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [accountId] Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [ingestionKey] Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [location] Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [name] Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [orgCreationSource] Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [organizationId] Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [plan] A `plan` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [user] A `user` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [userId] Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created.
  MonitorArgs({
    String? accountCreationSource,
    String? accountId,
    MonitorIdentity? identity,
    String? ingestionKey,
    String? location,
    String? name,
    String? orgCreationSource,
    String? organizationId,
    required MonitorPlan plan,
    required String resourceGroupName,
    required MonitorUser user,
    String? userId,
  }) :
      accountCreationSource = pulumi.Input.asOptionalInput<String>(accountCreationSource),
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      identity = pulumi.Input.asOptionalInput<MonitorIdentity>(identity),
      ingestionKey = pulumi.Input.asOptionalInput<String>(ingestionKey),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgCreationSource = pulumi.Input.asOptionalInput<String>(orgCreationSource),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId),
      plan = pulumi.Input.asInput<MonitorPlan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      user = pulumi.Input.asInput<MonitorUser>(user),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCreationSource': ?accountCreationSource,
      'accountId': ?accountId,
      'identity': ?pulumi.Input.mapOptionalInputValue<MonitorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingestionKey': ?ingestionKey,
      'location': ?location,
      'name': ?name,
      'orgCreationSource': ?orgCreationSource,
      'organizationId': ?organizationId,
      'plan': pulumi.Input.mapInputValue<MonitorPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'user': pulumi.Input.mapInputValue<MonitorUser, Map<String, dynamic>>(user, (value) => value.toMap()),
      'userId': ?userId,
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      accountCreationSource: map['accountCreationSource'] == null ? null : map['accountCreationSource'] as String,
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      identity: map['identity'] == null ? null : MonitorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      ingestionKey: map['ingestionKey'] == null ? null : map['ingestionKey'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      orgCreationSource: map['orgCreationSource'] == null ? null : map['orgCreationSource'] as String,
      organizationId: map['organizationId'] == null ? null : map['organizationId'] as String,
      plan: MonitorPlan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      user: MonitorUser.fromMap((map['user'] as Map).cast<String, dynamic>()),
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}

