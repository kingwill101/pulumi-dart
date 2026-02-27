// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api.dart';
import 'authentication.dart';
import 'backend_servicemanagement_v1.dart';
import 'billing.dart';
import 'context.dart';
import 'control.dart';
import 'custom_error.dart';
import 'documentation_servicemanagement_v1.dart';
import 'endpoint_servicemanagement_v1.dart';
import 'enum.dart';
import 'http.dart';
import 'log_descriptor.dart';
import 'logging.dart';
import 'metric_descriptor_servicemanagement_v1.dart';
import 'monitored_resource_descriptor.dart';
import 'monitoring.dart';
import 'publishing.dart';
import 'quota.dart';
import 'system_parameters.dart';
import 'type_servicemanagement_v1.dart';
import 'usage.dart';

/// The set of arguments for Config.
class ConfigServicemanagementV1Args {
  /// A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  final pulumi.Input<List<Api>>? apis;

  /// Auth configuration.
  final pulumi.Input<Authentication>? authentication;

  /// API backend configuration.
  final pulumi.Input<BackendServicemanagementV1>? backend;

  /// Billing configuration.
  final pulumi.Input<Billing>? billing;

  /// Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  final pulumi.Input<int>? configVersion;

  /// Context configuration.
  final pulumi.Input<Context>? context;

  /// Configuration for the service control plane.
  final pulumi.Input<Control>? control;

  /// Custom error configuration.
  final pulumi.Input<CustomError>? customError;

  /// Additional API documentation.
  final pulumi.Input<DocumentationServicemanagementV1>? documentation;

  /// Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  final pulumi.Input<List<EndpointServicemanagementV1>>? endpoints;

  /// A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  final pulumi.Input<List<Enum>>? enums;

  /// HTTP configuration.
  final pulumi.Input<Http>? http;

  /// A unique ID for a specific instance of this message, typically assigned by the client for tracking purpose. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If empty, the server may choose to generate one instead.
  final pulumi.Input<String>? id;

  /// Logging configuration.
  final pulumi.Input<Logging>? logging;

  /// Defines the logs used by this service.
  final pulumi.Input<List<LogDescriptor>>? logs;

  /// Defines the metrics used by this service.
  final pulumi.Input<List<MetricDescriptorServicemanagementV1>>? metrics;

  /// Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  final pulumi.Input<List<MonitoredResourceDescriptor>>? monitoredResources;

  /// Monitoring configuration.
  final pulumi.Input<Monitoring>? monitoring;

  /// The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  final pulumi.Input<String>? name;

  /// The Google project that owns this service.
  final pulumi.Input<String>? producerProjectId;

  /// Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  final pulumi.Input<Publishing>? publishing;

  /// Quota configuration.
  final pulumi.Input<Quota>? quota;
  final pulumi.Input<String> serviceName;

  /// System parameter configuration.
  final pulumi.Input<SystemParameters>? systemParameters;

  /// A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  final pulumi.Input<List<TypeServicemanagementV1>>? systemTypes;

  /// The product title for this service, it is the name displayed in Google Cloud Console.
  final pulumi.Input<String>? title;

  /// A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  final pulumi.Input<List<TypeServicemanagementV1>>? types;

  /// Configuration controlling usage of this service.
  final pulumi.Input<Usage>? usage;

