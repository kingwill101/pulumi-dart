import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_response.dart';
import 'apigateway_api_config_grpc_service_definition_response.dart';
import 'apigateway_api_config_open_api_document_response.dart';
import 'config_args.dart';

/// Creates a new ApiConfig in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Config extends pulumi.CustomResource {
  /// Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> apiConfigId;
  late final pulumi.Output<String> apiId;

  /// Created time.
  late final pulumi.Output<String> createTime;

  /// Optional. Display name.
  late final pulumi.Output<String> displayName;

  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  late final pulumi.Output<String> gatewayServiceAccount;

  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  late final pulumi
      .Output<List<ApigatewayApiConfigGrpcServiceDefinitionResponse>>
      grpcServices;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  late final pulumi.Output<List<ApigatewayApiConfigFileResponse>>
      managedServiceConfigs;

  /// Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  late final pulumi.Output<String> name;

  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  late final pulumi.Output<List<ApigatewayApiConfigOpenApiDocumentResponse>>
      openapiDocuments;
  late final pulumi.Output<String> project;

  /// The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  late final pulumi.Output<String> serviceConfigId;

  /// State of the API Config.
  late final pulumi.Output<String> state;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_apigateway_v1_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigateway/v1:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiConfigId = registerOutput<String>('apiConfigId');
    this.apiId = registerOutput<String>('apiId');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.gatewayServiceAccount =
        registerOutput<String>('gatewayServiceAccount');
    this.grpcServices =
        registerOutput<List<ApigatewayApiConfigGrpcServiceDefinitionResponse>>(
            'grpcServices');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.managedServiceConfigs =
        registerOutput<List<ApigatewayApiConfigFileResponse>>(
            'managedServiceConfigs');
    this.name = registerOutput<String>('name');
    this.openapiDocuments =
        registerOutput<List<ApigatewayApiConfigOpenApiDocumentResponse>>(
            'openapiDocuments');
    this.project = registerOutput<String>('project');
    this.serviceConfigId = registerOutput<String>('serviceConfigId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
