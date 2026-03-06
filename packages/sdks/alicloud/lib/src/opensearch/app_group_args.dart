// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_order.dart';
import 'app_group_quota.dart';

/// {@template pulumi_opensearch_app_group_app_group_args_doc}
/// The set of arguments for AppGroup.
/// {@endtemplate}
/// {@macro pulumi_opensearch_app_group_app_group_args_doc}
class AppGroupArgs {
  /// Application Group Name.
  final pulumi.Input<String> appGroupName;
  /// Billing model. Valid values:`compute_resource` and `qps`.
  final pulumi.Input<String>? chargeWay;
  /// The version of Application Group Name.
  final pulumi.Input<String>? currentVersion;
  /// The description of the resource.
  final pulumi.Input<String>? description;
  /// Order change type. Valid values: `UPGRADE` and `DOWNGRADE`.
  final pulumi.Input<String>? orderType;
  /// Order cycle information. The details see Block order.
  final pulumi.Input<List<AppGroupOrder>>? orders;
  /// The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  final pulumi.Input<String> paymentType;
  /// Quota information.  The details see Block quota.
  final pulumi.Input<AppGroupQuota> quota;
  /// Application type. Valid Values: `standard`, `enhanced`.
  final pulumi.Input<String> type;

  /// Creates a new [AppGroupArgs].
  /// [appGroupName] Application Group Name.
  /// [chargeWay] Billing model. Valid values:`compute_resource` and `qps`.
  /// [currentVersion] The version of Application Group Name.
  /// [description] The description of the resource.
  /// [orderType] Order change type. Valid values: `UPGRADE` and `DOWNGRADE`.
  /// [orders] Order cycle information. The details see Block order.
  /// [paymentType] The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  /// [quota] Quota information.  The details see Block quota.
  /// [type] Application type. Valid Values: `standard`, `enhanced`.
  const AppGroupArgs({
    required this.appGroupName,
    this.chargeWay,
    this.currentVersion,
    this.description,
    this.orderType,
    this.orders,
    required this.paymentType,
    required this.quota,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGroupName': appGroupName,
      'chargeWay': ?chargeWay,
      'currentVersion': ?currentVersion,
      'description': ?description,
      'orderType': ?orderType,
      'orders': ?pulumi.Input.mapOptionalInputValue<List<AppGroupOrder>, List<Map<String, dynamic>>>(orders, (value) => pulumi.Input.encodeList<AppGroupOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': paymentType,
      'quota': pulumi.Input.mapInputValue<AppGroupQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AppGroupArgs.fromMap(Map<String, dynamic> map) {
    return AppGroupArgs(
      appGroupName: pulumi.Input.fromValue(map['appGroupName'] as String),
      chargeWay: (() { final guardedValue = map['chargeWay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentVersion: (() { final guardedValue = map['currentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderType: (() { final guardedValue = map['orderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orders: (() { final guardedValue = map['orders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppGroupOrder>(guardedValue, (value) => AppGroupOrder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      quota: pulumi.Input.fromValue(AppGroupQuota.fromMap((map['quota']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

