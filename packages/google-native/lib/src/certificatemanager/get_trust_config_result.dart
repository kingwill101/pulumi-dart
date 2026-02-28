// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_response.dart';

/// Result data returned by getTrustConfig.
class GetTrustConfigResult {
  /// The creation timestamp of a TrustConfig.
  final String createTime;

  /// One or more paragraphs of text description of a TrustConfig.
  final String description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Set of labels associated with a TrustConfig.
  final Map<String, String> labels;

  /// A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  final String name;

  /// Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  final List<TrustStoreResponse> trustStores;

  /// The last update timestamp of a TrustConfig.
  final String updateTime;

  /// Creates a new [GetTrustConfigResult].
  /// [createTime] The creation timestamp of a TrustConfig.
  /// [description] One or more paragraphs of text description of a TrustConfig.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Set of labels associated with a TrustConfig.
  /// [name] A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  /// [trustStores] Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  /// [updateTime] The last update timestamp of a TrustConfig.
  GetTrustConfigResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.trustStores,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['trustStores'] =
        pulumi.Input.encodeList<TrustStoreResponse, Map<String, dynamic>>(
            trustStores, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTrustConfigResult.fromMap(Map<String, dynamic> map) {
    return GetTrustConfigResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      trustStores: pulumi.Input.decodeList<TrustStoreResponse>(
          map['trustStores'],
          (value) => TrustStoreResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
