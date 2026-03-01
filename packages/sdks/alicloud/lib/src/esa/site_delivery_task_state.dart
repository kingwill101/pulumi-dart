// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_delivery_task_http_delivery.dart';
import 'site_delivery_task_kafka_delivery.dart';
import 'site_delivery_task_oss_delivery.dart';
import 'site_delivery_task_s3_delivery.dart';
import 'site_delivery_task_sls_delivery.dart';

/// Input properties used for looking up and filtering SiteDeliveryTask resources.
class SiteDeliveryTaskState {
  /// Real-time log type. Valid values:
  /// - `dcdn_log_access_l1 (default)`: access log.
  final pulumi.Input<String>? businessType;
  /// Data Center. Values:
  final pulumi.Input<String>? dataCenter;
  /// Delivery Type:
  final pulumi.Input<String>? deliveryType;
  /// If the discard rate is not filled, the default value is 0.
  final pulumi.Input<double>? discardRate;
  /// The list of delivery fields to be modified, separated by commas.
  final pulumi.Input<String>? fieldName;
  /// HTTP delivery configuration parameters. See `http_delivery` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskHttpDelivery>? httpDelivery;
  /// Kafka delivery configuration parameters. See `kafka_delivery` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskKafkaDelivery>? kafkaDelivery;
  /// OSS delivery configuration. See `oss_delivery` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskOssDelivery>? ossDelivery;
  /// S3/S3 compatible delivery configuration parameters. See `s3_delivery` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskS3Delivery>? s3Delivery;
  /// The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  final pulumi.Input<String>? siteId;
  /// SLS delivery configuration. See `sls_delivery` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskSlsDelivery>? slsDelivery;
  /// Task status, value:
  final pulumi.Input<String>? status;
  /// The task name.
  final pulumi.Input<String>? taskName;

