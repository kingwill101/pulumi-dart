// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'apigateway_api_config_file.dart';
import 'apigateway_api_config_grpc_service_definition.dart';
import 'apigateway_api_config_open_api_document.dart';

/// The set of arguments for Config.
class ConfigArgs {
  /// Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  final Input<String> apiConfigId;
  final Input<String> apiId;

  /// Optional. Display name.
  final Input<String>? displayName;

  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  final Input<String>? gatewayServiceAccount;

  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  final Input<List<ApigatewayApiConfigGrpcServiceDefinition>>? grpcServices;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  final Input<List<ApigatewayApiConfigFile>>? managedServiceConfigs;

  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  final Input<List<ApigatewayApiConfigOpenApiDocument>>? openapiDocuments;
  final Input<String>? project;

  ConfigArgs({
    required this.apiConfigId,
    required this.apiId,
    this.displayName,
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
    final gatewayServiceAccountValue = gatewayServiceAccount;
    if (gatewayServiceAccountValue != null) {
      map['gatewayServiceAccount'] = gatewayServiceAccountValue;
    }
    final grpcServicesValue = grpcServices;
    if (grpcServicesValue != null) {
      map['grpcServices'] = Input.mapOptionalInputValue<
              List<ApigatewayApiConfigGrpcServiceDefinition>,
              List<Map<String, dynamic>>>(
          grpcServicesValue,
          (value) => Input.encodeList<ApigatewayApiConfigGrpcServiceDefinition,
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
      map['managedServiceConfigs'] = Input.mapOptionalInputValue<
              List<ApigatewayApiConfigFile>, List<Map<String, dynamic>>>(
          managedServiceConfigsValue,
          (value) =>
              Input.encodeList<ApigatewayApiConfigFile, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final openapiDocumentsValue = openapiDocuments;
    if (openapiDocumentsValue != null) {
      map['openapiDocuments'] = Input.mapOptionalInputValue<
              List<ApigatewayApiConfigOpenApiDocument>,
              List<Map<String, dynamic>>>(
          openapiDocumentsValue,
          (value) => Input.encodeList<ApigatewayApiConfigOpenApiDocument,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      apiConfigId: Input.asInput<String>(map['apiConfigId']),
      apiId: Input.asInput<String>(map['apiId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gatewayServiceAccount:
          Input.asOptionalInput<String>(map['gatewayServiceAccount']),
      grpcServices:
          Input.asOptionalInput<List<ApigatewayApiConfigGrpcServiceDefinition>>(
              map['grpcServices']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      managedServiceConfigs:
          Input.asOptionalInput<List<ApigatewayApiConfigFile>>(
              map['managedServiceConfigs']),
      openapiDocuments:
          Input.asOptionalInput<List<ApigatewayApiConfigOpenApiDocument>>(
              map['openapiDocuments']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
