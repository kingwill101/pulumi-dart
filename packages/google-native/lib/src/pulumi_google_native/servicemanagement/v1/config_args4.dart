// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'api.dart';
import 'authentication.dart';
import 'backend4.dart';
import 'billing.dart';
import 'context.dart';
import 'control.dart';
import 'custom_error.dart';
import 'documentation2.dart';
import 'endpoint3.dart';
import 'enum.dart';
import 'http.dart';
import 'log_descriptor.dart';
import 'logging.dart';
import 'metric_descriptor2.dart';
import 'monitored_resource_descriptor.dart';
import 'monitoring.dart';
import 'publishing.dart';
import 'quota.dart';
import 'system_parameters.dart';
import 'type3.dart';
import 'usage.dart';

/// The set of arguments for Config.
class ConfigArgs4 {
  /// A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  final Input<List<Api>>? apis;

  /// Auth configuration.
  final Input<Authentication>? authentication;

  /// API backend configuration.
  final Input<Backend4>? backend;

  /// Billing configuration.
  final Input<Billing>? billing;

  /// Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  final Input<int>? configVersion;

  /// Context configuration.
  final Input<Context>? context;

  /// Configuration for the service control plane.
  final Input<Control>? control;

  /// Custom error configuration.
  final Input<CustomError>? customError;

  /// Additional API documentation.
  final Input<Documentation2>? documentation;

  /// Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  final Input<List<Endpoint3>>? endpoints;

  /// A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  final Input<List<Enum>>? enums;

  /// HTTP configuration.
  final Input<Http>? http;

  /// A unique ID for a specific instance of this message, typically assigned by the client for tracking purpose. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If empty, the server may choose to generate one instead.
  final Input<String>? id;

  /// Logging configuration.
  final Input<Logging>? logging;

  /// Defines the logs used by this service.
  final Input<List<LogDescriptor>>? logs;

  /// Defines the metrics used by this service.
  final Input<List<MetricDescriptor2>>? metrics;

  /// Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  final Input<List<MonitoredResourceDescriptor>>? monitoredResources;

  /// Monitoring configuration.
  final Input<Monitoring>? monitoring;

  /// The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  final Input<String>? name;

  /// The Google project that owns this service.
  final Input<String>? producerProjectId;

  /// Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  final Input<Publishing>? publishing;

  /// Quota configuration.
  final Input<Quota>? quota;
  final Input<String> serviceName;

  /// System parameter configuration.
  final Input<SystemParameters>? systemParameters;

  /// A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  final Input<List<Type3>>? systemTypes;

  /// The product title for this service, it is the name displayed in Google Cloud Console.
  final Input<String>? title;

  /// A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  final Input<List<Type3>>? types;

  /// Configuration controlling usage of this service.
  final Input<Usage>? usage;

