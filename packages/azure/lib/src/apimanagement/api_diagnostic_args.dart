// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_backend_request.dart';
import 'api_diagnostic_backend_response.dart';
import 'api_diagnostic_frontend_request.dart';
import 'api_diagnostic_frontend_response.dart';

/// {@template pulumi_apimanagement_api_diagnostic_api_diagnostic_args_doc}
/// The set of arguments for ApiDiagnostic.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_diagnostic_api_diagnostic_args_doc}
class ApiDiagnosticArgs {
  /// Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  final pulumi.Input<bool>? alwaysLogErrors;
  /// The ID (name) of the Diagnostics Logger.
  final pulumi.Input<String> apiManagementLoggerId;
  /// The name of the API Management Service instance. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String> apiManagementName;
  /// The name of the API on which to configure the Diagnostics Logs. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String> apiName;
  /// A `backend_request` block as defined below.
  final pulumi.Input<ApiDiagnosticBackendRequest>? backendRequest;
  /// A `backend_response` block as defined below.
  final pulumi.Input<ApiDiagnosticBackendResponse>? backendResponse;
  /// A `frontend_request` block as defined below.
  final pulumi.Input<ApiDiagnosticFrontendRequest>? frontendRequest;
  /// A `frontend_response` block as defined below.
  final pulumi.Input<ApiDiagnosticFrontendResponse>? frontendResponse;
  /// The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  final pulumi.Input<String>? httpCorrelationProtocol;
  /// Identifier of the Diagnostics Logs. Possible values are `applicationinsights` and `azuremonitor`. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String> identifier;
  /// Log client IP address.
  final pulumi.Input<bool>? logClientIp;
  /// The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`.
  final pulumi.Input<String>? operationNameFormat;
  /// The name of the Resource Group where the API Management Service API Diagnostics Logs should exist. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  final pulumi.Input<double>? samplingPercentage;
  /// Logging verbosity. Possible values are `verbose`, `information` or `error`.
  final pulumi.Input<String>? verbosity;

  /// Creates a new [ApiDiagnosticArgs].
  /// [alwaysLogErrors] Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  /// [apiManagementLoggerId] The ID (name) of the Diagnostics Logger.
  /// [apiManagementName] The name of the API Management Service instance. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [apiName] The name of the API on which to configure the Diagnostics Logs. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [backendRequest] A `backend_request` block as defined below.
  /// [backendResponse] A `backend_response` block as defined below.
  /// [frontendRequest] A `frontend_request` block as defined below.
  /// [frontendResponse] A `frontend_response` block as defined below.
  /// [httpCorrelationProtocol] The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  /// [identifier] Identifier of the Diagnostics Logs. Possible values are `applicationinsights` and `azuremonitor`. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [logClientIp] Log client IP address.
  /// [operationNameFormat] The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`.
  /// [resourceGroupName] The name of the Resource Group where the API Management Service API Diagnostics Logs should exist. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [samplingPercentage] Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  /// [verbosity] Logging verbosity. Possible values are `verbose`, `information` or `error`.
  ApiDiagnosticArgs({
    bool? alwaysLogErrors,
    required String apiManagementLoggerId,
    required String apiManagementName,
    required String apiName,
    ApiDiagnosticBackendRequest? backendRequest,
    ApiDiagnosticBackendResponse? backendResponse,
    ApiDiagnosticFrontendRequest? frontendRequest,
    ApiDiagnosticFrontendResponse? frontendResponse,
    String? httpCorrelationProtocol,
    required String identifier,
    bool? logClientIp,
    String? operationNameFormat,
    required String resourceGroupName,
    double? samplingPercentage,
    String? verbosity,
  }) :
      alwaysLogErrors = pulumi.Input.asOptionalInput<bool>(alwaysLogErrors),
      apiManagementLoggerId = pulumi.Input.asInput<String>(apiManagementLoggerId),
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      apiName = pulumi.Input.asInput<String>(apiName),
      backendRequest = pulumi.Input.asOptionalInput<ApiDiagnosticBackendRequest>(backendRequest),
      backendResponse = pulumi.Input.asOptionalInput<ApiDiagnosticBackendResponse>(backendResponse),
      frontendRequest = pulumi.Input.asOptionalInput<ApiDiagnosticFrontendRequest>(frontendRequest),
      frontendResponse = pulumi.Input.asOptionalInput<ApiDiagnosticFrontendResponse>(frontendResponse),
      httpCorrelationProtocol = pulumi.Input.asOptionalInput<String>(httpCorrelationProtocol),
      identifier = pulumi.Input.asInput<String>(identifier),
      logClientIp = pulumi.Input.asOptionalInput<bool>(logClientIp),
      operationNameFormat = pulumi.Input.asOptionalInput<String>(operationNameFormat),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      samplingPercentage = pulumi.Input.asOptionalInput<double>(samplingPercentage),
      verbosity = pulumi.Input.asOptionalInput<String>(verbosity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLogErrors': ?alwaysLogErrors,
      'apiManagementLoggerId': apiManagementLoggerId,
      'apiManagementName': apiManagementName,
      'apiName': apiName,
      'backendRequest': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticBackendRequest, Map<String, dynamic>>(backendRequest, (value) => value.toMap()),
      'backendResponse': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticBackendResponse, Map<String, dynamic>>(backendResponse, (value) => value.toMap()),
      'frontendRequest': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticFrontendRequest, Map<String, dynamic>>(frontendRequest, (value) => value.toMap()),
      'frontendResponse': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticFrontendResponse, Map<String, dynamic>>(frontendResponse, (value) => value.toMap()),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'identifier': identifier,
      'logClientIp': ?logClientIp,
      'operationNameFormat': ?operationNameFormat,
      'resourceGroupName': resourceGroupName,
      'samplingPercentage': ?samplingPercentage,
      'verbosity': ?verbosity,
    };
  }

  factory ApiDiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticArgs(
      alwaysLogErrors: map['alwaysLogErrors'] == null ? null : map['alwaysLogErrors'] as bool,
      apiManagementLoggerId: map['apiManagementLoggerId'] as String,
      apiManagementName: map['apiManagementName'] as String,
      apiName: map['apiName'] as String,
      backendRequest: map['backendRequest'] == null ? null : ApiDiagnosticBackendRequest.fromMap((map['backendRequest'] as Map).cast<String, dynamic>()),
      backendResponse: map['backendResponse'] == null ? null : ApiDiagnosticBackendResponse.fromMap((map['backendResponse'] as Map).cast<String, dynamic>()),
      frontendRequest: map['frontendRequest'] == null ? null : ApiDiagnosticFrontendRequest.fromMap((map['frontendRequest'] as Map).cast<String, dynamic>()),
      frontendResponse: map['frontendResponse'] == null ? null : ApiDiagnosticFrontendResponse.fromMap((map['frontendResponse'] as Map).cast<String, dynamic>()),
      httpCorrelationProtocol: map['httpCorrelationProtocol'] == null ? null : map['httpCorrelationProtocol'] as String,
      identifier: map['identifier'] as String,
      logClientIp: map['logClientIp'] == null ? null : map['logClientIp'] as bool,
      operationNameFormat: map['operationNameFormat'] == null ? null : map['operationNameFormat'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      samplingPercentage: map['samplingPercentage'] == null ? null : map['samplingPercentage'] as double,
      verbosity: map['verbosity'] == null ? null : map['verbosity'] as String,
    );
  }
}

