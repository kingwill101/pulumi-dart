// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_access_log_settings.dart';
import 'stage_default_route_settings.dart';
import 'stage_route_setting.dart';

/// Input properties used for looking up and filtering Stage resources.
class StageState {
  /// Settings for logging access in this stage.
  /// Use the `aws.apigateway.Account` resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  final pulumi.Input<StageAccessLogSettings>? accessLogSettings;
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// ARN of the stage.
  final pulumi.Input<String>? arn;
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
  /// ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute.
  /// For WebSocket APIs this attribute can additionally be used in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  final pulumi.Input<String>? executionArn;
  /// URL to invoke the API pointing to the stage,
  /// e.g., `wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage`, or `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/`
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
  /// Map of tags to assign to the stage. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [StageState].
  /// [accessLogSettings] Settings for logging access in this stage.
  /// [apiId] API identifier.
  /// [arn] ARN of the stage.
  /// [autoDeploy] Whether updates to an API automatically trigger a new deployment. Defaults to `false`. Applicable for HTTP APIs.
  /// [clientCertificateId] Identifier of a client certificate for the stage. Use the `aws.apigateway.ClientCertificate` resource to configure a client certificate.
  /// [defaultRouteSettings] Default route settings for the stage.
  /// [deploymentId] Deployment identifier of the stage. Use the `aws.apigatewayv2.Deployment` resource to configure a deployment.
  /// [description] Description for the stage. Must be less than or equal to 1024 characters in length.
  /// [executionArn] ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute.
  /// [invokeUrl] URL to invoke the API pointing to the stage,
  /// [name] Name of the stage. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeSettings] Route settings for the stage.
  /// [stageVariables] Map that defines the stage variables for the stage.
  /// [tags] Map of tags to assign to the stage. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  StageState({
    pulumi.Output<StageAccessLogSettings>? accessLogSettings,
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? autoDeploy,
    pulumi.Output<String>? clientCertificateId,
    pulumi.Output<StageDefaultRouteSettings>? defaultRouteSettings,
    pulumi.Output<String>? deploymentId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? executionArn,
    pulumi.Output<String>? invokeUrl,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<StageRouteSetting>>? routeSettings,
    pulumi.Output<Map<String, String>>? stageVariables,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accessLogSettings = pulumi.Input.asOptionalInput<StageAccessLogSettings>(accessLogSettings),
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoDeploy = pulumi.Input.asOptionalInput<bool>(autoDeploy),
      clientCertificateId = pulumi.Input.asOptionalInput<String>(clientCertificateId),
      defaultRouteSettings = pulumi.Input.asOptionalInput<StageDefaultRouteSettings>(defaultRouteSettings),
      deploymentId = pulumi.Input.asOptionalInput<String>(deploymentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionArn = pulumi.Input.asOptionalInput<String>(executionArn),
      invokeUrl = pulumi.Input.asOptionalInput<String>(invokeUrl),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeSettings = pulumi.Input.asOptionalInput<List<StageRouteSetting>>(routeSettings),
      stageVariables = pulumi.Input.asOptionalInput<Map<String, String>>(stageVariables),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accessLogSettings: map['accessLogSettings'] == null ? null : pulumi.Output.create<StageAccessLogSettings>(StageAccessLogSettings.fromMap((map['accessLogSettings'] as Map).cast<String, dynamic>())),
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoDeploy: map['autoDeploy'] == null ? null : pulumi.Output.create<bool>(map['autoDeploy'] as bool),
      clientCertificateId: map['clientCertificateId'] == null ? null : pulumi.Output.create<String>(map['clientCertificateId'] as String),
      defaultRouteSettings: map['defaultRouteSettings'] == null ? null : pulumi.Output.create<StageDefaultRouteSettings>(StageDefaultRouteSettings.fromMap((map['defaultRouteSettings'] as Map).cast<String, dynamic>())),
      deploymentId: map['deploymentId'] == null ? null : pulumi.Output.create<String>(map['deploymentId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionArn: map['executionArn'] == null ? null : pulumi.Output.create<String>(map['executionArn'] as String),
      invokeUrl: map['invokeUrl'] == null ? null : pulumi.Output.create<String>(map['invokeUrl'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeSettings: map['routeSettings'] == null ? null : pulumi.Output.create<List<StageRouteSetting>>(pulumi.Input.decodeList<StageRouteSetting>(map['routeSettings'], (value) => StageRouteSetting.fromMap((value as Map).cast<String, dynamic>()))),
      stageVariables: map['stageVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['stageVariables'] as Map).cast<String, String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

