import 'package:pulumi/pulumi.dart';
import 'api_response.dart';
import 'authentication_response.dart';
import 'backend_response4.dart';
import 'billing_response.dart';
import 'config_args4.dart';
import 'context_response.dart';
import 'control_response.dart';
import 'custom_error_response.dart';
import 'documentation_response2.dart';
import 'endpoint_response5.dart';
import 'enum_response.dart';
import 'http_response.dart';
import 'log_descriptor_response.dart';
import 'logging_response.dart';
import 'metric_descriptor_response2.dart';
import 'monitored_resource_descriptor_response.dart';
import 'monitoring_response.dart';
import 'publishing_response.dart';
import 'quota_response.dart';
import 'source_info_response.dart';
import 'system_parameters_response.dart';
import 'type_response3.dart';
import 'usage_response.dart';

/// Creates a new service configuration (version) for a managed service. This method only stores the service configuration. To roll out the service configuration to backend systems please call CreateServiceRollout. Only the 100 most recent service configurations and ones referenced by existing rollouts are kept for each service. The rest will be deleted eventually.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Config5 extends CustomResource {
  /// A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  late final Output<List<ApiResponse>> apis;

  /// Auth configuration.
  late final Output<AuthenticationResponse> authentication;

  /// API backend configuration.
  late final Output<BackendResponse4> backend;

  /// Billing configuration.
  late final Output<BillingResponse> billing;

  /// Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  late final Output<int> configVersion;

  /// Context configuration.
  late final Output<ContextResponse> context;

  /// Configuration for the service control plane.
  late final Output<ControlResponse> control;

  /// Custom error configuration.
  late final Output<CustomErrorResponse> customError;

  /// Additional API documentation.
  late final Output<DocumentationResponse2> documentation;

  /// Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  late final Output<List<EndpointResponse5>> endpoints;

  /// A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  late final Output<List<EnumResponse>> enums;

  /// HTTP configuration.
  late final Output<HttpResponse> http;

  /// Logging configuration.
  late final Output<LoggingResponse> logging;

  /// Defines the logs used by this service.
  late final Output<List<LogDescriptorResponse>> logs;

  /// Defines the metrics used by this service.
  late final Output<List<MetricDescriptorResponse2>> metrics;

  /// Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  late final Output<List<MonitoredResourceDescriptorResponse>>
      monitoredResources;

  /// Monitoring configuration.
  late final Output<MonitoringResponse> monitoring;

  /// The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  late final Output<String> name;

  /// The Google project that owns this service.
  late final Output<String> producerProjectId;

  /// Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  late final Output<PublishingResponse> publishing;

  /// Quota configuration.
  late final Output<QuotaResponse> quota;
  late final Output<String> serviceName;

  /// The source information for this configuration if available.
  late final Output<SourceInfoResponse> sourceInfo;

  /// System parameter configuration.
  late final Output<SystemParametersResponse> systemParameters;

  /// A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  late final Output<List<TypeResponse3>> systemTypes;

  /// The product title for this service, it is the name displayed in Google Cloud Console.
  late final Output<String> title;

  /// A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  late final Output<List<TypeResponse3>> types;

  /// Configuration controlling usage of this service.
  late final Output<UsageResponse> usage;

  Config5(
    String name, {
    ConfigArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:servicemanagement/v1:Config',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apis = Output.createUnknown<List<ApiResponse>>();
    this.authentication = Output.createUnknown<AuthenticationResponse>();
    this.backend = Output.createUnknown<BackendResponse4>();
    this.billing = Output.createUnknown<BillingResponse>();
    this.configVersion = Output.createUnknown<int>();
    this.context = Output.createUnknown<ContextResponse>();
    this.control = Output.createUnknown<ControlResponse>();
    this.customError = Output.createUnknown<CustomErrorResponse>();
    this.documentation = Output.createUnknown<DocumentationResponse2>();
    this.endpoints = Output.createUnknown<List<EndpointResponse5>>();
    this.enums = Output.createUnknown<List<EnumResponse>>();
    this.http = Output.createUnknown<HttpResponse>();
    this.logging = Output.createUnknown<LoggingResponse>();
    this.logs = Output.createUnknown<List<LogDescriptorResponse>>();
    this.metrics = Output.createUnknown<List<MetricDescriptorResponse2>>();
    this.monitoredResources =
        Output.createUnknown<List<MonitoredResourceDescriptorResponse>>();
    this.monitoring = Output.createUnknown<MonitoringResponse>();
    this.name = Output.createUnknown<String>();
    this.producerProjectId = Output.createUnknown<String>();
    this.publishing = Output.createUnknown<PublishingResponse>();
    this.quota = Output.createUnknown<QuotaResponse>();
    this.serviceName = Output.createUnknown<String>();
    this.sourceInfo = Output.createUnknown<SourceInfoResponse>();
    this.systemParameters = Output.createUnknown<SystemParametersResponse>();
    this.systemTypes = Output.createUnknown<List<TypeResponse3>>();
    this.title = Output.createUnknown<String>();
    this.types = Output.createUnknown<List<TypeResponse3>>();
    this.usage = Output.createUnknown<UsageResponse>();
  }
}
