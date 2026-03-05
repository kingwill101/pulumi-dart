// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_proxy_accesses_access.dart';

/// Result data returned by getEnterpriseProxyAccesses.
class GetEnterpriseProxyAccessesResult {
  /// A list of Proxy Access Entries. Each element contains the following attributes:
  final List<GetEnterpriseProxyAccessesAccess> accesses;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Proxy Access IDs.
  final List<String> ids;
  final String? outputFile;
  /// The ID of the security agent.
  final String proxyId;

  /// Creates a new [GetEnterpriseProxyAccessesResult].
  /// [accesses] A list of Proxy Access Entries. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Proxy Access IDs.
  /// [outputFile] Optional.
  /// [proxyId] The ID of the security agent.
  GetEnterpriseProxyAccessesResult({
    required this.accesses,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.proxyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accesses': pulumi.Input.encodeList<GetEnterpriseProxyAccessesAccess, Map<String, dynamic>>(accesses, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'proxyId': proxyId,
    };
  }

  factory GetEnterpriseProxyAccessesResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseProxyAccessesResult(
      accesses: pulumi.Input.decodeList<GetEnterpriseProxyAccessesAccess>(map['accesses']!, (value) => GetEnterpriseProxyAccessesAccess.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyId: map['proxyId'] as String,
    );
  }
}

