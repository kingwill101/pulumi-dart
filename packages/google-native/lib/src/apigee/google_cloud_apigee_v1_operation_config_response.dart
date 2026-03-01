// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_operation_response.dart';
import 'google_cloud_apigee_v1_quota_response.dart';

/// Binds the resources in an API proxy or remote service with the allowed REST methods and associated quota enforcement.
class GoogleCloudApigeeV1OperationConfigResponse {
  /// Name of the API proxy or remote service with which the resources, methods, and quota are associated.
  final String apiSource;

  /// Custom attributes associated with the operation.
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;

  /// List of resource/method pairs for the API proxy or remote service to which quota will applied. **Note**: Currently, you can specify only a single resource/method pair. The call will fail if more than one resource/method pair is provided.
  final List<GoogleCloudApigeeV1OperationResponse> operations;

  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  final GoogleCloudApigeeV1QuotaResponse quota;

  /// Creates a new [GoogleCloudApigeeV1OperationConfigResponse].
  /// [apiSource] Name of the API proxy or remote service with which the resources, methods, and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [operations] List of resource/method pairs for the API proxy or remote service to which quota will applied. **Note**: Currently, you can specify only a single resource/method pair. The call will fail if more than one resource/method pair is provided.
  /// [quota] Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  GoogleCloudApigeeV1OperationConfigResponse({
    required this.apiSource,
    required this.attributes,
    required this.operations,
    required this.quota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': apiSource,
      'attributes':
          pulumi.Input.encodeList<
            GoogleCloudApigeeV1AttributeResponse,
            Map<String, dynamic>
          >(attributes, (value) => value.toMap()),
      'operations':
          pulumi.Input.encodeList<
            GoogleCloudApigeeV1OperationResponse,
            Map<String, dynamic>
          >(operations, (value) => value.toMap()),
      'quota': quota.toMap(),
    };
  }

  factory GoogleCloudApigeeV1OperationConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1OperationConfigResponse(
      apiSource: map['apiSource'] as String,
      attributes: pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(
        map['attributes'],
        (value) => GoogleCloudApigeeV1AttributeResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      operations: pulumi.Input.decodeList<GoogleCloudApigeeV1OperationResponse>(
        map['operations'],
        (value) => GoogleCloudApigeeV1OperationResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      quota: GoogleCloudApigeeV1QuotaResponse.fromMap(
        (map['quota'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
