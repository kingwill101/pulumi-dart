// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_access_log_settings.dart';
import 'stage_default_route_settings.dart';
import 'stage_route_setting.dart';

/// Input properties used for looking up and filtering Stage resources.
class StageState {
  /// Settings for logging access in this stage. Use the `aws.apigateway.Account` resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  final pulumi.Input<StageAccessLogSettings>? accessLogSettings;
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// ARN of the stage.
  final pulumi.Input<String>? arn;
  /// Whether updates to an API automatically trigger a new deployment. Defaults to `false`. Applicable for HTTP APIs.
  final pulumi.Input<bool>? autoDeploy;
  /// Identifier of a client certificate for the stage. Use the `aws.apigateway.ClientCertificate` resource to configure a client certificate. Supported only for WebSocket APIs.
  final pulumi.Input<String>? clientCertificateId;
  /// Default route settings for the stage.
  final pulumi.Input<StageDefaultRouteSettings>? defaultRouteSettings;
  /// Deployment identifier of the stage. Use the `aws.apigatewayv2.Deployment` resource to configure a deployment.
  final pulumi.Input<String>? deploymentId;
  /// Description for the stage. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? description;
  /// ARN prefix to be used in an `aws.lambda.Permission`'s `sourceArn` attribute. For WebSocket APIs this attribute can additionally be used in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html). See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  final pulumi.Input<String>? executionArn;
  /// URL to invoke the API pointing to the stage, e.g., `wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage`, or `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/`
  final pulumi.Input<String>? invokeUrl;
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
  /// Map of tags to assign to the stage. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [StageState].
  /// [accessLogSettings] Settings for logging access in this stage. Use the `aws.apigateway.Account` resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  /// [apiId] API identifier.
  /// [arn] ARN of the stage.
  /// [autoDeploy] Whether updates to an API automatically trigger a new deployment. Defaults to `false`. Applicable for HTTP APIs.
  /// [clientCertificateId] Identifier of a client certificate for the stage. Use the `aws.apigateway.ClientCertificate` resource to configure a client certificate. Supported only for WebSocket APIs.
  /// [defaultRouteSettings] Default route settings for the stage.
  /// [deploymentId] Deployment identifier of the stage. Use the `aws.apigatewayv2.Deployment` resource to configure a deployment.
  /// [description] Description for the stage. Must be less than or equal to 1024 characters in length.
  /// [executionArn] ARN prefix to be used in an `aws.lambda.Permission`'s `sourceArn` attribute. For WebSocket APIs this attribute can additionally be used in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html). See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  /// [invokeUrl] URL to invoke the API pointing to the stage, e.g., `wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage`, or `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/`
  /// [name] Name of the stage. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeSettings] Route settings for the stage.
  /// [stageVariables] Map that defines the stage variables for the stage.
  /// [tags] Map of tags to assign to the stage. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const StageState({
    this.accessLogSettings,
    this.apiId,
    this.arn,
    this.autoDeploy,
    this.clientCertificateId,
    this.defaultRouteSettings,
    this.deploymentId,
    this.description,
    this.executionArn,
    this.invokeUrl,
    this.name,
    this.region,
    this.routeSettings,
    this.stageVariables,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogSettings': ?pulumi.Input.mapOptionalInputValue<StageAccessLogSettings, Map<String, dynamic>>(accessLogSettings, (value) => value.toMap()),
      'apiId': ?apiId,
      'arn': ?arn,
      'autoDeploy': ?autoDeploy,
      'clientCertificateId': ?clientCertificateId,
      'defaultRouteSettings': ?pulumi.Input.mapOptionalInputValue<StageDefaultRouteSettings, Map<String, dynamic>>(defaultRouteSettings, (value) => value.toMap()),
      'deploymentId': ?deploymentId,
      'description': ?description,
      'executionArn': ?executionArn,
      'invokeUrl': ?invokeUrl,
      'name': ?name,
      'region': ?region,
      'routeSettings': ?pulumi.Input.mapOptionalInputValue<List<StageRouteSetting>, List<Map<String, dynamic>>>(routeSettings, (value) => pulumi.Input.encodeList<StageRouteSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stageVariables': ?stageVariables,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory StageState.fromMap(Map<String, dynamic> map) {
    return StageState(
      accessLogSettings: (() { final guardedValue = map['accessLogSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StageAccessLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoDeploy: (() { final guardedValue = map['autoDeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientCertificateId: (() { final guardedValue = map['clientCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRouteSettings: (() { final guardedValue = map['defaultRouteSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StageDefaultRouteSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionArn: (() { final guardedValue = map['executionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invokeUrl: (() { final guardedValue = map['invokeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeSettings: (() { final guardedValue = map['routeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StageRouteSetting>(guardedValue, (value) => StageRouteSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stageVariables: (() { final guardedValue = map['stageVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
