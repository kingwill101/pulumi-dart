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
  final pulumi.Input<StageAccessLogSettings>? accessLogSettings;
  /// Whether a cache cluster is enabled for the stage
  final pulumi.Input<bool>? cacheClusterEnabled;
  /// Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`.
  final pulumi.Input<String>? cacheClusterSize;
  /// Configuration settings of a canary deployment. See Canary Settings below.
  final pulumi.Input<StageCanarySettings>? canarySettings;
  /// Identifier of a client certificate for the stage.
  final pulumi.Input<String>? clientCertificateId;
  /// ID of the deployment that the stage points to
  final pulumi.Input<String> deployment;
  /// Description of the stage.
  final pulumi.Input<String>? description;
  /// Version of the associated API documentation.
  final pulumi.Input<String>? documentationVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API
  final pulumi.Input<String> restApi;
  /// Name of the stage
  final pulumi.Input<String> stageName;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map that defines the stage variables.
  final pulumi.Input<Map<String, String>>? variables;
  /// Whether active tracing with X-ray is enabled. Defaults to `false`.
  final pulumi.Input<bool>? xrayTracingEnabled;

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
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [variables] Map that defines the stage variables.
  /// [xrayTracingEnabled] Whether active tracing with X-ray is enabled. Defaults to `false`.
  StageArgs({
    pulumi.Output<StageAccessLogSettings>? accessLogSettings,
    pulumi.Output<bool>? cacheClusterEnabled,
    pulumi.Output<String>? cacheClusterSize,
    pulumi.Output<StageCanarySettings>? canarySettings,
    pulumi.Output<String>? clientCertificateId,
    required pulumi.Output<String> deployment,
    pulumi.Output<String>? description,
    pulumi.Output<String>? documentationVersion,
    pulumi.Output<String>? region,
    required pulumi.Output<String> restApi,
    required pulumi.Output<String> stageName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? variables,
    pulumi.Output<bool>? xrayTracingEnabled,
  }) :
      accessLogSettings = pulumi.Input.asOptionalInput<StageAccessLogSettings>(accessLogSettings),
      cacheClusterEnabled = pulumi.Input.asOptionalInput<bool>(cacheClusterEnabled),
      cacheClusterSize = pulumi.Input.asOptionalInput<String>(cacheClusterSize),
      canarySettings = pulumi.Input.asOptionalInput<StageCanarySettings>(canarySettings),
      clientCertificateId = pulumi.Input.asOptionalInput<String>(clientCertificateId),
      deployment = pulumi.Input.asInput<String>(deployment),
      description = pulumi.Input.asOptionalInput<String>(description),
      documentationVersion = pulumi.Input.asOptionalInput<String>(documentationVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApi = pulumi.Input.asInput<String>(restApi),
      stageName = pulumi.Input.asInput<String>(stageName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      variables = pulumi.Input.asOptionalInput<Map<String, String>>(variables),
      xrayTracingEnabled = pulumi.Input.asOptionalInput<bool>(xrayTracingEnabled);

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
      accessLogSettings: map['accessLogSettings'] == null ? null : pulumi.Output.create<StageAccessLogSettings>(StageAccessLogSettings.fromMap((map['accessLogSettings'] as Map).cast<String, dynamic>())),
      cacheClusterEnabled: map['cacheClusterEnabled'] == null ? null : pulumi.Output.create<bool>(map['cacheClusterEnabled'] as bool),
      cacheClusterSize: map['cacheClusterSize'] == null ? null : pulumi.Output.create<String>(map['cacheClusterSize'] as String),
      canarySettings: map['canarySettings'] == null ? null : pulumi.Output.create<StageCanarySettings>(StageCanarySettings.fromMap((map['canarySettings'] as Map).cast<String, dynamic>())),
      clientCertificateId: map['clientCertificateId'] == null ? null : pulumi.Output.create<String>(map['clientCertificateId'] as String),
      deployment: pulumi.Output.create<String>(map['deployment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      documentationVersion: map['documentationVersion'] == null ? null : pulumi.Output.create<String>(map['documentationVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApi: pulumi.Output.create<String>(map['restApi'] as String),
      stageName: pulumi.Output.create<String>(map['stageName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      variables: map['variables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['variables'] as Map).cast<String, String>()),
      xrayTracingEnabled: map['xrayTracingEnabled'] == null ? null : pulumi.Output.create<bool>(map['xrayTracingEnabled'] as bool),
    );
  }
}