  ConfigServicemanagementV1Args({
    this.apis,
    this.authentication,
    this.backend,
    this.billing,
    this.configVersion,
    this.context,
    this.control,
    this.customError,
    this.documentation,
    this.endpoints,
    this.enums,
    this.http,
    this.id,
    this.logging,
    this.logs,
    this.metrics,
    this.monitoredResources,
    this.monitoring,
    this.name,
    this.producerProjectId,
    this.publishing,
    this.quota,
    required this.serviceName,
    this.systemParameters,
    this.systemTypes,
    this.title,
    this.types,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apisValue = apis;
    if (apisValue != null) {
      map['apis'] = pulumi.Input.mapOptionalInputValue<List<Api>,
              List<Map<String, dynamic>>>(
          apisValue,
          (value) => pulumi.Input.encodeList<Api, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] = pulumi.Input.mapOptionalInputValue<Authentication,
          Map<String, dynamic>>(authenticationValue, (value) => value.toMap());
    }
    final backendValue = backend;
    if (backendValue != null) {
      map['backend'] = pulumi.Input.mapOptionalInputValue<
          BackendServicemanagementV1,
          Map<String, dynamic>>(backendValue, (value) => value.toMap());
    }
    final billingValue = billing;
    if (billingValue != null) {
      map['billing'] =
          pulumi.Input.mapOptionalInputValue<Billing, Map<String, dynamic>>(
              billingValue, (value) => value.toMap());
    }
    final configVersionValue = configVersion;
    if (configVersionValue != null) {
      map['configVersion'] = configVersionValue;
    }
    final contextValue = context;
    if (contextValue != null) {
      map['context'] =
          pulumi.Input.mapOptionalInputValue<Context, Map<String, dynamic>>(
              contextValue, (value) => value.toMap());
    }
    final controlValue = control;
    if (controlValue != null) {
      map['control'] =
          pulumi.Input.mapOptionalInputValue<Control, Map<String, dynamic>>(
              controlValue, (value) => value.toMap());
    }
    final customErrorValue = customError;
    if (customErrorValue != null) {
      map['customError'] =
          pulumi.Input.mapOptionalInputValue<CustomError, Map<String, dynamic>>(
              customErrorValue, (value) => value.toMap());
    }
    final documentationValue = documentation;
    if (documentationValue != null) {
      map['documentation'] = pulumi.Input.mapOptionalInputValue<
          DocumentationServicemanagementV1,
          Map<String, dynamic>>(documentationValue, (value) => value.toMap());
    }
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] = pulumi.Input.mapOptionalInputValue<
              List<EndpointServicemanagementV1>, List<Map<String, dynamic>>>(
          endpointsValue,
          (value) => pulumi.Input.encodeList<EndpointServicemanagementV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final enumsValue = enums;
    if (enumsValue != null) {
      map['enums'] = pulumi.Input.mapOptionalInputValue<List<Enum>,
              List<Map<String, dynamic>>>(
          enumsValue,
          (value) => pulumi.Input.encodeList<Enum, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final httpValue = http;
    if (httpValue != null) {
      map['http'] =
          pulumi.Input.mapOptionalInputValue<Http, Map<String, dynamic>>(
              httpValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] =
          pulumi.Input.mapOptionalInputValue<Logging, Map<String, dynamic>>(
              loggingValue, (value) => value.toMap());
    }
    final logsValue = logs;
    if (logsValue != null) {
      map['logs'] = pulumi.Input.mapOptionalInputValue<List<LogDescriptor>,
              List<Map<String, dynamic>>>(
          logsValue,
          (value) =>
              pulumi.Input.encodeList<LogDescriptor, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = pulumi.Input.mapOptionalInputValue<
              List<MetricDescriptorServicemanagementV1>,
              List<Map<String, dynamic>>>(
          metricsValue,
          (value) => pulumi.Input.encodeList<
              MetricDescriptorServicemanagementV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final monitoredResourcesValue = monitoredResources;
    if (monitoredResourcesValue != null) {
      map['monitoredResources'] = pulumi.Input.mapOptionalInputValue<
              List<MonitoredResourceDescriptor>, List<Map<String, dynamic>>>(
          monitoredResourcesValue,
          (value) => pulumi.Input.encodeList<MonitoredResourceDescriptor,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] =
          pulumi.Input.mapOptionalInputValue<Monitoring, Map<String, dynamic>>(
              monitoringValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final producerProjectIdValue = producerProjectId;
    if (producerProjectIdValue != null) {
      map['producerProjectId'] = producerProjectIdValue;
    }
    final publishingValue = publishing;
    if (publishingValue != null) {
      map['publishing'] =
          pulumi.Input.mapOptionalInputValue<Publishing, Map<String, dynamic>>(
              publishingValue, (value) => value.toMap());
    }
    final quotaValue = quota;
    if (quotaValue != null) {
      map['quota'] =
          pulumi.Input.mapOptionalInputValue<Quota, Map<String, dynamic>>(
              quotaValue, (value) => value.toMap());
    }
    map['serviceName'] = serviceName;
    final systemParametersValue = systemParameters;
    if (systemParametersValue != null) {
      map['systemParameters'] = pulumi.Input.mapOptionalInputValue<
              SystemParameters, Map<String, dynamic>>(
          systemParametersValue, (value) => value.toMap());
    }
    final systemTypesValue = systemTypes;
    if (systemTypesValue != null) {
      map['systemTypes'] = pulumi.Input.mapOptionalInputValue<
              List<TypeServicemanagementV1>, List<Map<String, dynamic>>>(
          systemTypesValue,
          (value) => pulumi.Input.encodeList<TypeServicemanagementV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = pulumi.Input.mapOptionalInputValue<
              List<TypeServicemanagementV1>, List<Map<String, dynamic>>>(
          typesValue,
          (value) => pulumi.Input.encodeList<TypeServicemanagementV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final usageValue = usage;
    if (usageValue != null) {
      map['usage'] =
          pulumi.Input.mapOptionalInputValue<Usage, Map<String, dynamic>>(
              usageValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConfigServicemanagementV1Args.fromMap(Map<String, dynamic> map) {
    return ConfigServicemanagementV1Args(
      apis: pulumi.Input.asOptionalInput<List<Api>>(map['apis']),
      authentication:
          pulumi.Input.asOptionalInput<Authentication>(map['authentication']),
      backend: pulumi.Input.asOptionalInput<BackendServicemanagementV1>(
          map['backend']),
      billing: pulumi.Input.asOptionalInput<Billing>(map['billing']),
      configVersion: pulumi.Input.asOptionalInput<int>(map['configVersion']),
      context: pulumi.Input.asOptionalInput<Context>(map['context']),
      control: pulumi.Input.asOptionalInput<Control>(map['control']),
      customError:
          pulumi.Input.asOptionalInput<CustomError>(map['customError']),
      documentation:
          pulumi.Input.asOptionalInput<DocumentationServicemanagementV1>(
              map['documentation']),
      endpoints:
          pulumi.Input.asOptionalInput<List<EndpointServicemanagementV1>>(
              map['endpoints']),
      enums: pulumi.Input.asOptionalInput<List<Enum>>(map['enums']),
      http: pulumi.Input.asOptionalInput<Http>(map['http']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      logging: pulumi.Input.asOptionalInput<Logging>(map['logging']),
      logs: pulumi.Input.asOptionalInput<List<LogDescriptor>>(map['logs']),
      metrics: pulumi.Input.asOptionalInput<
          List<MetricDescriptorServicemanagementV1>>(map['metrics']),
      monitoredResources:
          pulumi.Input.asOptionalInput<List<MonitoredResourceDescriptor>>(
              map['monitoredResources']),
      monitoring: pulumi.Input.asOptionalInput<Monitoring>(map['monitoring']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      producerProjectId:
          pulumi.Input.asOptionalInput<String>(map['producerProjectId']),
      publishing: pulumi.Input.asOptionalInput<Publishing>(map['publishing']),
      quota: pulumi.Input.asOptionalInput<Quota>(map['quota']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
      systemParameters: pulumi.Input.asOptionalInput<SystemParameters>(
          map['systemParameters']),
      systemTypes: pulumi.Input.asOptionalInput<List<TypeServicemanagementV1>>(
          map['systemTypes']),
      title: pulumi.Input.asOptionalInput<String>(map['title']),
      types: pulumi.Input.asOptionalInput<List<TypeServicemanagementV1>>(
          map['types']),
      usage: pulumi.Input.asOptionalInput<Usage>(map['usage']),
    );
  }
}
