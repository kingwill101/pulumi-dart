// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_access_log_settings.dart';
import 'stage_default_route_settings.dart';
import 'stage_route_setting.dart';

/// {@template pulumi_apigatewayv2_stage_stage_args_doc}
/// The set of arguments for Stage.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_stage_stage_args_doc}
class StageArgs {
  /// Settings for logging access in this stage.
  /// Use the `aws.apigateway.Account` resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  final pulumi.Input<StageAccessLogSettings>? accessLogSettings;

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

  /// Creates a new [StageArgs].
  /// [accessLogSettings] Settings for logging access in this stage.
  /// [apiId] API identifier.
  /// [autoDeploy] Whether updates to an API automatically trigger a new deployment. Defaults to `false`. Applicable for HTTP APIs.
  /// [clientCertificateId] Identifier of a client certificate for the stage. Use the `aws.apigateway.ClientCertificate` resource to configure a client certificate.
  /// [defaultRouteSettings] Default route settings for the stage.
  /// [deploymentId] Deployment identifier of the stage. Use the `aws.apigatewayv2.Deployment` resource to configure a deployment.
  /// [description] Description for the stage. Must be less than or equal to 1024 characters in length.
  /// [name] Name of the stage. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeSettings] Route settings for the stage.
  /// [stageVariables] Map that defines the stage variables for the stage.
  /// [tags] Map of tags to assign to the stage. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  StageArgs({
    StageAccessLogSettings? accessLogSettings,
    required String apiId,
    bool? autoDeploy,
    String? clientCertificateId,
    StageDefaultRouteSettings? defaultRouteSettings,
    String? deploymentId,
    String? description,
    String? name,
    String? region,
    List<StageRouteSetting>? routeSettings,
    Map<String, String>? stageVariables,
    Map<String, String>? tags,
  }) : accessLogSettings = pulumi.Input.asOptionalInput<StageAccessLogSettings>(
         accessLogSettings,
       ),
       apiId = pulumi.Input.asInput<String>(apiId),
       autoDeploy = pulumi.Input.asOptionalInput<bool>(autoDeploy),
       clientCertificateId = pulumi.Input.asOptionalInput<String>(
         clientCertificateId,
       ),
       defaultRouteSettings =
           pulumi.Input.asOptionalInput<StageDefaultRouteSettings>(
             defaultRouteSettings,
           ),
       deploymentId = pulumi.Input.asOptionalInput<String>(deploymentId),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       routeSettings = pulumi.Input.asOptionalInput<List<StageRouteSetting>>(
         routeSettings,
       ),
       stageVariables = pulumi.Input.asOptionalInput<Map<String, String>>(
         stageVariables,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StageAccessLogSettings,
            Map<String, dynamic>
          >(accessLogSettings, (value) => value.toMap()),
      'apiId': apiId,
      'autoDeploy': ?autoDeploy,
      'clientCertificateId': ?clientCertificateId,
      'defaultRouteSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StageDefaultRouteSettings,
            Map<String, dynamic>
          >(defaultRouteSettings, (value) => value.toMap()),
      'deploymentId': ?deploymentId,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'routeSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<StageRouteSetting>,
            List<Map<String, dynamic>>
          >(
            routeSettings,
            (value) =>
                pulumi.Input.encodeList<
                  StageRouteSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stageVariables': ?stageVariables,
      'tags': ?tags,
    };
  }

  factory StageArgs.fromMap(Map<String, dynamic> map) {
    return StageArgs(
      accessLogSettings: map['accessLogSettings'] == null
          ? null
          : StageAccessLogSettings.fromMap(
              (map['accessLogSettings'] as Map).cast<String, dynamic>(),
            ),
      apiId: map['apiId'] as String,
      autoDeploy: map['autoDeploy'] == null ? null : map['autoDeploy'] as bool,
      clientCertificateId: map['clientCertificateId'] == null
          ? null
          : map['clientCertificateId'] as String,
      defaultRouteSettings: map['defaultRouteSettings'] == null
          ? null
          : StageDefaultRouteSettings.fromMap(
              (map['defaultRouteSettings'] as Map).cast<String, dynamic>(),
            ),
      deploymentId: map['deploymentId'] == null
          ? null
          : map['deploymentId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routeSettings: map['routeSettings'] == null
          ? null
          : pulumi.Input.decodeList<StageRouteSetting>(
              map['routeSettings'],
              (value) => StageRouteSetting.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      stageVariables: map['stageVariables'] == null
          ? null
          : (map['stageVariables'] as Map).cast<String, String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
