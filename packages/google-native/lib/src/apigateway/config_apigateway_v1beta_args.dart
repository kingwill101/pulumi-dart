// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_apigateway_v1beta.dart';
import 'apigateway_api_config_grpc_service_definition_apigateway_v1beta.dart';
import 'apigateway_api_config_open_api_document_apigateway_v1beta.dart';
import 'apigateway_gateway_config.dart';

/// {@template pulumi_apigateway_v1beta_config_apigateway_v1beta_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_config_apigateway_v1beta_args_doc}
class ConfigApigatewayV1betaArgs {
  /// Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  final pulumi.Input<String> apiConfigId;
  final pulumi.Input<String> apiId;

  /// Optional. Display name.
  final pulumi.Input<String>? displayName;

  /// Immutable. Gateway specific configuration.
  final pulumi.Input<ApigatewayGatewayConfig>? gatewayConfig;

  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  final pulumi.Input<String>? gatewayServiceAccount;

  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  final pulumi
      .Input<List<ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta>>?
      grpcServices;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  final pulumi.Input<List<ApigatewayApiConfigFileApigatewayV1beta>>?
      managedServiceConfigs;

  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  final pulumi.Input<List<ApigatewayApiConfigOpenApiDocumentApigatewayV1beta>>?
      openapiDocuments;
  final pulumi.Input<String>? project;

  /// Creates a new [ConfigApigatewayV1betaArgs].
  /// [apiConfigId] Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  /// [apiId] Required.
  /// [displayName] Optional. Display name.
  /// [gatewayConfig] Immutable. Gateway specific configuration.
  /// [gatewayServiceAccount] Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  /// [grpcServices] Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [managedServiceConfigs] Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// [openapiDocuments] Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  /// [project] Optional.
  ConfigApigatewayV1betaArgs({
    required String apiConfigId,
    required String apiId,
    String? displayName,
    ApigatewayGatewayConfig? gatewayConfig,
    String? gatewayServiceAccount,
    List<ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta>?
        grpcServices,
    Map<String, String>? labels,
    String? location,
    List<ApigatewayApiConfigFileApigatewayV1beta>? managedServiceConfigs,
    List<ApigatewayApiConfigOpenApiDocumentApigatewayV1beta>? openapiDocuments,
    String? project,
  })  : apiConfigId = pulumi.Input.asInput<String>(apiConfigId),
        apiId = pulumi.Input.asInput<String>(apiId),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        gatewayConfig = pulumi.Input.asOptionalInput<ApigatewayGatewayConfig>(
            gatewayConfig),
        gatewayServiceAccount =
            pulumi.Input.asOptionalInput<String>(gatewayServiceAccount),
        grpcServices = pulumi.Input.asOptionalInput<
                List<ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta>>(
            grpcServices),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        managedServiceConfigs = pulumi.Input.asOptionalInput<
                List<ApigatewayApiConfigFileApigatewayV1beta>>(
            managedServiceConfigs),
        openapiDocuments = pulumi.Input.asOptionalInput<
                List<ApigatewayApiConfigOpenApiDocumentApigatewayV1beta>>(
            openapiDocuments),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiConfigId'] = apiConfigId;
    map['apiId'] = apiId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gatewayConfigValue = gatewayConfig;
    if (gatewayConfigValue != null) {
      map['gatewayConfig'] = pulumi.Input.mapOptionalInputValue<
          ApigatewayGatewayConfig,
          Map<String, dynamic>>(gatewayConfigValue, (value) => value.toMap());
    }
    final gatewayServiceAccountValue = gatewayServiceAccount;
    if (gatewayServiceAccountValue != null) {
      map['gatewayServiceAccount'] = gatewayServiceAccountValue;
    }
    final grpcServicesValue = grpcServices;
    if (grpcServicesValue != null) {
      map['grpcServices'] = pulumi.Input.mapOptionalInputValue<
              List<ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta>,
              List<Map<String, dynamic>>>(
          grpcServicesValue,
          (value) => pulumi.Input.encodeList<
              ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final managedServiceConfigsValue = managedServiceConfigs;
    if (managedServiceConfigsValue != null) {
      map['managedServiceConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<ApigatewayApiConfigFileApigatewayV1beta>,
              List<Map<String, dynamic>>>(
          managedServiceConfigsValue,
          (value) => pulumi.Input.encodeList<
              ApigatewayApiConfigFileApigatewayV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final openapiDocumentsValue = openapiDocuments;
    if (openapiDocumentsValue != null) {
      map['openapiDocuments'] = pulumi.Input.mapOptionalInputValue<
              List<ApigatewayApiConfigOpenApiDocumentApigatewayV1beta>,
              List<Map<String, dynamic>>>(
          openapiDocumentsValue,
          (value) => pulumi.Input.encodeList<
              ApigatewayApiConfigOpenApiDocumentApigatewayV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConfigApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ConfigApigatewayV1betaArgs(
      apiConfigId: map['apiConfigId'] as String,
      apiId: map['apiId'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      gatewayConfig: map['gatewayConfig'] == null
          ? null
          : ApigatewayGatewayConfig.fromMap(
              (map['gatewayConfig'] as Map).cast<String, dynamic>()),
      gatewayServiceAccount: map['gatewayServiceAccount'] == null
          ? null
          : map['gatewayServiceAccount'] as String,
      grpcServices: map['grpcServices'] == null
          ? null
          : pulumi.Input.decodeList<
                  ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta>(
              map['grpcServices'],
              (value) =>
                  ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta
                      .fromMap((value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      managedServiceConfigs: map['managedServiceConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ApigatewayApiConfigFileApigatewayV1beta>(
              map['managedServiceConfigs'],
              (value) => ApigatewayApiConfigFileApigatewayV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      openapiDocuments: map['openapiDocuments'] == null
          ? null
          : pulumi.Input.decodeList<
                  ApigatewayApiConfigOpenApiDocumentApigatewayV1beta>(
              map['openapiDocuments'],
              (value) =>
                  ApigatewayApiConfigOpenApiDocumentApigatewayV1beta.fromMap(
                      (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
