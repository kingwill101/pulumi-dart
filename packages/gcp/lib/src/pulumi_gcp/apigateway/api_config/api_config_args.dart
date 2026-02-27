// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_config_gateway_config/api_config_gateway_config.dart';
import '../api_config_grpc_service/api_config_grpc_service.dart';
import '../api_config_managed_service_config/api_config_managed_service_config.dart';
import '../api_config_openapi_document/api_config_openapi_document.dart';

/// The set of arguments for ApiConfig.
class ApiConfigArgs {
  /// The API to attach the config to.
  final Input<String> api;

  /// Identifier to assign to the API Config. Must be unique within scope of the parent resource(api).
  final Input<String>? apiConfigId;

  /// Creates a unique name beginning with the
  /// specified prefix. If this and api_config_id are unspecified, a random value is chosen for the name.
  final Input<String>? apiConfigIdPrefix;

  /// A user-visible name for the API.
  final Input<String>? displayName;

  /// Immutable. Gateway specific configuration.
  /// If not specified, backend authentication will be set to use OIDC authentication using the default compute service account
  /// Structure is documented below.
  final Input<ApiConfigGatewayConfig>? gatewayConfig;

  /// gRPC service definition files. If specified, openapiDocuments must not be included.
  /// Structure is documented below.
  final Input<List<ApiConfigGrpcService>>? grpcServices;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
  /// If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// Structure is documented below.
  final Input<List<ApiConfigManagedServiceConfig>>? managedServiceConfigs;

  /// OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included.
  /// Structure is documented below.
  final Input<List<ApiConfigOpenapiDocument>>? openapiDocuments;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ApiConfigArgs({
    required this.api,
    this.apiConfigId,
    this.apiConfigIdPrefix,
    this.displayName,
    this.gatewayConfig,
    this.grpcServices,
    this.labels,
    this.managedServiceConfigs,
    this.openapiDocuments,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['api'] = api;
    final apiConfigIdValue = apiConfigId;
    if (apiConfigIdValue != null) {
      map['apiConfigId'] = apiConfigIdValue;
    }
    final apiConfigIdPrefixValue = apiConfigIdPrefix;
    if (apiConfigIdPrefixValue != null) {
      map['apiConfigIdPrefix'] = apiConfigIdPrefixValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gatewayConfigValue = gatewayConfig;
    if (gatewayConfigValue != null) {
      map['gatewayConfig'] = Input.mapOptionalInputValue<ApiConfigGatewayConfig,
          Map<String, dynamic>>(gatewayConfigValue, (value) => value.toMap());
    }
    final grpcServicesValue = grpcServices;
    if (grpcServicesValue != null) {
      map['grpcServices'] = Input.mapOptionalInputValue<
              List<ApiConfigGrpcService>, List<Map<String, dynamic>>>(
          grpcServicesValue,
          (value) =>
              Input.encodeList<ApiConfigGrpcService, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final managedServiceConfigsValue = managedServiceConfigs;
    if (managedServiceConfigsValue != null) {
      map['managedServiceConfigs'] = Input.mapOptionalInputValue<
              List<ApiConfigManagedServiceConfig>, List<Map<String, dynamic>>>(
          managedServiceConfigsValue,
          (value) => Input.encodeList<ApiConfigManagedServiceConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final openapiDocumentsValue = openapiDocuments;
    if (openapiDocumentsValue != null) {
      map['openapiDocuments'] = Input.mapOptionalInputValue<
              List<ApiConfigOpenapiDocument>, List<Map<String, dynamic>>>(
          openapiDocumentsValue,
          (value) =>
              Input.encodeList<ApiConfigOpenapiDocument, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ApiConfigArgs.fromMap(Map<String, dynamic> map) {
    return ApiConfigArgs(
      api: Input.asInput<String>(map['api']),
      apiConfigId: Input.asOptionalInput<String>(map['apiConfigId']),
      apiConfigIdPrefix:
          Input.asOptionalInput<String>(map['apiConfigIdPrefix']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gatewayConfig:
          Input.asOptionalInput<ApiConfigGatewayConfig>(map['gatewayConfig']),
      grpcServices: Input.asOptionalInput<List<ApiConfigGrpcService>>(
          map['grpcServices']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      managedServiceConfigs:
          Input.asOptionalInput<List<ApiConfigManagedServiceConfig>>(
              map['managedServiceConfigs']),
      openapiDocuments: Input.asOptionalInput<List<ApiConfigOpenapiDocument>>(
          map['openapiDocuments']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
