// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_operation_config.dart';

/// List of operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
class GoogleCloudApigeeV1OperationGroup {
  /// Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  final String? operationConfigType;
  /// List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  final List<GoogleCloudApigeeV1OperationConfig> operationConfigs;

  /// Creates a new [GoogleCloudApigeeV1OperationGroup].
  /// [operationConfigType] Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// [operationConfigs] List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  GoogleCloudApigeeV1OperationGroup({
    this.operationConfigType,
    required this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationConfigType': ?operationConfigType,
      'operationConfigs': pulumi.Input.encodeList<GoogleCloudApigeeV1OperationConfig, Map<String, dynamic>>(operationConfigs, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1OperationGroup.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1OperationGroup(
      operationConfigType: map['operationConfigType'] == null ? null : map['operationConfigType'] as String,
      operationConfigs: pulumi.Input.decodeList<GoogleCloudApigeeV1OperationConfig>(map['operationConfigs'], (value) => GoogleCloudApigeeV1OperationConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

