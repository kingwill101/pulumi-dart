// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stage_access_log_settings/stage_access_log_settings_apigatewayv2.dart';
import '../stage_default_route_settings/stage_default_route_settings.dart';
import '../stage_route_setting/stage_route_setting.dart';

/// The set of arguments for Stage.
class StageApigatewayv2Args {
  /// Settings for logging access in this stage.
  /// Use the `aws.apigateway.Account` resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  final pulumi.Input<StageAccessLogSettingsApigatewayv2>? accessLogSettings;

  /// API identifier.
  final pulumi.Input<String> apiId;

  /// Whether updates to an API automatically trigger a new deployment. Defaults to `false`. Applicable for HTTP APIs.
  final pulumi.Input<bool>? autoDeploy;

  /// Identifier of a client certificate for the stage. Use the `aws.apigateway.ClientCertificate` resource to configure a client certificate.
  /// Supported only for WebSocket APIs.
  final pulumi.Input<String>? clientCertificateId;

  /// Default route settings for the stage.
  final pulumi.Input<StageDefaultRouteSettings>? defaultRouteSettings;

  /// Deployment identifier of the stage. Use the `aws.apigatewayv2.Deployment` resource to configure a deployment.
  final pulumi.Input<String>? deploymentId;

  /// Description for the stage. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? description;

  /// Name of the stage. Must be between 1 and 128 characters in length.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Route settings for the stage.
  final pulumi.Input<List<StageRouteSetting>>? routeSettings;

  /// Map that defines the stage variables for the stage.
  final pulumi.Input<Map<String, String>>? stageVariables;

  /// Map of tags to assign to the stage. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  StageApigatewayv2Args({
    this.accessLogSettings,
    required this.apiId,
    this.autoDeploy,
    this.clientCertificateId,
    this.defaultRouteSettings,
    this.deploymentId,
    this.description,
    this.name,
    this.region,
    this.routeSettings,
    this.stageVariables,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLogSettingsValue = accessLogSettings;
    if (accessLogSettingsValue != null) {
      map['accessLogSettings'] = pulumi.Input.mapOptionalInputValue<
              StageAccessLogSettingsApigatewayv2, Map<String, dynamic>>(
          accessLogSettingsValue, (value) => value.toMap());
    }
    map['apiId'] = apiId;
    final autoDeployValue = autoDeploy;
    if (autoDeployValue != null) {
      map['autoDeploy'] = autoDeployValue;
    }
    final clientCertificateIdValue = clientCertificateId;
    if (clientCertificateIdValue != null) {
      map['clientCertificateId'] = clientCertificateIdValue;
    }
    final defaultRouteSettingsValue = defaultRouteSettings;
    if (defaultRouteSettingsValue != null) {
      map['defaultRouteSettings'] = pulumi.Input.mapOptionalInputValue<
              StageDefaultRouteSettings, Map<String, dynamic>>(
          defaultRouteSettingsValue, (value) => value.toMap());
    }
    final deploymentIdValue = deploymentId;
    if (deploymentIdValue != null) {
      map['deploymentId'] = deploymentIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routeSettingsValue = routeSettings;
    if (routeSettingsValue != null) {
      map['routeSettings'] = pulumi.Input.mapOptionalInputValue<
              List<StageRouteSetting>, List<Map<String, dynamic>>>(
          routeSettingsValue,
          (value) =>
              pulumi.Input.encodeList<StageRouteSetting, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final stageVariablesValue = stageVariables;
    if (stageVariablesValue != null) {
      map['stageVariables'] = stageVariablesValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory StageApigatewayv2Args.fromMap(Map<String, dynamic> map) {
    return StageApigatewayv2Args(
      accessLogSettings:
          pulumi.Input.asOptionalInput<StageAccessLogSettingsApigatewayv2>(
              map['accessLogSettings']),
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      autoDeploy: pulumi.Input.asOptionalInput<bool>(map['autoDeploy']),
      clientCertificateId:
          pulumi.Input.asOptionalInput<String>(map['clientCertificateId']),
      defaultRouteSettings:
          pulumi.Input.asOptionalInput<StageDefaultRouteSettings>(
              map['defaultRouteSettings']),
      deploymentId: pulumi.Input.asOptionalInput<String>(map['deploymentId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeSettings: pulumi.Input.asOptionalInput<List<StageRouteSetting>>(
          map['routeSettings']),
      stageVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['stageVariables']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
