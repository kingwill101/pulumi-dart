// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_response.dart';
import 'authentication_response.dart';
import 'backend_response_servicemanagement_v1.dart';
import 'billing_response.dart';
import 'context_response.dart';
import 'control_response.dart';
import 'custom_error_response.dart';
import 'documentation_response_servicemanagement_v1.dart';
import 'endpoint_response_servicemanagement_v1.dart';
import 'enum_response.dart';
import 'http_response.dart';
import 'log_descriptor_response.dart';
import 'logging_response.dart';
import 'metric_descriptor_response_servicemanagement_v1.dart';
import 'monitored_resource_descriptor_response.dart';
import 'monitoring_response.dart';
import 'publishing_response.dart';
import 'quota_response.dart';
import 'source_info_response.dart';
import 'system_parameters_response.dart';
import 'type_response_servicemanagement_v1.dart';
import 'usage_response.dart';

/// Result data returned by getConfig.
class GetConfigServicemanagementV1Result {
  /// A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  final List<ApiResponse> apis;

  /// Auth configuration.
  final AuthenticationResponse authentication;

  /// API backend configuration.
  final BackendResponseServicemanagementV1 backend;

  /// Billing configuration.
  final BillingResponse billing;

  /// Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  final int configVersion;

  /// Context configuration.
  final ContextResponse context;

  /// Configuration for the service control plane.
  final ControlResponse control;

  /// Custom error configuration.
  final CustomErrorResponse customError;

  /// Additional API documentation.
  final DocumentationResponseServicemanagementV1 documentation;

  /// Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  final List<EndpointResponseServicemanagementV1> endpoints;

  /// A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  final List<EnumResponse> enums;

  /// HTTP configuration.
  final HttpResponse http;

  /// Logging configuration.
  final LoggingResponse logging;

  /// Defines the logs used by this service.
  final List<LogDescriptorResponse> logs;

  /// Defines the metrics used by this service.
  final List<MetricDescriptorResponseServicemanagementV1> metrics;

  /// Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  final List<MonitoredResourceDescriptorResponse> monitoredResources;

  /// Monitoring configuration.
  final MonitoringResponse monitoring;

  /// The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  final String name;

  /// The Google project that owns this service.
  final String producerProjectId;

  /// Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  final PublishingResponse publishing;

  /// Quota configuration.
  final QuotaResponse quota;

  /// The source information for this configuration if available.
  final SourceInfoResponse sourceInfo;

  /// System parameter configuration.
  final SystemParametersResponse systemParameters;

  /// A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  final List<TypeResponseServicemanagementV1> systemTypes;

  /// The product title for this service, it is the name displayed in Google Cloud Console.
  final String title;

  /// A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  final List<TypeResponseServicemanagementV1> types;

  /// Configuration controlling usage of this service.
  final UsageResponse usage;

  GetConfigServicemanagementV1Result({
    required this.apis,
    required this.authentication,
    required this.backend,
    required this.billing,
    required this.configVersion,
    required this.context,
    required this.control,
    required this.customError,
    required this.documentation,
    required this.endpoints,
    required this.enums,
    required this.http,
    required this.logging,
    required this.logs,
    required this.metrics,
    required this.monitoredResources,
    required this.monitoring,
    required this.name,
    required this.producerProjectId,
    required this.publishing,
    required this.quota,
    required this.sourceInfo,
    required this.systemParameters,
    required this.systemTypes,
    required this.title,
    required this.types,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apis'] = pulumi.Input.encodeList<ApiResponse, Map<String, dynamic>>(
        apis, (value) => value.toMap());
    map['authentication'] = authentication.toMap();
    map['backend'] = backend.toMap();
    map['billing'] = billing.toMap();
    map['configVersion'] = configVersion;
    map['context'] = context.toMap();
    map['control'] = control.toMap();
    map['customError'] = customError.toMap();
    map['documentation'] = documentation.toMap();
    map['endpoints'] = pulumi.Input.encodeList<
        EndpointResponseServicemanagementV1,
        Map<String, dynamic>>(endpoints, (value) => value.toMap());
    map['enums'] = pulumi.Input.encodeList<EnumResponse, Map<String, dynamic>>(
        enums, (value) => value.toMap());
    map['http'] = http.toMap();
    map['logging'] = logging.toMap();
    map['logs'] =
        pulumi.Input.encodeList<LogDescriptorResponse, Map<String, dynamic>>(
            logs, (value) => value.toMap());
    map['metrics'] = pulumi.Input.encodeList<
        MetricDescriptorResponseServicemanagementV1,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['monitoredResources'] = pulumi.Input.encodeList<
        MonitoredResourceDescriptorResponse,
        Map<String, dynamic>>(monitoredResources, (value) => value.toMap());
    map['monitoring'] = monitoring.toMap();
    map['name'] = name;
    map['producerProjectId'] = producerProjectId;
    map['publishing'] = publishing.toMap();
    map['quota'] = quota.toMap();
    map['sourceInfo'] = sourceInfo.toMap();
    map['systemParameters'] = systemParameters.toMap();
    map['systemTypes'] = pulumi.Input.encodeList<
        TypeResponseServicemanagementV1,
        Map<String, dynamic>>(systemTypes, (value) => value.toMap());
    map['title'] = title;
    map['types'] = pulumi.Input.encodeList<TypeResponseServicemanagementV1,
        Map<String, dynamic>>(types, (value) => value.toMap());
    map['usage'] = usage.toMap();
    return map;
  }

