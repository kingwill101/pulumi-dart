import 'package:pulumi/pulumi.dart';
import '../webhook_authentication_configuration/webhook_authentication_configuration.dart';
import '../webhook_filter/webhook_filter.dart';
import 'webhook_args3.dart';

/// Provides a CodePipeline Webhook.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodePipeline webhook.
///
///
/// Using `pulumi import`, import CodePipeline Webhooks using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codepipeline/webhook:Webhook example arn:aws:codepipeline:us-west-2:123456789012:webhook:example
/// ```
class Webhook3 extends CustomResource {
  /// The CodePipeline webhook's ARN.
  late final Output<String> arn;

  /// The type of authentication  to use. One of `IP`, `GITHUB_HMAC`, or `UNAUTHENTICATED`.
  late final Output<String> authentication;

  /// An `auth` block. Required for `IP` and `GITHUB_HMAC`. Auth blocks are documented below.
  late final Output<WebhookAuthenticationConfiguration?>
      authenticationConfiguration;

  /// One or more `filter` blocks. Filter blocks are documented below.
  late final Output<List<WebhookFilter>> filters;

  /// The name of the webhook.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.
  late final Output<String> targetAction;

  /// The name of the pipeline.
  late final Output<String> targetPipeline;

  /// The CodePipeline webhook's URL. POST events to this endpoint to trigger the target.
  late final Output<String> url;

  Webhook3(
    String name, {
    WebhookArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/webhook:Webhook',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authentication = registerOutput<String>('authentication');
    this.authenticationConfiguration =
        registerOutput<WebhookAuthenticationConfiguration?>(
            'authenticationConfiguration');
    this.filters = registerOutput<List<WebhookFilter>>('filters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetAction = registerOutput<String>('targetAction');
    this.targetPipeline = registerOutput<String>('targetPipeline');
    this.url = registerOutput<String>('url');
  }
}
