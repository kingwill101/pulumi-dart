// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_graph_qloperation_response.dart';
import 'google_cloud_apigee_v1_quota_response.dart';

/// Binds the resources in a proxy or remote service with the GraphQL operation and its associated quota enforcement.
class GoogleCloudApigeeV1GraphQLOperationConfigResponse {
  /// Name of the API proxy endpoint or remote service with which the GraphQL operation and quota are associated.
  final String apiSource;

  /// Custom attributes associated with the operation.
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;

  /// List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name. **Note**: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  final List<GoogleCloudApigeeV1GraphQLOperationResponse> operations;

  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  final GoogleCloudApigeeV1QuotaResponse quota;

  GoogleCloudApigeeV1GraphQLOperationConfigResponse({
    required this.apiSource,
    required this.attributes,
    required this.operations,
    required this.quota,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiSource'] = apiSource;
    map['attributes'] = Input.encodeList<GoogleCloudApigeeV1AttributeResponse,
        Map<String, dynamic>>(attributes, (value) => value.toMap());
    map['operations'] = Input.encodeList<
        GoogleCloudApigeeV1GraphQLOperationResponse,
        Map<String, dynamic>>(operations, (value) => value.toMap());
    map['quota'] = quota.toMap();
    return map;
  }

  factory GoogleCloudApigeeV1GraphQLOperationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GraphQLOperationConfigResponse(
      apiSource: map['apiSource'] as String,
      attributes: Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(
          map['attributes'],
          (value) => GoogleCloudApigeeV1AttributeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      operations: Input.decodeList<GoogleCloudApigeeV1GraphQLOperationResponse>(
          map['operations'],
          (value) => GoogleCloudApigeeV1GraphQLOperationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      quota: GoogleCloudApigeeV1QuotaResponse.fromMap(
          (map['quota'] as Map).cast<String, dynamic>()),
    );
  }
}
