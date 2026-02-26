import 'package:pulumi/pulumi.dart';
import '../api_config_gateway_config/api_config_gateway_config.dart';
import '../api_config_grpc_service/api_config_grpc_service.dart';
import '../api_config_managed_service_config/api_config_managed_service_config.dart';
import '../api_config_openapi_document/api_config_openapi_document.dart';
import 'api_config_args.dart';

/// An API Configuration is an association of an API Controller Config and a Gateway Config
///
/// To get more information about ApiConfig, see:
///
/// * [API documentation](https://cloud.google.com/api-gateway/docs/reference/rest/v1beta/projects.locations.apis.configs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/api-gateway/docs/creating-api-config)
///
/// ## Example Usage
///
/// ## Import
///
/// ApiConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config_id}}`
///
/// * `{{project}}/{{api}}/{{api_config_id}}`
///
/// * `{{api}}/{{api_config_id}}`
///
/// When using the `pulumi import` command, ApiConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiConfig:ApiConfig default projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiConfig:ApiConfig default {{project}}/{{api}}/{{api_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiConfig:ApiConfig default {{api}}/{{api_config_id}}
/// ```
class ApiConfig extends CustomResource {
  /// The API to attach the config to.
  late final Output<String> api;

  /// Identifier to assign to the API Config. Must be unique within scope of the parent resource(api).
  late final Output<String> apiConfigId;

  /// Creates a unique name beginning with the
  /// specified prefix. If this and<span pulumi-lang-nodejs=" apiConfigId " pulumi-lang-dotnet=" ApiConfigId " pulumi-lang-go=" apiConfigId " pulumi-lang-python=" api_config_id " pulumi-lang-yaml=" apiConfigId " pulumi-lang-java=" apiConfigId "> api_config_id </span>are unspecified, a random value is chosen for the name.
  late final Output<String> apiConfigIdPrefix;

  /// A user-visible name for the API.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Immutable. Gateway specific configuration.
  /// If not specified, backend authentication will be set to use OIDC authentication using the default compute service account
  /// Structure is documented below.
  late final Output<ApiConfigGatewayConfig?> gatewayConfig;

  /// gRPC service definition files. If specified, openapiDocuments must not be included.
  /// Structure is documented below.
  late final Output<List<ApiConfigGrpcService>?> grpcServices;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
  /// If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// Structure is documented below.
  late final Output<List<ApiConfigManagedServiceConfig>?> managedServiceConfigs;

  /// The resource name of the API Config.
  late final Output<String> name;

  /// OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included.
  /// Structure is documented below.
  late final Output<List<ApiConfigOpenapiDocument>?> openapiDocuments;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The ID of the associated Service Config (https://cloud.google.com/service-infrastructure/docs/glossary#config).
  late final Output<String> serviceConfigId;

  ApiConfig(
    String name, {
    ApiConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/apiConfig:ApiConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.api = Output.createUnknown<String>();
    this.apiConfigId = Output.createUnknown<String>();
    this.apiConfigIdPrefix = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.gatewayConfig = Output.createUnknown<ApiConfigGatewayConfig?>();
    this.grpcServices = Output.createUnknown<List<ApiConfigGrpcService>?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.managedServiceConfigs =
        Output.createUnknown<List<ApiConfigManagedServiceConfig>?>();
    this.name = Output.createUnknown<String>();
    this.openapiDocuments =
        Output.createUnknown<List<ApiConfigOpenapiDocument>?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.serviceConfigId = Output.createUnknown<String>();
  }
}
