// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_constant_parameter.dart';
import 'api_fc_service_config.dart';
import 'api_http_service_config.dart';
import 'api_http_vpc_service_config.dart';
import 'api_mock_service_config.dart';
import 'api_request_config.dart';
import 'api_request_parameter.dart';
import 'api_system_parameter.dart';

/// {@template pulumi_apigateway_api_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigateway_api_api_args_doc}
class ApiArgs {
  /// The authorization Type including APP and ANONYMOUS. Defaults to null.
  final pulumi.Input<String> authType;
  /// constant_parameters defines the constant parameters of the api. See `constant_parameters` below.
  final pulumi.Input<List<ApiConstantParameter>>? constantParameters;
  /// The description of the api. Defaults to null.
  final pulumi.Input<String> description;
  /// fc_service_config defines the config when service_type selected 'FunctionCompute'. See `fc_service_config` below.
  final pulumi.Input<ApiFcServiceConfig>? fcServiceConfig;
  /// Whether to prevent API replay attack. Default value: `false`.
  final pulumi.Input<bool>? forceNonceCheck;
  /// The api gateway that the api belongs to. Defaults to null.
  final pulumi.Input<String> groupId;
  /// http_service_config defines the config when service_type selected 'HTTP'. See `http_service_config` below.
  final pulumi.Input<ApiHttpServiceConfig>? httpServiceConfig;
  /// http_vpc_service_config defines the config when service_type selected 'HTTP-VPC'. See `http_vpc_service_config` below.
  final pulumi.Input<ApiHttpVpcServiceConfig>? httpVpcServiceConfig;
  /// http_service_config defines the config when service_type selected 'MOCK'. See `mock_service_config` below.
  final pulumi.Input<ApiMockServiceConfig>? mockServiceConfig;
  /// The name of the api gateway api. Defaults to null.
  final pulumi.Input<String>? name;
  /// Request_config defines how users can send requests to your API. See `request_config` below.
  final pulumi.Input<ApiRequestConfig> requestConfig;
  /// request_parameters defines the request parameters of the api. See `request_parameters` below.
  final pulumi.Input<List<ApiRequestParameter>>? requestParameters;
  /// The type of backend service. Type including HTTP, VPC, FunctionCompute and MOCK. Defaults to null.
  final pulumi.Input<String> serviceType;
  /// Stages that the api need to be deployed. Valid value: `RELEASE`,`PRE`,`TEST`.
  final pulumi.Input<List<String>>? stageNames;
  /// system_parameters defines the system parameters of the api. See `system_parameters` below.
  final pulumi.Input<List<ApiSystemParameter>>? systemParameters;

