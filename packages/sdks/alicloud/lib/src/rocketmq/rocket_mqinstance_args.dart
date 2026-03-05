// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rocket_mqinstance_acl_info.dart';
import 'rocket_mqinstance_network_info.dart';
import 'rocket_mqinstance_product_info.dart';
import 'rocket_mqinstance_software.dart';

/// {@template pulumi_rocketmq_rocket_mqinstance_rocket_mqinstance_args_doc}
/// The set of arguments for RocketMQInstance.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_rocket_mqinstance_rocket_mqinstance_args_doc}
class RocketMQInstanceArgs {
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
  /// The name of instance
  final pulumi.Input<String>? instanceName;
  /// The ip whitelist.
  final pulumi.Input<List<String>>? ipWhitelists;
  /// Instance network configuration information See `network_info` below.
  final pulumi.Input<RocketMQInstanceNetworkInfo> networkInfo;
  /// The payment type for the instance. Alibaba Cloud Message Queue RocketMQ version supports two types of payment:
  ///
  /// The parameter values are as follows:
  /// - PayAsYouGo: Pay-as-you-go, a post-payment model where you pay after usage.
  /// - Subscription: Subscription-based, a pre-payment model where you pay before usage.
  ///
  /// For more information, please refer to [Billing Methods](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/overview-2).
  final pulumi.Input<String> paymentType;
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
  final pulumi.Input<String> seriesCode;
  /// The code of the service code instance. The code of the RocketMQ is rmq.
  final pulumi.Input<String> serviceCode;
  /// Instance software information. See `software` below.
  final pulumi.Input<RocketMQInstanceSoftware>? software;
  /// The sub-series encoding for the instance. For specific differences between the sub-series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  ///
  /// The parameter values are as follows:
  /// - cluster_ha: Cluster High Availability Edition
  /// - single_node: Single Node Testing Edition
  /// - serverless：Serverless instance
  /// **NOTE:** From version 1.245.0, `sub_series_code` can be set to `serverless`.
  /// When selecting the primary series as ultimate (Platinum Edition), the sub-series can only be chosen as cluster_ha (Cluster High Availability Edition).
  final pulumi.Input<String> subSeriesCode;
  /// The resource label.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RocketMQInstanceArgs].
  /// [aclInfo] The access control list for the instance. See `acl_info` below.
  /// [autoRenew] Whether to enable auto-renewal. This parameter is only applicable when the payment type for the instance is Subscription (prepaid).
  /// [autoRenewPeriod] Auto-renewal period. This parameter is only valid when auto-renewal is enabled. Unit: months.
  /// [autoRenewPeriodUnit] The minimum periodic unit for the duration of auto-renewal. This parameter is only valid when auto-renewal is enabled. Valid values: `Month`, `Year`.
  /// [commodityCode] Commodity code
  /// [instanceName] The name of instance
  /// [ipWhitelists] The ip whitelist.
  /// [networkInfo] Instance network configuration information See `network_info` below.
  /// [paymentType] The payment type for the instance. Alibaba Cloud Message Queue RocketMQ version supports two types of payment:
  /// [period] Duration of purchase. This parameter is only valid when the payment type for the instance is Subscription (prepaid).
  /// [periodUnit] The minimum periodic unit for the duration of purchase.
  /// [productInfo] product info See `product_info` below.
  /// [remark] Custom description
  /// [resourceGroupId] The ID of the resource group
  /// [seriesCode] The primary series encoding for the instance. For specific differences between the primary series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  /// [serviceCode] The code of the service code instance. The code of the RocketMQ is rmq.
  /// [software] Instance software information. See `software` below.
  /// [subSeriesCode] The sub-series encoding for the instance. For specific differences between the sub-series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  /// [tags] The resource label.
  RocketMQInstanceArgs({
    this.aclInfo,
    this.autoRenew,
    this.autoRenewPeriod,
    this.autoRenewPeriodUnit,
    this.commodityCode,
    this.instanceName,
    this.ipWhitelists,
    required this.networkInfo,
    required this.paymentType,
    this.period,
    this.periodUnit,
    this.productInfo,
    this.remark,
    this.resourceGroupId,
    required this.seriesCode,
    required this.serviceCode,
    this.software,
    required this.subSeriesCode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclInfo': ?pulumi.Input.mapOptionalInputValue<RocketMQInstanceAclInfo, Map<String, dynamic>>(aclInfo, (value) => value.toMap()),
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'autoRenewPeriodUnit': ?autoRenewPeriodUnit,
      'commodityCode': ?commodityCode,
      'instanceName': ?instanceName,
      'ipWhitelists': ?ipWhitelists,
      'networkInfo': pulumi.Input.mapInputValue<RocketMQInstanceNetworkInfo, Map<String, dynamic>>(networkInfo, (value) => value.toMap()),
      'paymentType': paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'productInfo': ?pulumi.Input.mapOptionalInputValue<RocketMQInstanceProductInfo, Map<String, dynamic>>(productInfo, (value) => value.toMap()),
      'remark': ?remark,
      'resourceGroupId': ?resourceGroupId,
      'seriesCode': seriesCode,
      'serviceCode': serviceCode,
      'software': ?pulumi.Input.mapOptionalInputValue<RocketMQInstanceSoftware, Map<String, dynamic>>(software, (value) => value.toMap()),
      'subSeriesCode': subSeriesCode,
      'tags': ?tags,
    };
  }

  factory RocketMQInstanceArgs.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceArgs(
      aclInfo: (() { final guardedValue = map['aclInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RocketMQInstanceAclInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoRenewPeriodUnit: (() { final guardedValue = map['autoRenewPeriodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commodityCode: (() { final guardedValue = map['commodityCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipWhitelists: (() { final guardedValue = map['ipWhitelists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkInfo: pulumi.Input.fromValue(RocketMQInstanceNetworkInfo.fromMap((map['networkInfo']! as Map).cast<String, dynamic>())),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productInfo: (() { final guardedValue = map['productInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RocketMQInstanceProductInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seriesCode: pulumi.Input.fromValue(map['seriesCode'] as String),
      serviceCode: pulumi.Input.fromValue(map['serviceCode'] as String),
      software: (() { final guardedValue = map['software']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RocketMQInstanceSoftware.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subSeriesCode: pulumi.Input.fromValue(map['subSeriesCode'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

