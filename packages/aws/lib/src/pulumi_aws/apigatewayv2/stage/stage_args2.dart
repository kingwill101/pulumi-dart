// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stage_access_log_settings/stage_access_log_settings2.dart';
import '../stage_default_route_settings/stage_default_route_settings.dart';
import '../stage_route_setting/stage_route_setting.dart';

/// The set of arguments for Stage.
class StageArgs2 {
  /// Settings for logging access in this stage.
  /// Use the <span pulumi-lang-nodejs="`aws.apigateway.Account`" pulumi-lang-dotnet="`aws.apigateway.Account`" pulumi-lang-go="`apigateway.Account`" pulumi-lang-python="`apigateway.Account`" pulumi-lang-yaml="`aws.apigateway.Account`" pulumi-lang-java="`aws.apigateway.Account`">`aws.apigateway.Account`</span> resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  final Input<StageAccessLogSettings2>? accessLogSettings;

  /// API identifier.
  final Input<String> apiId;

  /// Whether updates to an API automatically trigger a new deployment. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Applicable for HTTP APIs.
  final Input<bool>? autoDeploy;

  /// Identifier of a client certificate for the stage. Use the <span pulumi-lang-nodejs="`aws.apigateway.ClientCertificate`" pulumi-lang-dotnet="`aws.apigateway.ClientCertificate`" pulumi-lang-go="`apigateway.ClientCertificate`" pulumi-lang-python="`apigateway.ClientCertificate`" pulumi-lang-yaml="`aws.apigateway.ClientCertificate`" pulumi-lang-java="`aws.apigateway.ClientCertificate`">`aws.apigateway.ClientCertificate`</span> resource to configure a client certificate.
  /// Supported only for WebSocket APIs.
  final Input<String>? clientCertificateId;

  /// Default route settings for the stage.
  final Input<StageDefaultRouteSettings>? defaultRouteSettings;

  /// Deployment identifier of the stage. Use the <span pulumi-lang-nodejs="`aws.apigatewayv2.Deployment`" pulumi-lang-dotnet="`aws.apigatewayv2.Deployment`" pulumi-lang-go="`apigatewayv2.Deployment`" pulumi-lang-python="`apigatewayv2.Deployment`" pulumi-lang-yaml="`aws.apigatewayv2.Deployment`" pulumi-lang-java="`aws.apigatewayv2.Deployment`">`aws.apigatewayv2.Deployment`</span> resource to configure a deployment.
  final Input<String>? deploymentId;

  /// Description for the stage. Must be less than or equal to 1024 characters in length.
  final Input<String>? description;

  /// Name of the stage. Must be between 1 and 128 characters in length.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Route settings for the stage.
  final Input<List<StageRouteSetting>>? routeSettings;

  /// Map that defines the stage variables for the stage.
  final Input<Map<String, String>>? stageVariables;

  /// Map of tags to assign to the stage. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  StageArgs2({
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
      map['accessLogSettings'] = Input.mapOptionalInputValue<
              StageAccessLogSettings2, Map<String, dynamic>>(
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
      map['defaultRouteSettings'] = Input.mapOptionalInputValue<
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
      map['routeSettings'] = Input.mapOptionalInputValue<
              List<StageRouteSetting>, List<Map<String, dynamic>>>(
          routeSettingsValue,
          (value) => Input.encodeList<StageRouteSetting, Map<String, dynamic>>(
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

  factory StageArgs2.fromMap(Map<String, dynamic> map) {
    return StageArgs2(
      accessLogSettings: Input.asOptionalInput<StageAccessLogSettings2>(
          map['accessLogSettings']),
      apiId: Input.asInput<String>(map['apiId']),
      autoDeploy: Input.asOptionalInput<bool>(map['autoDeploy']),
      clientCertificateId:
          Input.asOptionalInput<String>(map['clientCertificateId']),
      defaultRouteSettings: Input.asOptionalInput<StageDefaultRouteSettings>(
          map['defaultRouteSettings']),
      deploymentId: Input.asOptionalInput<String>(map['deploymentId']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      routeSettings:
          Input.asOptionalInput<List<StageRouteSetting>>(map['routeSettings']),
      stageVariables:
          Input.asOptionalInput<Map<String, String>>(map['stageVariables']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
