import 'package:pulumi/pulumi.dart' as pulumi;
import 'rocket_mqinstance_acl_info.dart';
import 'rocket_mqinstance_args.dart';
import 'rocket_mqinstance_network_info.dart';
import 'rocket_mqinstance_product_info.dart';
import 'rocket_mqinstance_software.dart';
import 'rocket_mqinstance_state.dart';

/// ## Import
///
/// RocketMQ Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/rocketMQInstance:RocketMQInstance example <id>
/// ```
class RocketMQInstance extends pulumi.CustomResource {
  /// The access control list for the instance. See `acl_info` below.
  late final pulumi.Output<RocketMQInstanceAclInfo> aclInfo;

  /// Whether to enable auto-renewal. This parameter is only applicable when the payment type for the instance is Subscription (prepaid).
  /// - true: Enable auto-renewal
  /// - false: Disable auto-renewal
  late final pulumi.Output<bool?> autoRenew;

  /// Auto-renewal period. This parameter is only valid when auto-renewal is enabled. Unit: months.
  ///
  /// The values can be as follows:
  /// - Monthly renewal: 1, 2, 3, 6, 12
  late final pulumi.Output<int?> autoRenewPeriod;

  /// The minimum periodic unit for the duration of auto-renewal. This parameter is only valid when auto-renewal is enabled. Valid values: `Month`, `Year`.
  late final pulumi.Output<String> autoRenewPeriodUnit;

  /// Commodity code
  ///
  /// ons_rmqsub_public_cn: Package year and month instance
  ///
  /// ons_rmqpost_public_cn: Pay-As-You-Go instance
  ///
  /// Next: Serverless instances
  late final pulumi.Output<String> commodityCode;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The name of instance
  late final pulumi.Output<String?> instanceName;

  /// The ip whitelist.
  late final pulumi.Output<List<String>> ipWhitelists;

  /// Instance network configuration information See `network_info` below.
  late final pulumi.Output<RocketMQInstanceNetworkInfo> networkInfo;

  /// The payment type for the instance. Alibaba Cloud Message Queue RocketMQ version supports two types of payment:
  ///
  /// The parameter values are as follows:
  /// - PayAsYouGo: Pay-as-you-go, a post-payment model where you pay after usage.
  /// - Subscription: Subscription-based, a pre-payment model where you pay before usage.
  ///
  /// For more information, please refer to [Billing Methods](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/overview-2).
  late final pulumi.Output<String> paymentType;

  /// Duration of purchase. This parameter is only valid when the payment type for the instance is Subscription (prepaid).
  ///
  /// The values can be as follows:
  /// - Monthly purchase: 1, 2, 3, 4, 5, 6
  /// - Annual purchase: 1, 2, 3
  late final pulumi.Output<int?> period;

  /// The minimum periodic unit for the duration of purchase.
  ///
  /// The parameter values are as follows:
  /// - Month: Purchase on a monthly basis
  /// - Year: Purchase on an annual basis
  late final pulumi.Output<String> periodUnit;

  /// product info See `product_info` below.
  late final pulumi.Output<RocketMQInstanceProductInfo?> productInfo;

  /// (Available since v1.245.0) The ID of the region in which the instance resides.
  late final pulumi.Output<String> regionId;

  /// Custom description
  late final pulumi.Output<String?> remark;

  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;

  /// The primary series encoding for the instance. For specific differences between the primary series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  ///
  /// The parameter values are as follows:
  /// - standard: Standard Edition
  /// - ultimate: Platinum Edition
  /// - professional: Professional Edition
  late final pulumi.Output<String> seriesCode;

  /// The code of the service code instance. The code of the RocketMQ is rmq.
  late final pulumi.Output<String> serviceCode;

  /// Instance software information. See `software` below.
  late final pulumi.Output<RocketMQInstanceSoftware> software;

  /// The status of the instance
  late final pulumi.Output<String> status;

  /// The sub-series encoding for the instance. For specific differences between the sub-series, please refer to [Product Selection](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-selection).
  ///
  /// The parameter values are as follows:
  /// - cluster_ha: Cluster High Availability Edition
  /// - single_node: Single Node Testing Edition
  /// - serverless：Serverless instance
  /// **NOTE:** From version 1.245.0, `sub_series_code` can be set to `serverless`.
  /// When selecting the primary series as ultimate (Platinum Edition), the sub-series can only be chosen as cluster_ha (Cluster High Availability Edition).
  late final pulumi.Output<String> subSeriesCode;

  /// The resource label.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [RocketMQInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RocketMQInstance]. {@macro pulumi_rocketmq_rocket_mqinstance_rocket_mqinstance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RocketMQInstance(
    String name, {
    RocketMQInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/rocketMQInstance:RocketMQInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclInfo = registerOutput<RocketMQInstanceAclInfo>(
      'aclInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceAclInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    autoRenewPeriodUnit = registerOutput<String>('autoRenewPeriodUnit');
    commodityCode = registerOutput<String>('commodityCode');
    createTime = registerOutput<String>('createTime');
    instanceName = registerOutput<String?>('instanceName');
    ipWhitelists = registerOutput<List<String>>('ipWhitelists');
    networkInfo = registerOutput<RocketMQInstanceNetworkInfo>(
      'networkInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceNetworkInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String>('periodUnit');
    productInfo = registerOutput<RocketMQInstanceProductInfo?>(
      'productInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceProductInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String?>('remark');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    seriesCode = registerOutput<String>('seriesCode');
    serviceCode = registerOutput<String>('serviceCode');
    software = registerOutput<RocketMQInstanceSoftware>(
      'software',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceSoftware.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    subSeriesCode = registerOutput<String>('subSeriesCode');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [RocketMQInstance] resource's state with the given [name] and [id].
  static RocketMQInstance get(
    String name,
    pulumi.Input<String> id, {
    RocketMQInstanceState? state,
  }) {
    return RocketMQInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RocketMQInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/rocketMQInstance:RocketMQInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclInfo = registerOutput<RocketMQInstanceAclInfo>(
      'aclInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceAclInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    autoRenewPeriodUnit = registerOutput<String>('autoRenewPeriodUnit');
    commodityCode = registerOutput<String>('commodityCode');
    createTime = registerOutput<String>('createTime');
    instanceName = registerOutput<String?>('instanceName');
    ipWhitelists = registerOutput<List<String>>('ipWhitelists');
    networkInfo = registerOutput<RocketMQInstanceNetworkInfo>(
      'networkInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceNetworkInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String>('periodUnit');
    productInfo = registerOutput<RocketMQInstanceProductInfo?>(
      'productInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceProductInfo.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    regionId = registerOutput<String>('regionId');
    remark = registerOutput<String?>('remark');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    seriesCode = registerOutput<String>('seriesCode');
    serviceCode = registerOutput<String>('serviceCode');
    software = registerOutput<RocketMQInstanceSoftware>(
      'software',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RocketMQInstanceSoftware.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    subSeriesCode = registerOutput<String>('subSeriesCode');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