  /// Creates a new [SiteDeliveryTaskState].
  /// [businessType] Real-time log type. Valid values:
  /// [dataCenter] Data Center. Values:
  /// [deliveryType] Delivery Type:
  /// [discardRate] If the discard rate is not filled, the default value is 0.
  /// [fieldName] The list of delivery fields to be modified, separated by commas.
  /// [httpDelivery] HTTP delivery configuration parameters. See `http_delivery` below.
  /// [kafkaDelivery] Kafka delivery configuration parameters. See `kafka_delivery` below.
  /// [ossDelivery] OSS delivery configuration. See `oss_delivery` below.
  /// [s3Delivery] S3/S3 compatible delivery configuration parameters. See `s3_delivery` below.
  /// [siteId] The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  /// [slsDelivery] SLS delivery configuration. See `sls_delivery` below.
  /// [status] Task status, value:
  /// [taskName] The task name.
  SiteDeliveryTaskState({
    pulumi.Output<String>? businessType,
    pulumi.Output<String>? dataCenter,
    pulumi.Output<String>? deliveryType,
    pulumi.Output<double>? discardRate,
    pulumi.Output<String>? fieldName,
    pulumi.Output<SiteDeliveryTaskHttpDelivery>? httpDelivery,
    pulumi.Output<SiteDeliveryTaskKafkaDelivery>? kafkaDelivery,
    pulumi.Output<SiteDeliveryTaskOssDelivery>? ossDelivery,
    pulumi.Output<SiteDeliveryTaskS3Delivery>? s3Delivery,
    pulumi.Output<String>? siteId,
    pulumi.Output<SiteDeliveryTaskSlsDelivery>? slsDelivery,
    pulumi.Output<String>? status,
    pulumi.Output<String>? taskName,
  }) :
      businessType = pulumi.Input.asOptionalInput<String>(businessType),
      dataCenter = pulumi.Input.asOptionalInput<String>(dataCenter),
      deliveryType = pulumi.Input.asOptionalInput<String>(deliveryType),
      discardRate = pulumi.Input.asOptionalInput<double>(discardRate),
      fieldName = pulumi.Input.asOptionalInput<String>(fieldName),
      httpDelivery = pulumi.Input.asOptionalInput<SiteDeliveryTaskHttpDelivery>(httpDelivery),
      kafkaDelivery = pulumi.Input.asOptionalInput<SiteDeliveryTaskKafkaDelivery>(kafkaDelivery),
      ossDelivery = pulumi.Input.asOptionalInput<SiteDeliveryTaskOssDelivery>(ossDelivery),
      s3Delivery = pulumi.Input.asOptionalInput<SiteDeliveryTaskS3Delivery>(s3Delivery),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      slsDelivery = pulumi.Input.asOptionalInput<SiteDeliveryTaskSlsDelivery>(slsDelivery),
      status = pulumi.Input.asOptionalInput<String>(status),
      taskName = pulumi.Input.asOptionalInput<String>(taskName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessType': ?businessType,
      'dataCenter': ?dataCenter,
      'deliveryType': ?deliveryType,
      'discardRate': ?discardRate,
      'fieldName': ?fieldName,
      'httpDelivery': ?pulumi.Input.mapOptionalInputValue<SiteDeliveryTaskHttpDelivery, Map<String, dynamic>>(httpDelivery, (value) => value.toMap()),
      'kafkaDelivery': ?pulumi.Input.mapOptionalInputValue<SiteDeliveryTaskKafkaDelivery, Map<String, dynamic>>(kafkaDelivery, (value) => value.toMap()),
      'ossDelivery': ?pulumi.Input.mapOptionalInputValue<SiteDeliveryTaskOssDelivery, Map<String, dynamic>>(ossDelivery, (value) => value.toMap()),
      's3Delivery': ?pulumi.Input.mapOptionalInputValue<SiteDeliveryTaskS3Delivery, Map<String, dynamic>>(s3Delivery, (value) => value.toMap()),
      'siteId': ?siteId,
      'slsDelivery': ?pulumi.Input.mapOptionalInputValue<SiteDeliveryTaskSlsDelivery, Map<String, dynamic>>(slsDelivery, (value) => value.toMap()),
      'status': ?status,
      'taskName': ?taskName,
    };
  }

  factory SiteDeliveryTaskState.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskState(
      businessType: map['businessType'] == null ? null : pulumi.Output.create<String>(map['businessType'] as String),
      dataCenter: map['dataCenter'] == null ? null : pulumi.Output.create<String>(map['dataCenter'] as String),
      deliveryType: map['deliveryType'] == null ? null : pulumi.Output.create<String>(map['deliveryType'] as String),
      discardRate: map['discardRate'] == null ? null : pulumi.Output.create<double>(map['discardRate'] as double),
      fieldName: map['fieldName'] == null ? null : pulumi.Output.create<String>(map['fieldName'] as String),
      httpDelivery: map['httpDelivery'] == null ? null : pulumi.Output.create<SiteDeliveryTaskHttpDelivery>(SiteDeliveryTaskHttpDelivery.fromMap((map['httpDelivery'] as Map).cast<String, dynamic>())),
      kafkaDelivery: map['kafkaDelivery'] == null ? null : pulumi.Output.create<SiteDeliveryTaskKafkaDelivery>(SiteDeliveryTaskKafkaDelivery.fromMap((map['kafkaDelivery'] as Map).cast<String, dynamic>())),
      ossDelivery: map['ossDelivery'] == null ? null : pulumi.Output.create<SiteDeliveryTaskOssDelivery>(SiteDeliveryTaskOssDelivery.fromMap((map['ossDelivery'] as Map).cast<String, dynamic>())),
      s3Delivery: map['s3Delivery'] == null ? null : pulumi.Output.create<SiteDeliveryTaskS3Delivery>(SiteDeliveryTaskS3Delivery.fromMap((map['s3Delivery'] as Map).cast<String, dynamic>())),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      slsDelivery: map['slsDelivery'] == null ? null : pulumi.Output.create<SiteDeliveryTaskSlsDelivery>(SiteDeliveryTaskSlsDelivery.fromMap((map['slsDelivery'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      taskName: map['taskName'] == null ? null : pulumi.Output.create<String>(map['taskName'] as String),
    );
  }
}

