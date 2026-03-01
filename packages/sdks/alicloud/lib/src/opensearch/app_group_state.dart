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
    pulumi.Output<String>? appGroupName,
    pulumi.Output<String>? chargeWay,
    pulumi.Output<String>? currentVersion,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? orderType,
    pulumi.Output<List<AppGroupOrder>>? orders,
    pulumi.Output<String>? paymentType,
    pulumi.Output<AppGroupQuota>? quota,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      appGroupName = pulumi.Input.asOptionalInput<String>(appGroupName),
      chargeWay = pulumi.Input.asOptionalInput<String>(chargeWay),
      currentVersion = pulumi.Input.asOptionalInput<String>(currentVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      orderType = pulumi.Input.asOptionalInput<String>(orderType),
      orders = pulumi.Input.asOptionalInput<List<AppGroupOrder>>(orders),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      quota = pulumi.Input.asOptionalInput<AppGroupQuota>(quota),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGroupName': ?appGroupName,
      'chargeWay': ?chargeWay,
      'currentVersion': ?currentVersion,
      'description': ?description,
      'instanceId': ?instanceId,
      'orderType': ?orderType,
      'orders': ?pulumi.Input.mapOptionalInputValue<List<AppGroupOrder>, List<Map<String, dynamic>>>(orders, (value) => pulumi.Input.encodeList<AppGroupOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': ?paymentType,
      'quota': ?pulumi.Input.mapOptionalInputValue<AppGroupQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'status': ?status,
      'type': ?type,
    };
  }

  factory AppGroupState.fromMap(Map<String, dynamic> map) {
    return AppGroupState(
      appGroupName: map['appGroupName'] == null ? null : pulumi.Output.create<String>(map['appGroupName'] as String),
      chargeWay: map['chargeWay'] == null ? null : pulumi.Output.create<String>(map['chargeWay'] as String),
      currentVersion: map['currentVersion'] == null ? null : pulumi.Output.create<String>(map['currentVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      orderType: map['orderType'] == null ? null : pulumi.Output.create<String>(map['orderType'] as String),
      orders: map['orders'] == null ? null : pulumi.Output.create<List<AppGroupOrder>>(pulumi.Input.decodeList<AppGroupOrder>(map['orders'], (value) => AppGroupOrder.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      quota: map['quota'] == null ? null : pulumi.Output.create<AppGroupQuota>(AppGroupQuota.fromMap((map['quota'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

