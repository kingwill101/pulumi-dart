import 'package:pulumi/pulumi.dart';
import '../stage_access_log_settings/stage_access_log_settings.dart';
import '../stage_canary_settings/stage_canary_settings.dart';
import 'stage_args.dart';

/// Manages an API Gateway Stage. A stage is a named reference to a deployment, which can be done via the `aws.apigateway.Deployment` resource. Stages can be optionally managed further with the `aws.apigateway.BasePathMapping` resource, `aws.apigateway.DomainName` resource, and `aws_api_method_settings` resource. For more information, see the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-stages.html).
///
/// ### Managing the API Logging CloudWatch Log Group
///
/// API Gateway provides the ability to [enable CloudWatch API logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html). To manage the CloudWatch Log Group when this feature is enabled, the `aws.cloudwatch.LogGroup` resource can be used where the name matches the API Gateway naming convention. If the CloudWatch Log Group previously exists, import the `aws.cloudwatch.LogGroup` resource into Pulumi as a one time operation. You can recreate the environment without import.
///
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Stage` using `REST-API-ID/STAGE-NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/stage:Stage example 12345abcde/example
/// ```
class Stage extends CustomResource {
  /// Enables access logs for the API stage. See Access Log Settings below.
  late final Output<StageAccessLogSettings?> accessLogSettings;

  /// ARN
  late final Output<String> arn;

  /// Whether a cache cluster is enabled for the stage
  late final Output<bool?> cacheClusterEnabled;

  /// Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`.
  late final Output<String?> cacheClusterSize;

  /// Configuration settings of a canary deployment. See Canary Settings below.
  late final Output<StageCanarySettings?> canarySettings;

  /// Identifier of a client certificate for the stage.
  late final Output<String?> clientCertificateId;

  /// ID of the deployment that the stage points to
  late final Output<String> deployment;

  /// Description of the stage.
  late final Output<String?> description;

  /// Version of the associated API documentation.
  late final Output<String?> documentationVersion;

  /// Execution ARN to be used in `lambda_permission`'s `source_arn`
  /// when allowing API Gateway to invoke a Lambda function,
  /// e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod`
  late final Output<String> executionArn;

  /// URL to invoke the API pointing to the stage,
  /// e.g., `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod`
  late final Output<String> invokeUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated REST API
  late final Output<String> restApi;

  /// Name of the stage
  late final Output<String> stageName;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Map that defines the stage variables.
  late final Output<Map<String, String>?> variables;

  /// ARN of the WebAcl associated with the Stage.
  late final Output<String> webAclArn;

  /// Whether active tracing with X-ray is enabled. Defaults to `false`.
  late final Output<bool?> xrayTracingEnabled;

  Stage(
    String name, {
    StageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/stage:Stage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLogSettings =
        registerOutput<StageAccessLogSettings?>('accessLogSettings');
    this.arn = registerOutput<String>('arn');
    this.cacheClusterEnabled = registerOutput<bool?>('cacheClusterEnabled');
    this.cacheClusterSize = registerOutput<String?>('cacheClusterSize');
    this.canarySettings =
        registerOutput<StageCanarySettings?>('canarySettings');
    this.clientCertificateId = registerOutput<String?>('clientCertificateId');
    this.deployment = registerOutput<String>('deployment');
    this.description = registerOutput<String?>('description');
    this.documentationVersion = registerOutput<String?>('documentationVersion');
    this.executionArn = registerOutput<String>('executionArn');
    this.invokeUrl = registerOutput<String>('invokeUrl');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.stageName = registerOutput<String>('stageName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.variables = registerOutput<Map<String, String>?>('variables');
    this.webAclArn = registerOutput<String>('webAclArn');
    this.xrayTracingEnabled = registerOutput<bool?>('xrayTracingEnabled');
  }
}
