// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_proxies_proxy.dart';

/// Result data returned by getEnterpriseProxies.
class GetEnterpriseProxiesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetEnterpriseProxiesProxy> proxies;
  final String? tid;

  /// Creates a new [GetEnterpriseProxiesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [proxies] Required.
  /// [tid] Optional.
  GetEnterpriseProxiesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.proxies,
    this.tid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'proxies': pulumi.Input.encodeList<GetEnterpriseProxiesProxy, Map<String, dynamic>>(proxies, (value) => value.toMap()),
      'tid': ?tid,
    };
  }

  factory GetEnterpriseProxiesResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseProxiesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      proxies: pulumi.Input.decodeList<GetEnterpriseProxiesProxy>(map['proxies'], (value) => GetEnterpriseProxiesProxy.fromMap((value as Map).cast<String, dynamic>())),
      tid: map['tid'] == null ? null : map['tid']! as String,
    );
  }
}

