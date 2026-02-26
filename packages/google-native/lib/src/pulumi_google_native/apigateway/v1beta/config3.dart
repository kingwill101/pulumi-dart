import 'package:pulumi/pulumi.dart';
import 'apigateway_api_config_file_response2.dart';
import 'apigateway_api_config_grpc_service_definition_response2.dart';
import 'apigateway_api_config_open_api_document_response2.dart';
import 'apigateway_gateway_config_response.dart';
import 'config_args2.dart';

/// Creates a new ApiConfig in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Config3 extends CustomResource {
  /// Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  late final Output<String> apiConfigId;
  late final Output<String> apiId;

  /// Created time.
  late final Output<String> createTime;

  /// Optional. Display name.
  late final Output<String> displayName;

  /// Immutable. Gateway specific configuration.
  late final Output<ApigatewayGatewayConfigResponse> gatewayConfig;

  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  late final Output<String> gatewayServiceAccount;

  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  late final Output<List<ApigatewayApiConfigGrpcServiceDefinitionResponse2>>
      grpcServices;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  late final Output<List<ApigatewayApiConfigFileResponse2>>
      managedServiceConfigs;

  /// Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  late final Output<String> name;

  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  late final Output<List<ApigatewayApiConfigOpenApiDocumentResponse2>>
      openapiDocuments;
  late final Output<String> project;

  /// The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  late final Output<String> serviceConfigId;

  /// State of the API Config.
  late final Output<String> state;

  /// Updated time.
  late final Output<String> updateTime;

  Config3(
    String name, {
    ConfigArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigateway/v1beta:Config',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiConfigId = registerOutput<String>('apiConfigId');
    this.apiId = registerOutput<String>('apiId');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.gatewayConfig =
        registerOutput<ApigatewayGatewayConfigResponse>('gatewayConfig');
    this.gatewayServiceAccount =
        registerOutput<String>('gatewayServiceAccount');
    this.grpcServices =
        registerOutput<List<ApigatewayApiConfigGrpcServiceDefinitionResponse2>>(
            'grpcServices');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.managedServiceConfigs =
        registerOutput<List<ApigatewayApiConfigFileResponse2>>(
            'managedServiceConfigs');
    this.name = registerOutput<String>('name');
    this.openapiDocuments =
        registerOutput<List<ApigatewayApiConfigOpenApiDocumentResponse2>>(
            'openapiDocuments');
    this.project = registerOutput<String>('project');
    this.serviceConfigId = registerOutput<String>('serviceConfigId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
