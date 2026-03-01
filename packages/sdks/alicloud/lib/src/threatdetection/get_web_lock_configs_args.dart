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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? sourceIp,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      sourceIp = pulumi.Input.asOptionalInput<String>(sourceIp),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      sourceIp: map['sourceIp'] == null ? null : pulumi.Output.create<String>(map['sourceIp'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

