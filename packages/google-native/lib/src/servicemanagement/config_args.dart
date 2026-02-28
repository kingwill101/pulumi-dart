// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api.dart';
import 'authentication.dart';
import 'backend.dart';
import 'billing.dart';
import 'context.dart';
import 'control.dart';
import 'custom_error.dart';
import 'documentation.dart';
import 'endpoint.dart';
import 'enum.dart';
import 'http.dart';
import 'log_descriptor.dart';
import 'logging.dart';
import 'metric_descriptor.dart';
import 'monitored_resource_descriptor.dart';
import 'monitoring.dart';
import 'publishing.dart';
import 'quota.dart';
import 'system_parameters.dart';
import 'type.dart';
import 'usage.dart';

/// {@template pulumi_servicemanagement_v1_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_config_args_doc}
class ConfigArgs {
  /// A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  final pulumi.Input<List<Api>>? apis;
  /// Auth configuration.
  final pulumi.Input<Authentication>? authentication;
  /// API backend configuration.
  final pulumi.Input<Backend>? backend;
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
  final pulumi.Input<Documentation>? documentation;
  /// Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  final pulumi.Input<List<Endpoint>>? endpoints;
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
  final pulumi.Input<List<MetricDescriptor>>? metrics;
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
  final pulumi.Input<List<Type>>? systemTypes;
  /// The product title for this service, it is the name displayed in Google Cloud Console.
  final pulumi.Input<String>? title;
  /// A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  final pulumi.Input<List<Type>>? types;
  /// Configuration controlling usage of this service.
  final pulumi.Input<Usage>? usage;

