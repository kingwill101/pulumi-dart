// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_log_setting.dart';
import 'canary_setting.dart';
import 'method_setting.dart';
import 'tag.dart';

/// Definition of awsApiGatewayStage
class AwsApiGatewayStageProperties {
  /// Access log settings, including the access log format and access log destination ARN. The ``AccessLogSetting`` property type specifies settings for logging access in this stage.  ``AccessLogSetting`` is a property of the [AWS::ApiGateway::Stage](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html) resource.
  final pulumi.Input<AccessLogSetting>? accessLogSetting;
  /// Specifies whether a cache cluster is enabled for the stage.
  final pulumi.Input<bool>? cacheClusterEnabled;
  /// The stage's cache capacity in GB. For more information about choosing a cache size, see [Enabling API caching to enhance responsiveness](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html).
  final pulumi.Input<String>? cacheClusterSize;
  /// Settings for the canary deployment in this stage. Configuration settings of a canary deployment.
  final pulumi.Input<CanarySetting>? canarySetting;
  /// The identifier of a client certificate for an API stage.
  final pulumi.Input<String>? clientCertificateId;
  /// The identifier of the Deployment that the stage points to.
  final pulumi.Input<String>? deploymentId;
  /// The stage's description.
  final pulumi.Input<String>? description;
  /// The version of the associated API documentation.
  final pulumi.Input<String>? documentationVersion;
  /// A map that defines the method settings for a Stage resource. Keys (designated as ``/{method_setting_key`` below) are method paths defined as ``{resource_path}/{http_method}`` for an individual method override, or ``/\*/\*`` for overriding all methods in the stage.
  final pulumi.Input<List<MethodSetting>>? methodSettings;
  /// The string identifier of the associated RestApi.
  final pulumi.Input<String>? restApiId;
  /// The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
  final pulumi.Input<String>? stageName;
  /// The collection of tags. Each tag element is associated with a given resource.
  final pulumi.Input<List<Tag>>? tags;
  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  final pulumi.Input<bool>? tracingEnabled;
  /// A map (string-to-string map) that defines the stage variables, where the variable name is the key and the variable value is the value. Variable names are limited to alphanumeric characters. Values must match the following regular expression: ``[A-Za-z0-9-._~:/?#&=,]+``.
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [AwsApiGatewayStageProperties].
  /// [accessLogSetting] Access log settings, including the access log format and access log destination ARN. The ``AccessLogSetting`` property type specifies settings for logging access in this stage.  ``AccessLogSetting`` is a property of the [AWS::ApiGateway::Stage](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html) resource.
  /// [cacheClusterEnabled] Specifies whether a cache cluster is enabled for the stage.
  /// [cacheClusterSize] The stage's cache capacity in GB. For more information about choosing a cache size, see [Enabling API caching to enhance responsiveness](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html).
  /// [canarySetting] Settings for the canary deployment in this stage. Configuration settings of a canary deployment.
  /// [clientCertificateId] The identifier of a client certificate for an API stage.
  /// [deploymentId] The identifier of the Deployment that the stage points to.
  /// [description] The stage's description.
  /// [documentationVersion] The version of the associated API documentation.
  /// [methodSettings] A map that defines the method settings for a Stage resource. Keys (designated as ``/{method_setting_key`` below) are method paths defined as ``{resource_path}/{http_method}`` for an individual method override, or ``/\*/\*`` for overriding all methods in the stage.
  /// [restApiId] The string identifier of the associated RestApi.
  /// [stageName] The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
  /// [tags] The collection of tags. Each tag element is associated with a given resource.
  /// [tracingEnabled] Specifies whether active tracing with X-ray is enabled for the Stage.
  /// [variables] A map (string-to-string map) that defines the stage variables, where the variable name is the key and the variable value is the value. Variable names are limited to alphanumeric characters. Values must match the following regular expression: ``[A-Za-z0-9-._~:/?#&=,]+``.
  const AwsApiGatewayStageProperties({
    this.accessLogSetting,
    this.cacheClusterEnabled,
    this.cacheClusterSize,
    this.canarySetting,
    this.clientCertificateId,
    this.deploymentId,
    this.description,
    this.documentationVersion,
    this.methodSettings,
    this.restApiId,
    this.stageName,
    this.tags,
    this.tracingEnabled,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogSetting': ?pulumi.Input.mapOptionalInputValue<AccessLogSetting, Map<String, dynamic>>(accessLogSetting, (value) => value.toMap()),
      'cacheClusterEnabled': ?cacheClusterEnabled,
      'cacheClusterSize': ?cacheClusterSize,
      'canarySetting': ?pulumi.Input.mapOptionalInputValue<CanarySetting, Map<String, dynamic>>(canarySetting, (value) => value.toMap()),
      'clientCertificateId': ?clientCertificateId,
      'deploymentId': ?deploymentId,
      'description': ?description,
      'documentationVersion': ?documentationVersion,
      'methodSettings': ?pulumi.Input.mapOptionalInputValue<List<MethodSetting>, List<Map<String, dynamic>>>(methodSettings, (value) => pulumi.Input.encodeList<MethodSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restApiId': ?restApiId,
      'stageName': ?stageName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tracingEnabled': ?tracingEnabled,
      'variables': ?variables,
    };
  }

  factory AwsApiGatewayStageProperties.fromMap(Map<String, dynamic> map) {
    return AwsApiGatewayStageProperties(
      accessLogSetting: (() { final guardedValue = map['accessLogSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLogSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheClusterEnabled: (() { final guardedValue = map['cacheClusterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheClusterSize: (() { final guardedValue = map['cacheClusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      canarySetting: (() { final guardedValue = map['canarySetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CanarySetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientCertificateId: (() { final guardedValue = map['clientCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentationVersion: (() { final guardedValue = map['documentationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      methodSettings: (() { final guardedValue = map['methodSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MethodSetting>(guardedValue, (value) => MethodSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      restApiId: (() { final guardedValue = map['restApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tracingEnabled: (() { final guardedValue = map['tracingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
