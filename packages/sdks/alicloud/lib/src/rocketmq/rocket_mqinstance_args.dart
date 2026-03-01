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
    pulumi.Output<RocketMQInstanceAclInfo>? aclInfo,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<String>? autoRenewPeriodUnit,
    pulumi.Output<String>? commodityCode,
    pulumi.Output<String>? instanceName,
    pulumi.Output<List<String>>? ipWhitelists,
    required pulumi.Output<RocketMQInstanceNetworkInfo> networkInfo,
    required pulumi.Output<String> paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<RocketMQInstanceProductInfo>? productInfo,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> seriesCode,
    required pulumi.Output<String> serviceCode,
    pulumi.Output<RocketMQInstanceSoftware>? software,
    required pulumi.Output<String> subSeriesCode,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aclInfo = pulumi.Input.asOptionalInput<RocketMQInstanceAclInfo>(aclInfo),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      autoRenewPeriodUnit = pulumi.Input.asOptionalInput<String>(autoRenewPeriodUnit),
      commodityCode = pulumi.Input.asOptionalInput<String>(commodityCode),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      ipWhitelists = pulumi.Input.asOptionalInput<List<String>>(ipWhitelists),
      networkInfo = pulumi.Input.asInput<RocketMQInstanceNetworkInfo>(networkInfo),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      productInfo = pulumi.Input.asOptionalInput<RocketMQInstanceProductInfo>(productInfo),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      seriesCode = pulumi.Input.asInput<String>(seriesCode),
      serviceCode = pulumi.Input.asInput<String>(serviceCode),
      software = pulumi.Input.asOptionalInput<RocketMQInstanceSoftware>(software),
      subSeriesCode = pulumi.Input.asInput<String>(subSeriesCode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      aclInfo: map['aclInfo'] == null ? null : pulumi.Output.create<RocketMQInstanceAclInfo>(RocketMQInstanceAclInfo.fromMap((map['aclInfo'] as Map).cast<String, dynamic>())),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      autoRenewPeriodUnit: map['autoRenewPeriodUnit'] == null ? null : pulumi.Output.create<String>(map['autoRenewPeriodUnit'] as String),
      commodityCode: map['commodityCode'] == null ? null : pulumi.Output.create<String>(map['commodityCode'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      ipWhitelists: map['ipWhitelists'] == null ? null : pulumi.Output.create<List<String>>((map['ipWhitelists'] as List).cast<String>()),
      networkInfo: pulumi.Output.create<RocketMQInstanceNetworkInfo>(RocketMQInstanceNetworkInfo.fromMap((map['networkInfo'] as Map).cast<String, dynamic>())),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      productInfo: map['productInfo'] == null ? null : pulumi.Output.create<RocketMQInstanceProductInfo>(RocketMQInstanceProductInfo.fromMap((map['productInfo'] as Map).cast<String, dynamic>())),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      seriesCode: pulumi.Output.create<String>(map['seriesCode'] as String),
      serviceCode: pulumi.Output.create<String>(map['serviceCode'] as String),
      software: map['software'] == null ? null : pulumi.Output.create<RocketMQInstanceSoftware>(RocketMQInstanceSoftware.fromMap((map['software'] as Map).cast<String, dynamic>())),
      subSeriesCode: pulumi.Output.create<String>(map['subSeriesCode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

