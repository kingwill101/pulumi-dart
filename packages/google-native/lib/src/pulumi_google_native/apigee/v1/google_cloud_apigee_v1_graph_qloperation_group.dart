// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_graph_qloperation_config.dart';

/// List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
class GoogleCloudApigeeV1GraphQLOperationGroup {
  /// Flag that specifies whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  final String? operationConfigType;

  /// List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  final List<GoogleCloudApigeeV1GraphQLOperationConfig> operationConfigs;

  GoogleCloudApigeeV1GraphQLOperationGroup({
    this.operationConfigType,
    required this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operationConfigTypeValue = operationConfigType;
    if (operationConfigTypeValue != null) {
      map['operationConfigType'] = operationConfigTypeValue;
    }
    map['operationConfigs'] = Input.encodeList<
        GoogleCloudApigeeV1GraphQLOperationConfig,
        Map<String, dynamic>>(operationConfigs, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudApigeeV1GraphQLOperationGroup.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GraphQLOperationGroup(
      operationConfigType: map['operationConfigType'] == null
          ? null
          : map['operationConfigType'] as String,
      operationConfigs:
          Input.decodeList<GoogleCloudApigeeV1GraphQLOperationConfig>(
              map['operationConfigs'],
              (value) => GoogleCloudApigeeV1GraphQLOperationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
