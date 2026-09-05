// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_access_log_settings.dart';
import 'stage_canary_settings.dart';

/// {@template pulumi_apigateway_stage_stage_args_doc}
/// The set of arguments for Stage.
/// {@endtemplate}
/// {@macro pulumi_apigateway_stage_stage_args_doc}
class StageArgs {
  /// Enables access logs for the API stage. See Access Log Settings below.
  final pulumi.Input<StageAccessLogSettings?>? accessLogSettings;
  /// Whether a cache cluster is enabled for the stage
  final pulumi.Input<bool?>? cacheClusterEnabled;
  /// Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`.
  final pulumi.Input<String?>? cacheClusterSize;
  /// Configuration settings of a canary deployment. See Canary Settings below.
  final pulumi.Input<StageCanarySettings?>? canarySettings;
  /// Identifier of a client certificate for the stage.
  final pulumi.Input<String?>? clientCertificateId;
  /// ID of the deployment that the stage points to
  final pulumi.Input<dynamic> deployment;
  /// Description of the stage.
  final pulumi.Input<String?>? description;
  /// Version of the associated API documentation.
  final pulumi.Input<String?>? documentationVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the associated REST API
  final pulumi.Input<dynamic> restApi;
  /// Name of the stage
  final pulumi.Input<String> stageName;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map that defines the stage variables.
  final pulumi.Input<Map<String, String>?>? variables;
  /// Whether active tracing with X-ray is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? xrayTracingEnabled;

  /// Creates a new [StageArgs].
  /// [accessLogSettings] Enables access logs for the API stage. See Access Log Settings below.
  /// [cacheClusterEnabled] Whether a cache cluster is enabled for the stage
  /// [cacheClusterSize] Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`.
  /// [canarySettings] Configuration settings of a canary deployment. See Canary Settings below.
  /// [clientCertificateId] Identifier of a client certificate for the stage.
  /// [deployment] ID of the deployment that the stage points to
  /// [description] Description of the stage.
  /// [documentationVersion] Version of the associated API documentation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  /// [stageName] Name of the stage
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [variables] Map that defines the stage variables.
  /// [xrayTracingEnabled] Whether active tracing with X-ray is enabled. Defaults to `false`.
  const StageArgs({
    this.accessLogSettings,
    this.cacheClusterEnabled,
    this.cacheClusterSize,
    this.canarySettings,
    this.clientCertificateId,
    required this.deployment,
    this.description,
    this.documentationVersion,
    this.region,
    required this.restApi,
    required this.stageName,
    this.tags,
    this.variables,
    this.xrayTracingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogSettings': ?pulumi.Input.mapOptionalInputValue<StageAccessLogSettings, Map<String, dynamic>>(accessLogSettings, (value) => value.toMap()),
      'cacheClusterEnabled': ?cacheClusterEnabled,
      'cacheClusterSize': ?cacheClusterSize,
      'canarySettings': ?pulumi.Input.mapOptionalInputValue<StageCanarySettings, Map<String, dynamic>>(canarySettings, (value) => value.toMap()),
      'clientCertificateId': ?clientCertificateId,
      'deployment': deployment,
      'description': ?description,
      'documentationVersion': ?documentationVersion,
      'region': ?region,
      'restApi': restApi,
      'stageName': stageName,
      'tags': ?tags,
      'variables': ?variables,
      'xrayTracingEnabled': ?xrayTracingEnabled,
    };
  }

  factory StageArgs.fromMap(Map<String, dynamic> map) {
    return StageArgs(
      accessLogSettings: (() { final guardedValue = map['accessLogSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StageAccessLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheClusterEnabled: (() { final guardedValue = map['cacheClusterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheClusterSize: (() { final guardedValue = map['cacheClusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      canarySettings: (() { final guardedValue = map['canarySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StageCanarySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientCertificateId: (() { final guardedValue = map['clientCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployment: pulumi.Input.fromValue(map['deployment']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentationVersion: (() { final guardedValue = map['documentationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApi: pulumi.Input.fromValue(map['restApi']),
      stageName: pulumi.Input.fromValue(map['stageName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      xrayTracingEnabled: (() { final guardedValue = map['xrayTracingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
