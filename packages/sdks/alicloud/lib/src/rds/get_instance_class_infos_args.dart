// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_class_infos_info.dart';

/// {@template pulumi_rds_get_instance_class_infos_get_instance_class_infos_args_doc}
/// Arguments for getInstanceClassInfos.
/// {@endtemplate}
/// {@macro pulumi_rds_get_instance_class_infos_get_instance_class_infos_args_doc}
class GetInstanceClassInfosArgs {
  /// The commodity code of the instance. Valid values:
  /// * **bards**: The instance is a pay-as-you-go primary instance. This value is available on the China site (aliyun.com).
  /// * **rds**: The instance is a subscription primary instance. This value is available on the China site (aliyun.com).
  /// * **rords**: The instance is a pay-as-you-go read-only instance. This value is available on the China site (aliyun.com).
  /// * **rds_rordspre_public_cn**: The instance is a subscription read-only instance. This value is available on the China site (aliyun.com).
  /// * **bards_intl**: The instance is a pay-as-you-go primary instance. This value is available on the International site (alibabacloud.com).
  /// * **rds_intl**: The instance is a subscription primary instance. This value is available on the International site (alibabacloud.com).
  /// * **rords_intl**: The instance is a pay-as-you-go read-only instance. This value is available on the International site (alibabacloud.com).
  /// * **rds_rordspre_public_intl**: The instance is a subscription read-only instance. This value is available on the International site (alibabacloud.com).
  final pulumi.Input<String> commodityCode;
  /// The ID of the primary instance.
  final pulumi.Input<String>? dbInstanceId;
  /// A list of Rds available resource. Each element contains the following attributes:
  final pulumi.Input<List<GetInstanceClassInfosInfo>>? infos;
  /// FThe type of order that you want to query. Valid values:
  /// * **BUY**: specifies the query orders that are used to purchase instances.
  /// * **UPGRADE**: specifies the query orders that are used to change the specifications of instances.
  /// * **RENEW**: specifies the query orders that are used to renew instances.
  /// * **CONVERT**: specifies the query orders that are used to change the billing methods of instances.
  final pulumi.Input<String> orderType;
  /// File name where to save data source results (after running `pulumi up`).
  ///
  /// > **NOTE**: If you use the CommodityCode parameter to query the instance types that are available to read-only instances, you must specify the DBInstanceId parameter.
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstanceClassInfosArgs].
  /// [commodityCode] The commodity code of the instance. Valid values:
  /// [dbInstanceId] The ID of the primary instance.
  /// [infos] A list of Rds available resource. Each element contains the following attributes:
  /// [orderType] FThe type of order that you want to query. Valid values:
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  GetInstanceClassInfosArgs({
    required this.commodityCode,
    this.dbInstanceId,
    this.infos,
    required this.orderType,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commodityCode': commodityCode,
      'dbInstanceId': ?dbInstanceId,
      'infos': ?pulumi.Input.mapOptionalInputValue<List<GetInstanceClassInfosInfo>, List<Map<String, dynamic>>>(infos, (value) => pulumi.Input.encodeList<GetInstanceClassInfosInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orderType': orderType,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceClassInfosArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassInfosArgs(
      commodityCode: (map['commodityCode'] as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      infos: map['infos'] == null ? null : (pulumi.Input.decodeList<GetInstanceClassInfosInfo>(map['infos'], (value) => GetInstanceClassInfosInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      orderType: (map['orderType'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

