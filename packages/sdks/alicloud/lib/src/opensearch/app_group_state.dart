// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_order.dart';
import 'app_group_quota.dart';

/// Input properties used for looking up and filtering AppGroup resources.
class AppGroupState {
  /// Application Group Name.
  final pulumi.Input<String>? appGroupName;

  /// Billing model. Valid values:`compute_resource` and `qps`.
  final pulumi.Input<String>? chargeWay;

  /// The version of Application Group Name.
  final pulumi.Input<String>? currentVersion;

  /// The description of the resource.
  final pulumi.Input<String>? description;

  /// The instance id.
  final pulumi.Input<String>? instanceId;

  /// Order change type. Valid values: `UPGRADE` and `DOWNGRADE`.
  final pulumi.Input<String>? orderType;

  /// Order cycle information. The details see Block order.
  final pulumi.Input<List<AppGroupOrder>>? orders;

  /// The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;

  /// Quota information.  The details see Block quota.
  final pulumi.Input<AppGroupQuota>? quota;

  /// The status of the resource. Valid values: `producing`,`review_pending`,`config_pending`,`normal`,`frozen`.
  final pulumi.Input<String>? status;

  /// Application type. Valid Values: `standard`, `enhanced`.
  final pulumi.Input<String>? type;

  /// Creates a new [AppGroupState].
  /// [appGroupName] Application Group Name.
  /// [chargeWay] Billing model. Valid values:`compute_resource` and `qps`.
  /// [currentVersion] The version of Application Group Name.
  /// [description] The description of the resource.
  /// [instanceId] The instance id.
  /// [orderType] Order change type. Valid values: `UPGRADE` and `DOWNGRADE`.
  /// [orders] Order cycle information. The details see Block order.
  /// [paymentType] The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  /// [quota] Quota information.  The details see Block quota.
  /// [status] The status of the resource. Valid values: `producing`,`review_pending`,`config_pending`,`normal`,`frozen`.
  /// [type] Application type. Valid Values: `standard`, `enhanced`.
  AppGroupState({
    this.appGroupName,
    this.chargeWay,
    this.currentVersion,
    this.description,
    this.instanceId,
    this.orderType,
    this.orders,
    this.paymentType,
    this.quota,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGroupName': ?appGroupName,
      'chargeWay': ?chargeWay,
      'currentVersion': ?currentVersion,
      'description': ?description,
      'instanceId': ?instanceId,
      'orderType': ?orderType,
      'orders':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppGroupOrder>,
            List<Map<String, dynamic>>
          >(
            orders,
            (value) =>
                pulumi.Input.encodeList<AppGroupOrder, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'paymentType': ?paymentType,
      'quota':
          ?pulumi.Input.mapOptionalInputValue<
            AppGroupQuota,
            Map<String, dynamic>
          >(quota, (value) => value.toMap()),
      'status': ?status,
      'type': ?type,
    };
  }

  factory AppGroupState.fromMap(Map<String, dynamic> map) {
    return AppGroupState(
      appGroupName: (() {
        final guardedValue = map['appGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      chargeWay: (() {
        final guardedValue = map['chargeWay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      currentVersion: (() {
        final guardedValue = map['currentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderType: (() {
        final guardedValue = map['orderType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orders: (() {
        final guardedValue = map['orders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppGroupOrder>(
            guardedValue,
            (value) =>
                AppGroupOrder.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quota: (() {
        final guardedValue = map['quota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppGroupQuota.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
