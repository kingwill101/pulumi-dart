import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_response.dart';
import 'authentication_response.dart';
import 'backend_response.dart';
import 'billing_response.dart';
import 'config_args.dart';
import 'context_response.dart';
import 'control_response.dart';
import 'custom_error_response.dart';
import 'documentation_response.dart';
import 'endpoint_response.dart';
import 'enum_response.dart';
import 'http_response.dart';
import 'log_descriptor_response.dart';
import 'logging_response.dart';
import 'metric_descriptor_response.dart';
import 'monitored_resource_descriptor_response.dart';
import 'monitoring_response.dart';
import 'publishing_response.dart';
import 'quota_response.dart';
import 'source_info_response.dart';
import 'system_parameters_response.dart';
import 'type_response.dart';
import 'usage_response.dart';

/// Creates a new service configuration (version) for a managed service. This method only stores the service configuration. To roll out the service configuration to backend systems please call CreateServiceRollout. Only the 100 most recent service configurations and ones referenced by existing rollouts are kept for each service. The rest will be deleted eventually.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Config extends pulumi.CustomResource {
  /// A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  late final pulumi.Output<List<ApiResponse>> apis;

  /// Auth configuration.
  late final pulumi.Output<AuthenticationResponse> authentication;

  /// API backend configuration.
  late final pulumi.Output<BackendResponse> backend;

  /// Billing configuration.
  late final pulumi.Output<BillingResponse> billing;

  /// Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  late final pulumi.Output<int> configVersion;

  /// Context configuration.
  late final pulumi.Output<ContextResponse> context;

  /// Configuration for the service control plane.
  late final pulumi.Output<ControlResponse> control;

  /// Custom error configuration.
  late final pulumi.Output<CustomErrorResponse> customError;

  /// Additional API documentation.
  late final pulumi.Output<DocumentationResponse> documentation;

  /// Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  late final pulumi.Output<List<EndpointResponse>> endpoints;

  /// A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  late final pulumi.Output<List<EnumResponse>> enums;

  /// HTTP configuration.
  late final pulumi.Output<HttpResponse> http;

  /// Logging configuration.
  late final pulumi.Output<LoggingResponse> logging;

  /// Defines the logs used by this service.
  late final pulumi.Output<List<LogDescriptorResponse>> logs;

  /// Defines the metrics used by this service.
  late final pulumi.Output<List<MetricDescriptorResponse>> metrics;

  /// Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  late final pulumi.Output<List<MonitoredResourceDescriptorResponse>>
      monitoredResources;

  /// Monitoring configuration.
  late final pulumi.Output<MonitoringResponse> monitoring;

  /// The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  late final pulumi.Output<String> name;

  /// The Google project that owns this service.
  late final pulumi.Output<String> producerProjectId;

  /// Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  late final pulumi.Output<PublishingResponse> publishing;

  /// Quota configuration.
  late final pulumi.Output<QuotaResponse> quota;
  late final pulumi.Output<String> serviceName;

  /// The source information for this configuration if available.
  late final pulumi.Output<SourceInfoResponse> sourceInfo;

  /// System parameter configuration.
  late final pulumi.Output<SystemParametersResponse> systemParameters;

  /// A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  late final pulumi.Output<List<TypeResponse>> systemTypes;

  /// The product title for this service, it is the name displayed in Google Cloud Console.
  late final pulumi.Output<String> title;

  /// A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  late final pulumi.Output<List<TypeResponse>> types;

  /// Configuration controlling usage of this service.
  late final pulumi.Output<UsageResponse> usage;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_servicemanagement_v1_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:servicemanagement/v1:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apis = registerOutput<List<ApiResponse>>('apis');
    this.authentication =
        registerOutput<AuthenticationResponse>('authentication');
    this.backend = registerOutput<BackendResponse>('backend');
    this.billing = registerOutput<BillingResponse>('billing');
    this.configVersion = registerOutput<int>('configVersion');
    this.context = registerOutput<ContextResponse>('context');
    this.control = registerOutput<ControlResponse>('control');
    this.customError = registerOutput<CustomErrorResponse>('customError');
    this.documentation = registerOutput<DocumentationResponse>('documentation');
    this.endpoints = registerOutput<List<EndpointResponse>>('endpoints');
    this.enums = registerOutput<List<EnumResponse>>('enums');
    this.http = registerOutput<HttpResponse>('http');
    this.logging = registerOutput<LoggingResponse>('logging');
    this.logs = registerOutput<List<LogDescriptorResponse>>('logs');
    this.metrics = registerOutput<List<MetricDescriptorResponse>>('metrics');
    this.monitoredResources =
        registerOutput<List<MonitoredResourceDescriptorResponse>>(
            'monitoredResources');
    this.monitoring = registerOutput<MonitoringResponse>('monitoring');
    this.name = registerOutput<String>('name');
    this.producerProjectId = registerOutput<String>('producerProjectId');
    this.publishing = registerOutput<PublishingResponse>('publishing');
    this.quota = registerOutput<QuotaResponse>('quota');
    this.serviceName = registerOutput<String>('serviceName');
    this.sourceInfo = registerOutput<SourceInfoResponse>('sourceInfo');
    this.systemParameters =
        registerOutput<SystemParametersResponse>('systemParameters');
    this.systemTypes = registerOutput<List<TypeResponse>>('systemTypes');
    this.title = registerOutput<String>('title');
    this.types = registerOutput<List<TypeResponse>>('types');
    this.usage = registerOutput<UsageResponse>('usage');
  }
}
