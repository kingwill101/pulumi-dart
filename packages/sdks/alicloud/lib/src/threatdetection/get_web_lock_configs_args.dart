// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_web_lock_configs_get_web_lock_configs_args_doc}
/// Arguments for getWebLockConfigs.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_web_lock_configs_get_web_lock_configs_args_doc}
class GetWebLockConfigsArgs {
  /// A list of Web Lock Config IDs.
  final pulumi.Input<List<String>>? ids;
  /// The language of the content within the request and the response. Valid values: `zh`, `en`.
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The string that allows you to search for servers in fuzzy match mode. You can enter a server name or IP address.
  final pulumi.Input<String>? remark;
  /// The source IP address of the request.
  final pulumi.Input<String>? sourceIp;
  /// The protection status of the server that you want to query. Valid values: `on`, `off`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetWebLockConfigsArgs].
  /// [ids] A list of Web Lock Config IDs.
  /// [lang] The language of the content within the request and the response. Valid values: `zh`, `en`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [remark] The string that allows you to search for servers in fuzzy match mode. You can enter a server name or IP address.
  /// [sourceIp] The source IP address of the request.
  /// [status] The protection status of the server that you want to query. Valid values: `on`, `off`.
  GetWebLockConfigsArgs({
    this.ids,
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
      'ids': ?ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'remark': ?remark,
      'sourceIp': ?sourceIp,
      'status': ?status,
    };
  }

  factory GetWebLockConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetWebLockConfigsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIp: (() { final guardedValue = map['sourceIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

