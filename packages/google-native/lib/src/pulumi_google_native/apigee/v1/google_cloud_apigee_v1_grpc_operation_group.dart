// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_grpc_operation_config.dart';

/// List of gRPC operation configuration details associated with Apigee API proxies.
class GoogleCloudApigeeV1GrpcOperationGroup {
  /// List of operation configurations for either Apigee API proxies that are associated with this API product.
  final List<GoogleCloudApigeeV1GrpcOperationConfig> operationConfigs;

  GoogleCloudApigeeV1GrpcOperationGroup({
    required this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['operationConfigs'] = pulumi.Input.encodeList<
        GoogleCloudApigeeV1GrpcOperationConfig,
        Map<String, dynamic>>(operationConfigs, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudApigeeV1GrpcOperationGroup.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GrpcOperationGroup(
      operationConfigs:
          pulumi.Input.decodeList<GoogleCloudApigeeV1GrpcOperationConfig>(
              map['operationConfigs'],
              (value) => GoogleCloudApigeeV1GrpcOperationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
