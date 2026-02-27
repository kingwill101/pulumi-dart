// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_resolver_response.dart';

/// Result data returned by getEkmConnection.
class GetEkmConnectionResult {
  /// The time at which the EkmConnection was created.
  final String createTime;

  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  final String cryptoSpacePath;

  /// Optional. Etag of the currently stored EkmConnection.
  final String etag;

  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  final String keyManagementMode;

  /// The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.
  final String name;

  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  final List<ServiceResolverResponse> serviceResolvers;

  GetEkmConnectionResult({
    required this.createTime,
    required this.cryptoSpacePath,
    required this.etag,
    required this.keyManagementMode,
    required this.name,
    required this.serviceResolvers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['cryptoSpacePath'] = cryptoSpacePath;
    map['etag'] = etag;
    map['keyManagementMode'] = keyManagementMode;
    map['name'] = name;
    map['serviceResolvers'] =
        pulumi.Input.encodeList<ServiceResolverResponse, Map<String, dynamic>>(
            serviceResolvers, (value) => value.toMap());
    return map;
  }

  factory GetEkmConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEkmConnectionResult(
      createTime: map['createTime'] as String,
      cryptoSpacePath: map['cryptoSpacePath'] as String,
      etag: map['etag'] as String,
      keyManagementMode: map['keyManagementMode'] as String,
      name: map['name'] as String,
      serviceResolvers: pulumi.Input.decodeList<ServiceResolverResponse>(
          map['serviceResolvers'],
          (value) => ServiceResolverResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
