// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_class_infos_info.dart';

/// Result data returned by getInstanceClassInfos.
class GetInstanceClassInfosResult {
  final String commodityCode;
  final String? dbInstanceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Rds instance class codes.
  final List<String> ids;
  /// A list of Rds available resource. Each element contains the following attributes:
  final List<GetInstanceClassInfosInfo>? infos;
  final String orderType;
  final String? outputFile;

  /// Creates a new [GetInstanceClassInfosResult].
  /// [commodityCode] Required.
  /// [dbInstanceId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Rds instance class codes.
  /// [infos] A list of Rds available resource. Each element contains the following attributes:
  /// [orderType] Required.
  /// [outputFile] Optional.
  GetInstanceClassInfosResult({
    required this.commodityCode,
    this.dbInstanceId,
    required this.id,
    required this.ids,
    this.infos,
    required this.orderType,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commodityCode': commodityCode,
      'dbInstanceId': ?dbInstanceId,
      'id': id,
      'ids': ids,
      'infos': ?infos == null ? null : pulumi.Input.encodeList<GetInstanceClassInfosInfo, Map<String, dynamic>>(infos!, (value) => value.toMap()),
      'orderType': orderType,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceClassInfosResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassInfosResult(
      commodityCode: map['commodityCode'] as String,
      dbInstanceId: map['dbInstanceId'] == null ? null : map['dbInstanceId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      infos: map['infos'] == null ? null : pulumi.Input.decodeList<GetInstanceClassInfosInfo>(map['infos'], (value) => GetInstanceClassInfosInfo.fromMap((value as Map).cast<String, dynamic>())),
      orderType: map['orderType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

