// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stage_access_log_settings/stage_access_log_settings.dart';
import '../stage_canary_settings/stage_canary_settings.dart';

/// The set of arguments for Stage.
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

  StageArgs({
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
    final map = <String, dynamic>{};
    final accessLogSettingsValue = accessLogSettings;
    if (accessLogSettingsValue != null) {
      map['accessLogSettings'] = pulumi.Input.mapOptionalInputValue<
              StageAccessLogSettings, Map<String, dynamic>>(
          accessLogSettingsValue, (value) => value.toMap());
    }
    final cacheClusterEnabledValue = cacheClusterEnabled;
    if (cacheClusterEnabledValue != null) {
      map['cacheClusterEnabled'] = cacheClusterEnabledValue;
    }
    final cacheClusterSizeValue = cacheClusterSize;
    if (cacheClusterSizeValue != null) {
      map['cacheClusterSize'] = cacheClusterSizeValue;
    }
    final canarySettingsValue = canarySettings;
    if (canarySettingsValue != null) {
      map['canarySettings'] = pulumi.Input.mapOptionalInputValue<
          StageCanarySettings,
          Map<String, dynamic>>(canarySettingsValue, (value) => value.toMap());
    }
    final clientCertificateIdValue = clientCertificateId;
    if (clientCertificateIdValue != null) {
      map['clientCertificateId'] = clientCertificateIdValue;
    }
    map['deployment'] = deployment;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final documentationVersionValue = documentationVersion;
    if (documentationVersionValue != null) {
      map['documentationVersion'] = documentationVersionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    map['stageName'] = stageName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final variablesValue = variables;
    if (variablesValue != null) {
      map['variables'] = variablesValue;
    }
    final xrayTracingEnabledValue = xrayTracingEnabled;
    if (xrayTracingEnabledValue != null) {
      map['xrayTracingEnabled'] = xrayTracingEnabledValue;
    }
    return map;
  }

  factory StageArgs.fromMap(Map<String, dynamic> map) {
    return StageArgs(
      accessLogSettings: pulumi.Input.asOptionalInput<StageAccessLogSettings>(
          map['accessLogSettings']),
      cacheClusterEnabled:
          pulumi.Input.asOptionalInput<bool>(map['cacheClusterEnabled']),
      cacheClusterSize:
          pulumi.Input.asOptionalInput<String>(map['cacheClusterSize']),
      canarySettings: pulumi.Input.asOptionalInput<StageCanarySettings>(
          map['canarySettings']),
      clientCertificateId:
          pulumi.Input.asOptionalInput<String>(map['clientCertificateId']),
      deployment: pulumi.Input.asInput<String>(map['deployment']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      documentationVersion:
          pulumi.Input.asOptionalInput<String>(map['documentationVersion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApi: pulumi.Input.asInput<String>(map['restApi']),
      stageName: pulumi.Input.asInput<String>(map['stageName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      variables:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['variables']),
      xrayTracingEnabled:
          pulumi.Input.asOptionalInput<bool>(map['xrayTracingEnabled']),
    );
  }
}
