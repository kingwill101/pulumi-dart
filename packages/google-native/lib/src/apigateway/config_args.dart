// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file.dart';
import 'apigateway_api_config_grpc_service_definition.dart';
import 'apigateway_api_config_open_api_document.dart';

/// {@template pulumi_apigateway_v1_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_config_args_doc}
class ConfigArgs {
  /// Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  final pulumi.Input<String> apiConfigId;
  final pulumi.Input<String> apiId;

  /// Optional. Display name.
  final pulumi.Input<String>? displayName;

  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  final pulumi.Input<String>? gatewayServiceAccount;

  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  final pulumi.Input<List<ApigatewayApiConfigGrpcServiceDefinition>>?
      grpcServices;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  final pulumi.Input<List<ApigatewayApiConfigFile>>? managedServiceConfigs;

  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  final pulumi.Input<List<ApigatewayApiConfigOpenApiDocument>>?
      openapiDocuments;
  final pulumi.Input<String>? project;

  /// Creates a new [ConfigArgs].
  /// [apiConfigId] Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  /// [apiId] Required.
  /// [displayName] Optional. Display name.
  /// [gatewayServiceAccount] Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  /// [grpcServices] Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [managedServiceConfigs] Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// [openapiDocuments] Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  /// [project] Optional.
  ConfigArgs({
    required String apiConfigId,
    required String apiId,
    String? displayName,
    String? gatewayServiceAccount,
    List<ApigatewayApiConfigGrpcServiceDefinition>? grpcServices,
    Map<String, String>? labels,
    String? location,
    List<ApigatewayApiConfigFile>? managedServiceConfigs,
    List<ApigatewayApiConfigOpenApiDocument>? openapiDocuments,
    String? project,
  })  : apiConfigId = pulumi.Input.asInput<String>(apiConfigId),
        apiId = pulumi.Input.asInput<String>(apiId),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        gatewayServiceAccount =
            pulumi.Input.asOptionalInput<String>(gatewayServiceAccount),
        grpcServices = pulumi.Input.asOptionalInput<
            List<ApigatewayApiConfigGrpcServiceDefinition>>(grpcServices),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        managedServiceConfigs =
            pulumi.Input.asOptionalInput<List<ApigatewayApiConfigFile>>(
                managedServiceConfigs),
        openapiDocuments = pulumi.Input.asOptionalInput<
            List<ApigatewayApiConfigOpenApiDocument>>(openapiDocuments),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      map['grpcServices'] = pulumi.Input.mapOptionalInputValue<
              List<ApigatewayApiConfigGrpcServiceDefinition>,
              List<Map<String, dynamic>>>(
          grpcServicesValue,
          (value) => pulumi.Input.encodeList<
              ApigatewayApiConfigGrpcServiceDefinition,
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
              List<ApigatewayApiConfigFile>, List<Map<String, dynamic>>>(
          managedServiceConfigsValue,
          (value) => pulumi.Input.encodeList<ApigatewayApiConfigFile,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final openapiDocumentsValue = openapiDocuments;
    if (openapiDocumentsValue != null) {
      map['openapiDocuments'] = pulumi.Input.mapOptionalInputValue<
              List<ApigatewayApiConfigOpenApiDocument>,
              List<Map<String, dynamic>>>(
          openapiDocumentsValue,
          (value) => pulumi.Input.encodeList<ApigatewayApiConfigOpenApiDocument,
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
      apiConfigId: map['apiConfigId'] as String,
      apiId: map['apiId'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      gatewayServiceAccount: map['gatewayServiceAccount'] == null
          ? null
          : map['gatewayServiceAccount'] as String,
      grpcServices: map['grpcServices'] == null
          ? null
          : pulumi.Input.decodeList<ApigatewayApiConfigGrpcServiceDefinition>(
              map['grpcServices'],
              (value) => ApigatewayApiConfigGrpcServiceDefinition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      managedServiceConfigs: map['managedServiceConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ApigatewayApiConfigFile>(
              map['managedServiceConfigs'],
              (value) => ApigatewayApiConfigFile.fromMap(
                  (value as Map).cast<String, dynamic>())),
      openapiDocuments: map['openapiDocuments'] == null
          ? null
          : pulumi.Input.decodeList<ApigatewayApiConfigOpenApiDocument>(
              map['openapiDocuments'],
              (value) => ApigatewayApiConfigOpenApiDocument.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