  ConfigArgs4({
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
      map['apis'] =
          Input.mapOptionalInputValue<List<Api>, List<Map<String, dynamic>>>(
              apisValue,
              (value) => Input.encodeList<Api, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] =
          Input.mapOptionalInputValue<Authentication, Map<String, dynamic>>(
              authenticationValue, (value) => value.toMap());
    }
    final backendValue = backend;
    if (backendValue != null) {
      map['backend'] =
          Input.mapOptionalInputValue<Backend4, Map<String, dynamic>>(
              backendValue, (value) => value.toMap());
    }
    final billingValue = billing;
    if (billingValue != null) {
      map['billing'] =
          Input.mapOptionalInputValue<Billing, Map<String, dynamic>>(
              billingValue, (value) => value.toMap());
    }
    final configVersionValue = configVersion;
    if (configVersionValue != null) {
      map['configVersion'] = configVersionValue;
    }
    final contextValue = context;
    if (contextValue != null) {
      map['context'] =
          Input.mapOptionalInputValue<Context, Map<String, dynamic>>(
              contextValue, (value) => value.toMap());
    }
    final controlValue = control;
    if (controlValue != null) {
      map['control'] =
          Input.mapOptionalInputValue<Control, Map<String, dynamic>>(
              controlValue, (value) => value.toMap());
    }
    final customErrorValue = customError;
    if (customErrorValue != null) {
      map['customError'] =
          Input.mapOptionalInputValue<CustomError, Map<String, dynamic>>(
              customErrorValue, (value) => value.toMap());
    }
    final documentationValue = documentation;
    if (documentationValue != null) {
      map['documentation'] =
          Input.mapOptionalInputValue<Documentation2, Map<String, dynamic>>(
              documentationValue, (value) => value.toMap());
    }
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] = Input.mapOptionalInputValue<List<Endpoint3>,
              List<Map<String, dynamic>>>(
          endpointsValue,
          (value) => Input.encodeList<Endpoint3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final enumsValue = enums;
    if (enumsValue != null) {
      map['enums'] =
          Input.mapOptionalInputValue<List<Enum>, List<Map<String, dynamic>>>(
              enumsValue,
              (value) => Input.encodeList<Enum, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final httpValue = http;
    if (httpValue != null) {
      map['http'] = Input.mapOptionalInputValue<Http, Map<String, dynamic>>(
          httpValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] =
          Input.mapOptionalInputValue<Logging, Map<String, dynamic>>(
              loggingValue, (value) => value.toMap());
    }
    final logsValue = logs;
    if (logsValue != null) {
      map['logs'] = Input.mapOptionalInputValue<List<LogDescriptor>,
              List<Map<String, dynamic>>>(
          logsValue,
          (value) => Input.encodeList<LogDescriptor, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = Input.mapOptionalInputValue<List<MetricDescriptor2>,
              List<Map<String, dynamic>>>(
          metricsValue,
          (value) => Input.encodeList<MetricDescriptor2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final monitoredResourcesValue = monitoredResources;
    if (monitoredResourcesValue != null) {
      map['monitoredResources'] = Input.mapOptionalInputValue<
              List<MonitoredResourceDescriptor>, List<Map<String, dynamic>>>(
          monitoredResourcesValue,
          (value) => Input.encodeList<MonitoredResourceDescriptor,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] =
          Input.mapOptionalInputValue<Monitoring, Map<String, dynamic>>(
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
          Input.mapOptionalInputValue<Publishing, Map<String, dynamic>>(
              publishingValue, (value) => value.toMap());
    }
    final quotaValue = quota;
    if (quotaValue != null) {
      map['quota'] = Input.mapOptionalInputValue<Quota, Map<String, dynamic>>(
          quotaValue, (value) => value.toMap());
    }
    map['serviceName'] = serviceName;
    final systemParametersValue = systemParameters;
    if (systemParametersValue != null) {
      map['systemParameters'] =
          Input.mapOptionalInputValue<SystemParameters, Map<String, dynamic>>(
              systemParametersValue, (value) => value.toMap());
    }
    final systemTypesValue = systemTypes;
    if (systemTypesValue != null) {
      map['systemTypes'] =
          Input.mapOptionalInputValue<List<Type3>, List<Map<String, dynamic>>>(
              systemTypesValue,
              (value) => Input.encodeList<Type3, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] =
          Input.mapOptionalInputValue<List<Type3>, List<Map<String, dynamic>>>(
              typesValue,
              (value) => Input.encodeList<Type3, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final usageValue = usage;
    if (usageValue != null) {
      map['usage'] = Input.mapOptionalInputValue<Usage, Map<String, dynamic>>(
          usageValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConfigArgs4.fromMap(Map<String, dynamic> map) {
    return ConfigArgs4(
      apis: Input.asOptionalInput<List<Api>>(map['apis']),
      authentication:
          Input.asOptionalInput<Authentication>(map['authentication']),
      backend: Input.asOptionalInput<Backend4>(map['backend']),
      billing: Input.asOptionalInput<Billing>(map['billing']),
      configVersion: Input.asOptionalInput<int>(map['configVersion']),
      context: Input.asOptionalInput<Context>(map['context']),
      control: Input.asOptionalInput<Control>(map['control']),
      customError: Input.asOptionalInput<CustomError>(map['customError']),
      documentation:
          Input.asOptionalInput<Documentation2>(map['documentation']),
      endpoints: Input.asOptionalInput<List<Endpoint3>>(map['endpoints']),
      enums: Input.asOptionalInput<List<Enum>>(map['enums']),
      http: Input.asOptionalInput<Http>(map['http']),
      id: Input.asOptionalInput<String>(map['id']),
      logging: Input.asOptionalInput<Logging>(map['logging']),
      logs: Input.asOptionalInput<List<LogDescriptor>>(map['logs']),
      metrics: Input.asOptionalInput<List<MetricDescriptor2>>(map['metrics']),
      monitoredResources:
          Input.asOptionalInput<List<MonitoredResourceDescriptor>>(
              map['monitoredResources']),
      monitoring: Input.asOptionalInput<Monitoring>(map['monitoring']),
      name: Input.asOptionalInput<String>(map['name']),
      producerProjectId:
          Input.asOptionalInput<String>(map['producerProjectId']),
      publishing: Input.asOptionalInput<Publishing>(map['publishing']),
      quota: Input.asOptionalInput<Quota>(map['quota']),
      serviceName: Input.asInput<String>(map['serviceName']),
      systemParameters:
          Input.asOptionalInput<SystemParameters>(map['systemParameters']),
      systemTypes: Input.asOptionalInput<List<Type3>>(map['systemTypes']),
      title: Input.asOptionalInput<String>(map['title']),
      types: Input.asOptionalInput<List<Type3>>(map['types']),
      usage: Input.asOptionalInput<Usage>(map['usage']),
    );
  }
}
