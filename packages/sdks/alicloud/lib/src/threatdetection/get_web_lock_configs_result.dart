// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_lock_configs_config.dart';

/// Result data returned by getWebLockConfigs.
class GetWebLockConfigsResult {
  /// A list of Web Lock Config Entries. Each element contains the following attributes:
  final List<GetWebLockConfigsConfig> configs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Web Lock Config IDs.
  final List<String> ids;
  final String? lang;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? remark;
  final String? sourceIp;
  final String? status;

  /// Creates a new [GetWebLockConfigsResult].
  /// [configs] A list of Web Lock Config Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Web Lock Config IDs.
  /// [lang] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [remark] Optional.
  /// [sourceIp] Optional.
  /// [status] Optional.
  GetWebLockConfigsResult({
    required this.configs,
    required this.id,
    required this.ids,
    this.lang,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.remark,
    this.sourceIp,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.encodeList<GetWebLockConfigsConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'remark': ?remark,
      'sourceIp': ?sourceIp,
      'status': ?status,
    };
  }

  factory GetWebLockConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetWebLockConfigsResult(
      configs: pulumi.Input.decodeList<GetWebLockConfigsConfig>(map['configs']!, (value) => GetWebLockConfigsConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceIp: (() { final guardedValue = map['sourceIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

