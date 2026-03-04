// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_access_log_settings.dart';
import 'stage_canary_settings.dart';

/// Input properties used for looking up and filtering Stage resources.
class StageState {
  /// Enables access logs for the API stage. See Access Log Settings below.
  final pulumi.Input<StageAccessLogSettings>? accessLogSettings;

  /// ARN
  final pulumi.Input<String>? arn;

  /// Whether a cache cluster is enabled for the stage
  final pulumi.Input<bool>? cacheClusterEnabled;

  /// Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`.
  final pulumi.Input<String>? cacheClusterSize;

  /// Configuration settings of a canary deployment. See Canary Settings below.
  final pulumi.Input<StageCanarySettings>? canarySettings;

  /// Identifier of a client certificate for the stage.
  final pulumi.Input<String>? clientCertificateId;

  /// ID of the deployment that the stage points to
  final pulumi.Input<String>? deployment;

  /// Description of the stage.
  final pulumi.Input<String>? description;

  /// Version of the associated API documentation.
  final pulumi.Input<String>? documentationVersion;

  /// Execution ARN to be used in `lambda_permission`'s `source_arn`
  /// when allowing API Gateway to invoke a Lambda function,
  /// e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod`
  final pulumi.Input<String>? executionArn;

  /// URL to invoke the API pointing to the stage,
  /// e.g., `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod`
  final pulumi.Input<String>? invokeUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the associated REST API
  final pulumi.Input<String>? restApi;

  /// Name of the stage
  final pulumi.Input<String>? stageName;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Map that defines the stage variables.
  final pulumi.Input<Map<String, String>>? variables;

  /// ARN of the WebAcl associated with the Stage.
  final pulumi.Input<String>? webAclArn;

  /// Whether active tracing with X-ray is enabled. Defaults to `false`.
  final pulumi.Input<bool>? xrayTracingEnabled;

  /// Creates a new [StageState].
  /// [accessLogSettings] Enables access logs for the API stage. See Access Log Settings below.
  /// [arn] ARN
  /// [cacheClusterEnabled] Whether a cache cluster is enabled for the stage
  /// [cacheClusterSize] Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`.
  /// [canarySettings] Configuration settings of a canary deployment. See Canary Settings below.
  /// [clientCertificateId] Identifier of a client certificate for the stage.
  /// [deployment] ID of the deployment that the stage points to
  /// [description] Description of the stage.
  /// [documentationVersion] Version of the associated API documentation.
  /// [executionArn] Execution ARN to be used in `lambda_permission`'s `source_arn`
  /// [invokeUrl] URL to invoke the API pointing to the stage,
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  /// [stageName] Name of the stage
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [variables] Map that defines the stage variables.
  /// [webAclArn] ARN of the WebAcl associated with the Stage.
  /// [xrayTracingEnabled] Whether active tracing with X-ray is enabled. Defaults to `false`.
  StageState({
    this.accessLogSettings,
    this.arn,
    this.cacheClusterEnabled,
    this.cacheClusterSize,
    this.canarySettings,
    this.clientCertificateId,
    this.deployment,
    this.description,
    this.documentationVersion,
    this.executionArn,
    this.invokeUrl,
    this.region,
    this.restApi,
    this.stageName,
    this.tags,
    this.tagsAll,
    this.variables,
    this.webAclArn,
    this.xrayTracingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StageAccessLogSettings,
            Map<String, dynamic>
          >(accessLogSettings, (value) => value.toMap()),
      'arn': ?arn,
      'cacheClusterEnabled': ?cacheClusterEnabled,
      'cacheClusterSize': ?cacheClusterSize,
      'canarySettings':
          ?pulumi.Input.mapOptionalInputValue<
            StageCanarySettings,
            Map<String, dynamic>
          >(canarySettings, (value) => value.toMap()),
      'clientCertificateId': ?clientCertificateId,
      'deployment': ?deployment,
      'description': ?description,
      'documentationVersion': ?documentationVersion,
      'executionArn': ?executionArn,
      'invokeUrl': ?invokeUrl,
      'region': ?region,
      'restApi': ?restApi,
      'stageName': ?stageName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'variables': ?variables,
      'webAclArn': ?webAclArn,
      'xrayTracingEnabled': ?xrayTracingEnabled,
    };
  }

  factory StageState.fromMap(Map<String, dynamic> map) {
    return StageState(
      accessLogSettings: (() {
        final guardedValue = map['accessLogSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StageAccessLogSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheClusterEnabled: (() {
        final guardedValue = map['cacheClusterEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cacheClusterSize: (() {
        final guardedValue = map['cacheClusterSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      canarySettings: (() {
        final guardedValue = map['canarySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StageCanarySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientCertificateId: (() {
        final guardedValue = map['clientCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deployment: (() {
        final guardedValue = map['deployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentationVersion: (() {
        final guardedValue = map['documentationVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionArn: (() {
        final guardedValue = map['executionArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invokeUrl: (() {
        final guardedValue = map['invokeUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restApi: (() {
        final guardedValue = map['restApi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stageName: (() {
        final guardedValue = map['stageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      variables: (() {
        final guardedValue = map['variables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      webAclArn: (() {
        final guardedValue = map['webAclArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      xrayTracingEnabled: (() {
        final guardedValue = map['xrayTracingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
