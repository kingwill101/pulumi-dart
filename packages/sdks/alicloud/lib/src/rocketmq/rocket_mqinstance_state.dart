// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rocket_mqinstance_acl_info.dart';
import 'rocket_mqinstance_network_info.dart';
import 'rocket_mqinstance_product_info.dart';
import 'rocket_mqinstance_software.dart';

/// Input properties used for looking up and filtering RocketMQInstance resources.
class RocketMQInstanceState {
  /// The access control list for the instance. See `acl_info` below.
  final pulumi.Input<RocketMQInstanceAclInfo>? aclInfo;
  /// Whether to enable auto-renewal. This parameter is only applicable when the payment type for the instance is Subscription (prepaid).
  /// - true: Enable auto-renewal
  /// - false: Disable auto-renewal
  final pulumi.Input<bool>? autoRenew;
  /// Auto-renewal period. This parameter is only valid when auto-renewal is enabled. Unit: months.
  ///
  /// The values can be as follows:
  /// - Monthly renewal: 1, 2, 3, 6, 12
  final pulumi.Input<int>? autoRenewPeriod;
  /// The minimum periodic unit for the duration of auto-renewal. This parameter is only valid when auto-renewal is enabled. Valid values: `Month`, `Year`.
  final pulumi.Input<String>? autoRenewPeriodUnit;
  /// Commodity code
  ///
  /// ons_rmqsub_public_cn: Package year and month instance
  ///
  /// ons_rmqpost_public_cn: Pay-As-You-Go instance
  ///
  /// Next: Serverless instances
  final pulumi.Input<String>? commodityCode;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The name of instance
  final pulumi.Input<String>? instanceName;
  /// The ip whitelist.
  final pulumi.Input<List<String>>? ipWhitelists;
  /// Instance network configuration information See `network_info` below.
  final pulumi.Input<RocketMQInstanceNetworkInfo>? networkInfo;
  /// The payment type for the instance. Alibaba Cloud Message Queue RocketMQ version supports two types of payment:
  ///
  /// The parameter values are as follows:
  /// - PayAsYouGo: Pay-as-you-go, a post-payment model where you pay after usage.
  /// - Subscription: Subscription-based, a pre-payment model where you pay before usage.
  ///
  /// For more information, please refer to [Billing Methods](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/overview-2).
  final pulumi.Input<String>? paymentType;
  /// Duration of purchase. This parameter is only valid when the payment type for the instance is Subscription (prepaid).
  ///
  /// The values can be as follows:
  /// - Monthly purchase: 1, 2, 3, 4, 5, 6
  /// - Annual purchase: 1, 2, 3
  final pulumi.Input<int>? period;
  /// The minimum periodic unit for the duration of purchase.
  ///
  /// The parameter values are as follows:
  /// - Month: Purchase on a monthly basis
  /// - Year: Purchase on an annual basis
  final pulumi.Input<String>? periodUnit;
  /// product info See `product_info` below.
  final pulumi.Input<RocketMQInstanceProductInfo>? productInfo;
  /// (Available since v1.245.0) The ID of the region in which the instance resides.
  final pulumi.Input<String>? regionId;
  /// Custom description
  final pulumi.Input<String>? remark;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The primary series encoding for the instance. For specific differences between the primary series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  ///
  /// The parameter values are as follows:
  /// - standard: Standard Edition
  /// - ultimate: Platinum Edition
  /// - professional: Professional Edition
  final pulumi.Input<String>? seriesCode;
  /// The code of the service code instance. The code of the RocketMQ is rmq.
  final pulumi.Input<String>? serviceCode;
  /// Instance software information. See `software` below.
  final pulumi.Input<RocketMQInstanceSoftware>? software;
  /// The status of the instance
  final pulumi.Input<String>? status;
  /// The sub-series encoding for the instance. For specific differences between the sub-series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  ///
  /// The parameter values are as follows:
  /// - cluster_ha: Cluster High Availability Edition
  /// - single_node: Single Node Testing Edition
  /// - serverless：Serverless instance
  /// **NOTE:** From version 1.245.0, `sub_series_code` can be set to `serverless`.
  /// When selecting the primary series as ultimate (Platinum Edition), the sub-series can only be chosen as cluster_ha (Cluster High Availability Edition).
  final pulumi.Input<String>? subSeriesCode;
  /// The resource label.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RocketMQInstanceState].
  /// [aclInfo] The access control list for the instance. See `acl_info` below.
  /// [autoRenew] Whether to enable auto-renewal. This parameter is only applicable when the payment type for the instance is Subscription (prepaid).
  /// [autoRenewPeriod] Auto-renewal period. This parameter is only valid when auto-renewal is enabled. Unit: months.
  /// [autoRenewPeriodUnit] The minimum periodic unit for the duration of auto-renewal. This parameter is only valid when auto-renewal is enabled. Valid values: `Month`, `Year`.
  /// [commodityCode] Commodity code
  /// [createTime] The creation time of the resource
  /// [instanceName] The name of instance
  /// [ipWhitelists] The ip whitelist.
  /// [networkInfo] Instance network configuration information See `network_info` below.
  /// [paymentType] The payment type for the instance. Alibaba Cloud Message Queue RocketMQ version supports two types of payment:
  /// [period] Duration of purchase. This parameter is only valid when the payment type for the instance is Subscription (prepaid).
  /// [periodUnit] The minimum periodic unit for the duration of purchase.
  /// [productInfo] product info See `product_info` below.
  /// [regionId] (Available since v1.245.0) The ID of the region in which the instance resides.
  /// [remark] Custom description
  /// [resourceGroupId] The ID of the resource group
  /// [seriesCode] The primary series encoding for the instance. For specific differences between the primary series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  /// [serviceCode] The code of the service code instance. The code of the RocketMQ is rmq.
  /// [software] Instance software information. See `software` below.
  /// [status] The status of the instance
  /// [subSeriesCode] The sub-series encoding for the instance. For specific differences between the sub-series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  /// [tags] The resource label.
  RocketMQInstanceState({
    this.aclInfo,
    this.autoRenew,
    this.autoRenewPeriod,
    this.autoRenewPeriodUnit,
    this.commodityCode,
    this.createTime,
    this.instanceName,
    this.ipWhitelists,
    this.networkInfo,
    this.paymentType,
    this.period,
    this.periodUnit,
    this.productInfo,
    this.regionId,
    this.remark,
    this.resourceGroupId,
    this.seriesCode,
    this.serviceCode,
    this.software,
    this.status,
    this.subSeriesCode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclInfo': ?pulumi.Input.mapOptionalInputValue<RocketMQInstanceAclInfo, Map<String, dynamic>>(aclInfo, (value) => value.toMap()),
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'autoRenewPeriodUnit': ?autoRenewPeriodUnit,
      'commodityCode': ?commodityCode,
      'createTime': ?createTime,
      'instanceName': ?instanceName,
      'ipWhitelists': ?ipWhitelists,
      'networkInfo': ?pulumi.Input.mapOptionalInputValue<RocketMQInstanceNetworkInfo, Map<String, dynamic>>(networkInfo, (value) => value.toMap()),
      'paymentType': ?paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'productInfo': ?pulumi.Input.mapOptionalInputValue<RocketMQInstanceProductInfo, Map<String, dynamic>>(productInfo, (value) => value.toMap()),
      'regionId': ?regionId,
      'remark': ?remark,
      'resourceGroupId': ?resourceGroupId,
      'seriesCode': ?seriesCode,
      'serviceCode': ?serviceCode,
      'software': ?pulumi.Input.mapOptionalInputValue<RocketMQInstanceSoftware, Map<String, dynamic>>(software, (value) => value.toMap()),
      'status': ?status,
      'subSeriesCode': ?subSeriesCode,
      'tags': ?tags,
    };
  }

