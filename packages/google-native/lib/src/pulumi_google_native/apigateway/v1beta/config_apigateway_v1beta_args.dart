// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_apigateway_v1beta.dart';
import 'apigateway_api_config_grpc_service_definition_apigateway_v1beta.dart';
import 'apigateway_api_config_open_api_document_apigateway_v1beta.dart';
import 'apigateway_gateway_config.dart';

/// The set of arguments for Config.
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

  ConfigApigatewayV1betaArgs({
    required this.apiConfigId,
    required this.apiId,
    this.displayName,
    this.gatewayConfig,
    this.gatewayServiceAccount,
    this.grpcServices,
    this.labels,
    this.location,
    this.managedServiceConfigs,
    this.openapiDocuments,
    this.project,
  });

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
      apiConfigId: pulumi.Input.asInput<String>(map['apiConfigId']),
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      gatewayConfig: pulumi.Input.asOptionalInput<ApigatewayGatewayConfig>(
          map['gatewayConfig']),
      gatewayServiceAccount:
          pulumi.Input.asOptionalInput<String>(map['gatewayServiceAccount']),
      grpcServices: pulumi.Input.asOptionalInput<
              List<ApigatewayApiConfigGrpcServiceDefinitionApigatewayV1beta>>(
          map['grpcServices']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      managedServiceConfigs: pulumi.Input.asOptionalInput<
              List<ApigatewayApiConfigFileApigatewayV1beta>>(
          map['managedServiceConfigs']),
      openapiDocuments: pulumi.Input.asOptionalInput<
              List<ApigatewayApiConfigOpenApiDocumentApigatewayV1beta>>(
          map['openapiDocuments']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
