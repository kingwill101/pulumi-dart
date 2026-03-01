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
      configs: pulumi.Input.decodeList<GetWebLockConfigsConfig>(map['configs'], (value) => GetWebLockConfigsConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      remark: map['remark'] == null ? null : map['remark'] as String,
      sourceIp: map['sourceIp'] == null ? null : map['sourceIp'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