  /// Creates a new [ApiArgs].
  /// [authType] The authorization Type including APP and ANONYMOUS. Defaults to null.
  /// [constantParameters] constant_parameters defines the constant parameters of the api. See `constant_parameters` below.
  /// [description] The description of the api. Defaults to null.
  /// [fcServiceConfig] fc_service_config defines the config when service_type selected 'FunctionCompute'. See `fc_service_config` below.
  /// [forceNonceCheck] Whether to prevent API replay attack. Default value: `false`.
  /// [groupId] The api gateway that the api belongs to. Defaults to null.
  /// [httpServiceConfig] http_service_config defines the config when service_type selected 'HTTP'. See `http_service_config` below.
  /// [httpVpcServiceConfig] http_vpc_service_config defines the config when service_type selected 'HTTP-VPC'. See `http_vpc_service_config` below.
  /// [mockServiceConfig] http_service_config defines the config when service_type selected 'MOCK'. See `mock_service_config` below.
  /// [name] The name of the api gateway api. Defaults to null.
  /// [requestConfig] Request_config defines how users can send requests to your API. See `request_config` below.
  /// [requestParameters] request_parameters defines the request parameters of the api. See `request_parameters` below.
  /// [serviceType] The type of backend service. Type including HTTP, VPC, FunctionCompute and MOCK. Defaults to null.
  /// [stageNames] Stages that the api need to be deployed. Valid value: `RELEASE`,`PRE`,`TEST`.
  /// [systemParameters] system_parameters defines the system parameters of the api. See `system_parameters` below.
  ApiArgs({
    required String authType,
    List<ApiConstantParameter>? constantParameters,
    required String description,
    ApiFcServiceConfig? fcServiceConfig,
    bool? forceNonceCheck,
    required String groupId,
    ApiHttpServiceConfig? httpServiceConfig,
    ApiHttpVpcServiceConfig? httpVpcServiceConfig,
    ApiMockServiceConfig? mockServiceConfig,
    String? name,
    required ApiRequestConfig requestConfig,
    List<ApiRequestParameter>? requestParameters,
    required String serviceType,
    List<String>? stageNames,
    List<ApiSystemParameter>? systemParameters,
  }) :
      authType = pulumi.Input.asInput<String>(authType),
      constantParameters = pulumi.Input.asOptionalInput<List<ApiConstantParameter>>(constantParameters),
      description = pulumi.Input.asInput<String>(description),
      fcServiceConfig = pulumi.Input.asOptionalInput<ApiFcServiceConfig>(fcServiceConfig),
      forceNonceCheck = pulumi.Input.asOptionalInput<bool>(forceNonceCheck),
      groupId = pulumi.Input.asInput<String>(groupId),
      httpServiceConfig = pulumi.Input.asOptionalInput<ApiHttpServiceConfig>(httpServiceConfig),
      httpVpcServiceConfig = pulumi.Input.asOptionalInput<ApiHttpVpcServiceConfig>(httpVpcServiceConfig),
      mockServiceConfig = pulumi.Input.asOptionalInput<ApiMockServiceConfig>(mockServiceConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      requestConfig = pulumi.Input.asInput<ApiRequestConfig>(requestConfig),
      requestParameters = pulumi.Input.asOptionalInput<List<ApiRequestParameter>>(requestParameters),
      serviceType = pulumi.Input.asInput<String>(serviceType),
      stageNames = pulumi.Input.asOptionalInput<List<String>>(stageNames),
      systemParameters = pulumi.Input.asOptionalInput<List<ApiSystemParameter>>(systemParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'constantParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiConstantParameter>, List<Map<String, dynamic>>>(constantParameters, (value) => pulumi.Input.encodeList<ApiConstantParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'fcServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiFcServiceConfig, Map<String, dynamic>>(fcServiceConfig, (value) => value.toMap()),
      'forceNonceCheck': ?forceNonceCheck,
      'groupId': groupId,
      'httpServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiHttpServiceConfig, Map<String, dynamic>>(httpServiceConfig, (value) => value.toMap()),
      'httpVpcServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiHttpVpcServiceConfig, Map<String, dynamic>>(httpVpcServiceConfig, (value) => value.toMap()),
      'mockServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiMockServiceConfig, Map<String, dynamic>>(mockServiceConfig, (value) => value.toMap()),
      'name': ?name,
      'requestConfig': pulumi.Input.mapInputValue<ApiRequestConfig, Map<String, dynamic>>(requestConfig, (value) => value.toMap()),
      'requestParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiRequestParameter>, List<Map<String, dynamic>>>(requestParameters, (value) => pulumi.Input.encodeList<ApiRequestParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceType': serviceType,
      'stageNames': ?stageNames,
      'systemParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiSystemParameter>, List<Map<String, dynamic>>>(systemParameters, (value) => pulumi.Input.encodeList<ApiSystemParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      authType: map['authType'] as String,
      constantParameters: map['constantParameters'] == null ? null : pulumi.Input.decodeList<ApiConstantParameter>(map['constantParameters'], (value) => ApiConstantParameter.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      fcServiceConfig: map['fcServiceConfig'] == null ? null : ApiFcServiceConfig.fromMap((map['fcServiceConfig'] as Map).cast<String, dynamic>()),
      forceNonceCheck: map['forceNonceCheck'] == null ? null : map['forceNonceCheck'] as bool,
      groupId: map['groupId'] as String,
      httpServiceConfig: map['httpServiceConfig'] == null ? null : ApiHttpServiceConfig.fromMap((map['httpServiceConfig'] as Map).cast<String, dynamic>()),
      httpVpcServiceConfig: map['httpVpcServiceConfig'] == null ? null : ApiHttpVpcServiceConfig.fromMap((map['httpVpcServiceConfig'] as Map).cast<String, dynamic>()),
      mockServiceConfig: map['mockServiceConfig'] == null ? null : ApiMockServiceConfig.fromMap((map['mockServiceConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      requestConfig: ApiRequestConfig.fromMap((map['requestConfig'] as Map).cast<String, dynamic>()),
      requestParameters: map['requestParameters'] == null ? null : pulumi.Input.decodeList<ApiRequestParameter>(map['requestParameters'], (value) => ApiRequestParameter.fromMap((value as Map).cast<String, dynamic>())),
      serviceType: map['serviceType'] as String,
      stageNames: map['stageNames'] == null ? null : (map['stageNames'] as List).cast<String>(),
      systemParameters: map['systemParameters'] == null ? null : pulumi.Input.decodeList<ApiSystemParameter>(map['systemParameters'], (value) => ApiSystemParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