  /// Creates a new [ConfigArgs].
  /// [apis] A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  /// [authentication] Auth configuration.
  /// [backend] API backend configuration.
  /// [billing] Billing configuration.
  /// [configVersion] Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  /// [context] Context configuration.
  /// [control] Configuration for the service control plane.
  /// [customError] Custom error configuration.
  /// [documentation] Additional API documentation.
  /// [endpoints] Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  /// [enums] A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  /// [http] HTTP configuration.
  /// [id] A unique ID for a specific instance of this message, typically assigned by the client for tracking purpose. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If empty, the server may choose to generate one instead.
  /// [logging] Logging configuration.
  /// [logs] Defines the logs used by this service.
  /// [metrics] Defines the metrics used by this service.
  /// [monitoredResources] Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  /// [monitoring] Monitoring configuration.
  /// [name] The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  /// [producerProjectId] The Google project that owns this service.
  /// [publishing] Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  /// [quota] Quota configuration.
  /// [serviceName] Required.
  /// [systemParameters] System parameter configuration.
  /// [systemTypes] A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  /// [title] The product title for this service, it is the name displayed in Google Cloud Console.
  /// [types] A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  /// [usage] Configuration controlling usage of this service.
  ConfigArgs({
    List<Api>? apis,
    Authentication? authentication,
    Backend? backend,
    Billing? billing,
    int? configVersion,
    Context? context,
    Control? control,
    CustomError? customError,
    Documentation? documentation,
    List<Endpoint>? endpoints,
    List<Enum>? enums,
    Http? http,
    String? id,
    Logging? logging,
    List<LogDescriptor>? logs,
    List<MetricDescriptor>? metrics,
    List<MonitoredResourceDescriptor>? monitoredResources,
    Monitoring? monitoring,
    String? name,
    String? producerProjectId,
    Publishing? publishing,
    Quota? quota,
    required String serviceName,
    SystemParameters? systemParameters,
    List<Type>? systemTypes,
    String? title,
    List<Type>? types,
    Usage? usage,
  }) :
      apis = pulumi.Input.asOptionalInput<List<Api>>(apis),
      authentication = pulumi.Input.asOptionalInput<Authentication>(authentication),
      backend = pulumi.Input.asOptionalInput<Backend>(backend),
      billing = pulumi.Input.asOptionalInput<Billing>(billing),
      configVersion = pulumi.Input.asOptionalInput<int>(configVersion),
      context = pulumi.Input.asOptionalInput<Context>(context),
      control = pulumi.Input.asOptionalInput<Control>(control),
      customError = pulumi.Input.asOptionalInput<CustomError>(customError),
      documentation = pulumi.Input.asOptionalInput<Documentation>(documentation),
      endpoints = pulumi.Input.asOptionalInput<List<Endpoint>>(endpoints),
      enums = pulumi.Input.asOptionalInput<List<Enum>>(enums),
      http = pulumi.Input.asOptionalInput<Http>(http),
      id = pulumi.Input.asOptionalInput<String>(id),
      logging = pulumi.Input.asOptionalInput<Logging>(logging),
      logs = pulumi.Input.asOptionalInput<List<LogDescriptor>>(logs),
      metrics = pulumi.Input.asOptionalInput<List<MetricDescriptor>>(metrics),
      monitoredResources = pulumi.Input.asOptionalInput<List<MonitoredResourceDescriptor>>(monitoredResources),
      monitoring = pulumi.Input.asOptionalInput<Monitoring>(monitoring),
      name = pulumi.Input.asOptionalInput<String>(name),
      producerProjectId = pulumi.Input.asOptionalInput<String>(producerProjectId),
      publishing = pulumi.Input.asOptionalInput<Publishing>(publishing),
      quota = pulumi.Input.asOptionalInput<Quota>(quota),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      systemParameters = pulumi.Input.asOptionalInput<SystemParameters>(systemParameters),
      systemTypes = pulumi.Input.asOptionalInput<List<Type>>(systemTypes),
      title = pulumi.Input.asOptionalInput<String>(title),
      types = pulumi.Input.asOptionalInput<List<Type>>(types),
      usage = pulumi.Input.asOptionalInput<Usage>(usage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apis': ?pulumi.Input.mapOptionalInputValue<List<Api>, List<Map<String, dynamic>>>(apis, (value) => pulumi.Input.encodeList<Api, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authentication': ?pulumi.Input.mapOptionalInputValue<Authentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'backend': ?pulumi.Input.mapOptionalInputValue<Backend, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'billing': ?pulumi.Input.mapOptionalInputValue<Billing, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'configVersion': ?configVersion,
      'context': ?pulumi.Input.mapOptionalInputValue<Context, Map<String, dynamic>>(context, (value) => value.toMap()),
      'control': ?pulumi.Input.mapOptionalInputValue<Control, Map<String, dynamic>>(control, (value) => value.toMap()),
      'customError': ?pulumi.Input.mapOptionalInputValue<CustomError, Map<String, dynamic>>(customError, (value) => value.toMap()),
      'documentation': ?pulumi.Input.mapOptionalInputValue<Documentation, Map<String, dynamic>>(documentation, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<Endpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<Endpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enums': ?pulumi.Input.mapOptionalInputValue<List<Enum>, List<Map<String, dynamic>>>(enums, (value) => pulumi.Input.encodeList<Enum, Map<String, dynamic>>(value, (value) => value.toMap())),
      'http': ?pulumi.Input.mapOptionalInputValue<Http, Map<String, dynamic>>(http, (value) => value.toMap()),
      'id': ?id,
      'logging': ?pulumi.Input.mapOptionalInputValue<Logging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'logs': ?pulumi.Input.mapOptionalInputValue<List<LogDescriptor>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<LogDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricDescriptor>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitoredResources': ?pulumi.Input.mapOptionalInputValue<List<MonitoredResourceDescriptor>, List<Map<String, dynamic>>>(monitoredResources, (value) => pulumi.Input.encodeList<MonitoredResourceDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<Monitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'name': ?name,
      'producerProjectId': ?producerProjectId,
      'publishing': ?pulumi.Input.mapOptionalInputValue<Publishing, Map<String, dynamic>>(publishing, (value) => value.toMap()),
      'quota': ?pulumi.Input.mapOptionalInputValue<Quota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'serviceName': serviceName,
      'systemParameters': ?pulumi.Input.mapOptionalInputValue<SystemParameters, Map<String, dynamic>>(systemParameters, (value) => value.toMap()),
      'systemTypes': ?pulumi.Input.mapOptionalInputValue<List<Type>, List<Map<String, dynamic>>>(systemTypes, (value) => pulumi.Input.encodeList<Type, Map<String, dynamic>>(value, (value) => value.toMap())),
      'title': ?title,
      'types': ?pulumi.Input.mapOptionalInputValue<List<Type>, List<Map<String, dynamic>>>(types, (value) => pulumi.Input.encodeList<Type, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usage': ?pulumi.Input.mapOptionalInputValue<Usage, Map<String, dynamic>>(usage, (value) => value.toMap()),
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      apis: map['apis'] == null ? null : pulumi.Input.decodeList<Api>(map['apis'], (value) => Api.fromMap((value as Map).cast<String, dynamic>())),
      authentication: map['authentication'] == null ? null : Authentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      backend: map['backend'] == null ? null : Backend.fromMap((map['backend'] as Map).cast<String, dynamic>()),
      billing: map['billing'] == null ? null : Billing.fromMap((map['billing'] as Map).cast<String, dynamic>()),
      configVersion: map['configVersion'] == null ? null : map['configVersion'] as int,
      context: map['context'] == null ? null : Context.fromMap((map['context'] as Map).cast<String, dynamic>()),
      control: map['control'] == null ? null : Control.fromMap((map['control'] as Map).cast<String, dynamic>()),
      customError: map['customError'] == null ? null : CustomError.fromMap((map['customError'] as Map).cast<String, dynamic>()),
      documentation: map['documentation'] == null ? null : Documentation.fromMap((map['documentation'] as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<Endpoint>(map['endpoints'], (value) => Endpoint.fromMap((value as Map).cast<String, dynamic>())),
      enums: map['enums'] == null ? null : pulumi.Input.decodeList<Enum>(map['enums'], (value) => Enum.fromMap((value as Map).cast<String, dynamic>())),
      http: map['http'] == null ? null : Http.fromMap((map['http'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      logging: map['logging'] == null ? null : Logging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      logs: map['logs'] == null ? null : pulumi.Input.decodeList<LogDescriptor>(map['logs'], (value) => LogDescriptor.fromMap((value as Map).cast<String, dynamic>())),
      metrics: map['metrics'] == null ? null : pulumi.Input.decodeList<MetricDescriptor>(map['metrics'], (value) => MetricDescriptor.fromMap((value as Map).cast<String, dynamic>())),
      monitoredResources: map['monitoredResources'] == null ? null : pulumi.Input.decodeList<MonitoredResourceDescriptor>(map['monitoredResources'], (value) => MonitoredResourceDescriptor.fromMap((value as Map).cast<String, dynamic>())),
      monitoring: map['monitoring'] == null ? null : Monitoring.fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      producerProjectId: map['producerProjectId'] == null ? null : map['producerProjectId'] as String,
      publishing: map['publishing'] == null ? null : Publishing.fromMap((map['publishing'] as Map).cast<String, dynamic>()),
      quota: map['quota'] == null ? null : Quota.fromMap((map['quota'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] as String,
      systemParameters: map['systemParameters'] == null ? null : SystemParameters.fromMap((map['systemParameters'] as Map).cast<String, dynamic>()),
      systemTypes: map['systemTypes'] == null ? null : pulumi.Input.decodeList<Type>(map['systemTypes'], (value) => Type.fromMap((value as Map).cast<String, dynamic>())),
      title: map['title'] == null ? null : map['title'] as String,
      types: map['types'] == null ? null : pulumi.Input.decodeList<Type>(map['types'], (value) => Type.fromMap((value as Map).cast<String, dynamic>())),
      usage: map['usage'] == null ? null : Usage.fromMap((map['usage'] as Map).cast<String, dynamic>()),
    );
  }
}