  factory RocketMQInstanceState.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceState(
      aclInfo: map['aclInfo'] == null ? null : (RocketMQInstanceAclInfo.fromMap((map['aclInfo'] as Map).cast<String, dynamic>())).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      autoRenewPeriodUnit: map['autoRenewPeriodUnit'] == null ? null : (map['autoRenewPeriodUnit'] as String).input(),
      commodityCode: map['commodityCode'] == null ? null : (map['commodityCode'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      ipWhitelists: map['ipWhitelists'] == null ? null : ((map['ipWhitelists'] as List).cast<String>()).input(),
      networkInfo: map['networkInfo'] == null ? null : (RocketMQInstanceNetworkInfo.fromMap((map['networkInfo'] as Map).cast<String, dynamic>())).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      productInfo: map['productInfo'] == null ? null : (RocketMQInstanceProductInfo.fromMap((map['productInfo'] as Map).cast<String, dynamic>())).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      remark: map['remark'] == null ? null : (map['remark'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      seriesCode: map['seriesCode'] == null ? null : (map['seriesCode'] as String).input(),
      serviceCode: map['serviceCode'] == null ? null : (map['serviceCode'] as String).input(),
      software: map['software'] == null ? null : (RocketMQInstanceSoftware.fromMap((map['software'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      subSeriesCode: map['subSeriesCode'] == null ? null : (map['subSeriesCode'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

