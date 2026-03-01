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
  AppGroupArgs({
    required String appGroupName,
    String? chargeWay,
    String? currentVersion,
    String? description,
    String? orderType,
    List<AppGroupOrder>? orders,
    required String paymentType,
    required AppGroupQuota quota,
    required String type,
  }) :
      appGroupName = pulumi.Input.asInput<String>(appGroupName),
      chargeWay = pulumi.Input.asOptionalInput<String>(chargeWay),
      currentVersion = pulumi.Input.asOptionalInput<String>(currentVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      orderType = pulumi.Input.asOptionalInput<String>(orderType),
      orders = pulumi.Input.asOptionalInput<List<AppGroupOrder>>(orders),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      quota = pulumi.Input.asInput<AppGroupQuota>(quota),
      type = pulumi.Input.asInput<String>(type);

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
      appGroupName: map['appGroupName'] as String,
      chargeWay: map['chargeWay'] == null ? null : map['chargeWay'] as String,
      currentVersion: map['currentVersion'] == null ? null : map['currentVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      orderType: map['orderType'] == null ? null : map['orderType'] as String,
      orders: map['orders'] == null ? null : pulumi.Input.decodeList<AppGroupOrder>(map['orders'], (value) => AppGroupOrder.fromMap((value as Map).cast<String, dynamic>())),
      paymentType: map['paymentType'] as String,
      quota: AppGroupQuota.fromMap((map['quota'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