  factory GetConfigServicemanagementV1Result.fromMap(Map<String, dynamic> map) {
    return GetConfigServicemanagementV1Result(
      apis: pulumi.Input.decodeList<ApiResponse>(
          map['apis'],
          (value) =>
              ApiResponse.fromMap((value as Map).cast<String, dynamic>())),
      authentication: AuthenticationResponse.fromMap(
          (map['authentication'] as Map).cast<String, dynamic>()),
      backend: BackendResponseServicemanagementV1.fromMap(
          (map['backend'] as Map).cast<String, dynamic>()),
      billing: BillingResponse.fromMap(
          (map['billing'] as Map).cast<String, dynamic>()),
      configVersion: map['configVersion'] as int,
      context: ContextResponse.fromMap(
          (map['context'] as Map).cast<String, dynamic>()),
      control: ControlResponse.fromMap(
          (map['control'] as Map).cast<String, dynamic>()),
      customError: CustomErrorResponse.fromMap(
          (map['customError'] as Map).cast<String, dynamic>()),
      documentation: DocumentationResponseServicemanagementV1.fromMap(
          (map['documentation'] as Map).cast<String, dynamic>()),
      endpoints: pulumi.Input.decodeList<EndpointResponseServicemanagementV1>(
          map['endpoints'],
          (value) => EndpointResponseServicemanagementV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      enums: pulumi.Input.decodeList<EnumResponse>(
          map['enums'],
          (value) =>
              EnumResponse.fromMap((value as Map).cast<String, dynamic>())),
      http: HttpResponse.fromMap((map['http'] as Map).cast<String, dynamic>()),
      logging: LoggingResponse.fromMap(
          (map['logging'] as Map).cast<String, dynamic>()),
      logs: pulumi.Input.decodeList<LogDescriptorResponse>(
          map['logs'],
          (value) => LogDescriptorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      metrics:
          pulumi.Input.decodeList<MetricDescriptorResponseServicemanagementV1>(
              map['metrics'],
              (value) => MetricDescriptorResponseServicemanagementV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      monitoredResources:
          pulumi.Input.decodeList<MonitoredResourceDescriptorResponse>(
              map['monitoredResources'],
              (value) => MonitoredResourceDescriptorResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      monitoring: MonitoringResponse.fromMap(
          (map['monitoring'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      producerProjectId: map['producerProjectId'] as String,
      publishing: PublishingResponse.fromMap(
          (map['publishing'] as Map).cast<String, dynamic>()),
      quota:
          QuotaResponse.fromMap((map['quota'] as Map).cast<String, dynamic>()),
      sourceInfo: SourceInfoResponse.fromMap(
          (map['sourceInfo'] as Map).cast<String, dynamic>()),
      systemParameters: SystemParametersResponse.fromMap(
          (map['systemParameters'] as Map).cast<String, dynamic>()),
      systemTypes: pulumi.Input.decodeList<TypeResponseServicemanagementV1>(
          map['systemTypes'],
          (value) => TypeResponseServicemanagementV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      title: map['title'] as String,
      types: pulumi.Input.decodeList<TypeResponseServicemanagementV1>(
          map['types'],
          (value) => TypeResponseServicemanagementV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      usage:
          UsageResponse.fromMap((map['usage'] as Map).cast<String, dynamic>()),
    );
  }
}
