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

/// Input properties used for looking up and filtering Api resources.
class ApiState {
  /// The ID of the api of api gateway.
  final pulumi.Input<String>? apiId;
  /// The authorization Type including APP and ANONYMOUS. Defaults to null.
  final pulumi.Input<String>? authType;
  /// constant_parameters defines the constant parameters of the api. See `constant_parameters` below.
  final pulumi.Input<List<ApiConstantParameter>>? constantParameters;
  /// The description of the api. Defaults to null.
  final pulumi.Input<String>? description;
  /// fc_service_config defines the config when service_type selected 'FunctionCompute'. See `fc_service_config` below.
  final pulumi.Input<ApiFcServiceConfig>? fcServiceConfig;
  /// Whether to prevent API replay attack. Default value: `false`.
  final pulumi.Input<bool>? forceNonceCheck;
  /// The api gateway that the api belongs to. Defaults to null.
  final pulumi.Input<String>? groupId;
  /// http_service_config defines the config when service_type selected 'HTTP'. See `http_service_config` below.
  final pulumi.Input<ApiHttpServiceConfig>? httpServiceConfig;
  /// http_vpc_service_config defines the config when service_type selected 'HTTP-VPC'. See `http_vpc_service_config` below.
  final pulumi.Input<ApiHttpVpcServiceConfig>? httpVpcServiceConfig;
  /// http_service_config defines the config when service_type selected 'MOCK'. See `mock_service_config` below.
  final pulumi.Input<ApiMockServiceConfig>? mockServiceConfig;
  /// The name of the api gateway api. Defaults to null.
  final pulumi.Input<String>? name;
  /// Request_config defines how users can send requests to your API. See `request_config` below.
  final pulumi.Input<ApiRequestConfig>? requestConfig;
  /// request_parameters defines the request parameters of the api. See `request_parameters` below.
  final pulumi.Input<List<ApiRequestParameter>>? requestParameters;
  /// The type of backend service. Type including HTTP, VPC, FunctionCompute and MOCK. Defaults to null.
  final pulumi.Input<String>? serviceType;
  /// Stages that the api need to be deployed. Valid value: `RELEASE`,`PRE`,`TEST`.
  final pulumi.Input<List<String>>? stageNames;
  /// system_parameters defines the system parameters of the api. See `system_parameters` below.
  final pulumi.Input<List<ApiSystemParameter>>? systemParameters;

  /// Creates a new [ApiState].
  /// [apiId] The ID of the api of api gateway.
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
  ApiState({
    this.apiId,
    this.authType,
    this.constantParameters,
    this.description,
    this.fcServiceConfig,
    this.forceNonceCheck,
    this.groupId,
    this.httpServiceConfig,
    this.httpVpcServiceConfig,
    this.mockServiceConfig,
    this.name,
    this.requestConfig,
    this.requestParameters,
    this.serviceType,
    this.stageNames,
    this.systemParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'authType': ?authType,
      'constantParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiConstantParameter>, List<Map<String, dynamic>>>(constantParameters, (value) => pulumi.Input.encodeList<ApiConstantParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'fcServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiFcServiceConfig, Map<String, dynamic>>(fcServiceConfig, (value) => value.toMap()),
      'forceNonceCheck': ?forceNonceCheck,
      'groupId': ?groupId,
      'httpServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiHttpServiceConfig, Map<String, dynamic>>(httpServiceConfig, (value) => value.toMap()),
      'httpVpcServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiHttpVpcServiceConfig, Map<String, dynamic>>(httpVpcServiceConfig, (value) => value.toMap()),
      'mockServiceConfig': ?pulumi.Input.mapOptionalInputValue<ApiMockServiceConfig, Map<String, dynamic>>(mockServiceConfig, (value) => value.toMap()),
      'name': ?name,
      'requestConfig': ?pulumi.Input.mapOptionalInputValue<ApiRequestConfig, Map<String, dynamic>>(requestConfig, (value) => value.toMap()),
      'requestParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiRequestParameter>, List<Map<String, dynamic>>>(requestParameters, (value) => pulumi.Input.encodeList<ApiRequestParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceType': ?serviceType,
      'stageNames': ?stageNames,
      'systemParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiSystemParameter>, List<Map<String, dynamic>>>(systemParameters, (value) => pulumi.Input.encodeList<ApiSystemParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiState.fromMap(Map<String, dynamic> map) {
    return ApiState(
      apiId: map['apiId'] == null ? null : (map['apiId'] as String).input(),
      authType: map['authType'] == null ? null : (map['authType'] as String).input(),
      constantParameters: map['constantParameters'] == null ? null : (pulumi.Input.decodeList<ApiConstantParameter>(map['constantParameters'], (value) => ApiConstantParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fcServiceConfig: map['fcServiceConfig'] == null ? null : (ApiFcServiceConfig.fromMap((map['fcServiceConfig'] as Map).cast<String, dynamic>())).input(),
      forceNonceCheck: map['forceNonceCheck'] == null ? null : (map['forceNonceCheck'] as bool).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      httpServiceConfig: map['httpServiceConfig'] == null ? null : (ApiHttpServiceConfig.fromMap((map['httpServiceConfig'] as Map).cast<String, dynamic>())).input(),
      httpVpcServiceConfig: map['httpVpcServiceConfig'] == null ? null : (ApiHttpVpcServiceConfig.fromMap((map['httpVpcServiceConfig'] as Map).cast<String, dynamic>())).input(),
      mockServiceConfig: map['mockServiceConfig'] == null ? null : (ApiMockServiceConfig.fromMap((map['mockServiceConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      requestConfig: map['requestConfig'] == null ? null : (ApiRequestConfig.fromMap((map['requestConfig'] as Map).cast<String, dynamic>())).input(),
      requestParameters: map['requestParameters'] == null ? null : (pulumi.Input.decodeList<ApiRequestParameter>(map['requestParameters'], (value) => ApiRequestParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType'] as String).input(),
      stageNames: map['stageNames'] == null ? null : ((map['stageNames'] as List).cast<String>()).input(),
      systemParameters: map['systemParameters'] == null ? null : (pulumi.Input.decodeList<ApiSystemParameter>(map['systemParameters'], (value) => ApiSystemParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

