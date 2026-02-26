// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'apigateway_api_config_file_response2.dart';
import 'apigateway_api_config_grpc_service_definition_response2.dart';
import 'apigateway_api_config_open_api_document_response2.dart';
import 'apigateway_gateway_config_response.dart';

/// Result data returned by getConfig.
class GetConfigResult2 {
  /// Created time.
  final String createTime;

  /// Optional. Display name.
  final String displayName;

  /// Immutable. Gateway specific configuration.
  final ApigatewayGatewayConfigResponse gatewayConfig;

  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  final String gatewayServiceAccount;

  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  final List<ApigatewayApiConfigGrpcServiceDefinitionResponse2> grpcServices;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  final List<ApigatewayApiConfigFileResponse2> managedServiceConfigs;

  /// Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  final String name;

  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  final List<ApigatewayApiConfigOpenApiDocumentResponse2> openapiDocuments;

  /// The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  final String serviceConfigId;

  /// State of the API Config.
  final String state;

  /// Updated time.
  final String updateTime;

  GetConfigResult2({
    required this.createTime,
    required this.displayName,
    required this.gatewayConfig,
    required this.gatewayServiceAccount,
    required this.grpcServices,
    required this.labels,
    required this.managedServiceConfigs,
    required this.name,
    required this.openapiDocuments,
    required this.serviceConfigId,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['gatewayConfig'] = gatewayConfig.toMap();
    map['gatewayServiceAccount'] = gatewayServiceAccount;
    map['grpcServices'] = Input.encodeList<
        ApigatewayApiConfigGrpcServiceDefinitionResponse2,
        Map<String, dynamic>>(grpcServices, (value) => value.toMap());
    map['labels'] = labels;
    map['managedServiceConfigs'] = Input.encodeList<
        ApigatewayApiConfigFileResponse2,
        Map<String, dynamic>>(managedServiceConfigs, (value) => value.toMap());
    map['name'] = name;
    map['openapiDocuments'] = Input.encodeList<
        ApigatewayApiConfigOpenApiDocumentResponse2,
        Map<String, dynamic>>(openapiDocuments, (value) => value.toMap());
    map['serviceConfigId'] = serviceConfigId;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConfigResult2.fromMap(Map<String, dynamic> map) {
    return GetConfigResult2(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      gatewayConfig: ApigatewayGatewayConfigResponse.fromMap(
          (map['gatewayConfig'] as Map).cast<String, dynamic>()),
      gatewayServiceAccount: map['gatewayServiceAccount'] as String,
      grpcServices:
          Input.decodeList<ApigatewayApiConfigGrpcServiceDefinitionResponse2>(
              map['grpcServices'],
              (value) =>
                  ApigatewayApiConfigGrpcServiceDefinitionResponse2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      managedServiceConfigs: Input.decodeList<ApigatewayApiConfigFileResponse2>(
          map['managedServiceConfigs'],
          (value) => ApigatewayApiConfigFileResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      openapiDocuments:
          Input.decodeList<ApigatewayApiConfigOpenApiDocumentResponse2>(
              map['openapiDocuments'],
              (value) => ApigatewayApiConfigOpenApiDocumentResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceConfigId: map['serviceConfigId'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
