// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_enterprise_proxies_get_enterprise_proxies_args_doc}
/// Arguments for getEnterpriseProxies.
/// {@endtemplate}
/// {@macro pulumi_dms_get_enterprise_proxies_get_enterprise_proxies_args_doc}
class GetEnterpriseProxiesArgs {
  /// A list of Proxy IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the tenant.
  final pulumi.Input<String>? tid;

  /// Creates a new [GetEnterpriseProxiesArgs].
  /// [ids] A list of Proxy IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tid] The ID of the tenant.
  GetEnterpriseProxiesArgs({
    List<String>? ids,
    String? outputFile,
    String? tid,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tid = pulumi.Input.asOptionalInput<String>(tid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tid': ?tid,
    };
  }

  factory GetEnterpriseProxiesArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseProxiesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tid: map['tid'] == null ? null : map['tid'] as String,
    );
  }
}

