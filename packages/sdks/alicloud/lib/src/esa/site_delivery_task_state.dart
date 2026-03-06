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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskHttpDelivery>? httpDelivery;
  /// Kafka delivery configuration parameters. See `kafka_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskKafkaDelivery>? kafkaDelivery;
  /// OSS delivery configuration. See `oss_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskOssDelivery>? ossDelivery;
  /// S3/S3 compatible delivery configuration parameters. See `s3_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<SiteDeliveryTaskS3Delivery>? s3Delivery;
  /// The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  final pulumi.Input<String>? siteId;
  /// SLS delivery configuration. See `sls_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  const SiteDeliveryTaskState({
    this.businessType,
    this.dataCenter,
    this.deliveryType,
    this.discardRate,
    this.fieldName,
    this.httpDelivery,
    this.kafkaDelivery,
    this.ossDelivery,
    this.s3Delivery,
    this.siteId,
    this.slsDelivery,
    this.status,
    this.taskName,
  });

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
      businessType: (() { final guardedValue = map['businessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCenter: (() { final guardedValue = map['dataCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryType: (() { final guardedValue = map['deliveryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discardRate: (() { final guardedValue = map['discardRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      fieldName: (() { final guardedValue = map['fieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpDelivery: (() { final guardedValue = map['httpDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDeliveryTaskHttpDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kafkaDelivery: (() { final guardedValue = map['kafkaDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDeliveryTaskKafkaDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ossDelivery: (() { final guardedValue = map['ossDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDeliveryTaskOssDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Delivery: (() { final guardedValue = map['s3Delivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDeliveryTaskS3Delivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsDelivery: (() { final guardedValue = map['slsDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDeliveryTaskSlsDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

