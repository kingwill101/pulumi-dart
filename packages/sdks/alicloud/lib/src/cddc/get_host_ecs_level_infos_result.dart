// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_ecs_level_infos_info.dart';

/// Result data returned by getHostEcsLevelInfos.
class GetHostEcsLevelInfosResult {
  final String dbType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? imageCategory;
  final List<GetHostEcsLevelInfosInfo> infos;
  final String? outputFile;
  final String storageType;
  final String zoneId;

  /// Creates a new [GetHostEcsLevelInfosResult].
  /// [dbType] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageCategory] Optional.
  /// [infos] Required.
  /// [outputFile] Optional.
  /// [storageType] Required.
  /// [zoneId] Required.
  const GetHostEcsLevelInfosResult({
    required this.dbType,
    required this.id,
    this.imageCategory,
    required this.infos,
    this.outputFile,
    required this.storageType,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbType': dbType,
      'id': id,
      'imageCategory': ?imageCategory,
      'infos': pulumi.Input.encodeList<GetHostEcsLevelInfosInfo, Map<String, dynamic>>(infos, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'storageType': storageType,
      'zoneId': zoneId,
    };
  }

  factory GetHostEcsLevelInfosResult.fromMap(Map<String, dynamic> map) {
    return GetHostEcsLevelInfosResult(
      dbType: map['dbType'] as String,
      id: map['id'] as String,
      imageCategory: (() { final guardedValue = map['imageCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      infos: pulumi.Input.decodeList<GetHostEcsLevelInfosInfo>(map['infos']!, (value) => GetHostEcsLevelInfosInfo.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: map['storageType'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

