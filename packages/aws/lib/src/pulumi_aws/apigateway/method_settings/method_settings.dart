import 'package:pulumi/pulumi.dart' as pulumi;
import '../method_settings_settings/method_settings_settings.dart';
import 'method_settings_args.dart';

/// Manages API Gateway Stage Method Settings. For example, CloudWatch logging and metrics.
///
/// > **NOTE:** We recommend using this resource in conjunction with the `aws.apigateway.Stage` resource instead of a stage managed by the `aws.apigateway.Deployment` resource optional `stage_name` argument. Stages managed by the `aws.apigateway.Deployment` resource are recreated on redeployment and this resource will require a second apply to recreate the method settings.
///
/// ## Example Usage
///
/// ### End-to-end
///
///
/// ### Off
///
///
///
/// ### Errors Only
///
///
///
/// ### Errors and Info Logs
///
///
///
/// ### Full Request and Response Logs
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.MethodSettings` using `REST-API-ID/STAGE-NAME/METHOD-PATH`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/methodSettings:MethodSettings example 12345abcde/example/test/GET
/// ```
class MethodSettings extends pulumi.CustomResource {
  /// Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., `trimprefix(aws_api_gateway_resource.example.path, "/")`).
  late final pulumi.Output<String> methodPath;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the REST API
  late final pulumi.Output<String> restApi;

  /// Settings block, see below.
  late final pulumi.Output<MethodSettingsSettings> settings;

  /// Name of the stage
  late final pulumi.Output<String> stageName;

  MethodSettings(
    String name, {
    MethodSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/methodSettings:MethodSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.methodPath = registerOutput<String>('methodPath');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.settings = registerOutput<MethodSettingsSettings>('settings');
    this.stageName = registerOutput<String>('stageName');
  }
}
