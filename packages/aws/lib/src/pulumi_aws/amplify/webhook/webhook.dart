import 'package:pulumi/pulumi.dart';
import 'webhook_args.dart';

/// Provides an Amplify Webhook resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify webhook using a webhook ID. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/webhook:Webhook master a26b22a0-748b-4b57-b9a0-ae7e601fe4b1
/// ```
class Webhook extends CustomResource {
  /// Unique ID for an Amplify app.
  late final Output<String> appId;

  /// ARN for the webhook.
  late final Output<String> arn;

  /// Name for a branch that is part of the Amplify app.
  late final Output<String> branchName;

  /// Description for a webhook.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// URL of the webhook.
  late final Output<String> url;

  Webhook(
    String name, {
    WebhookArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amplify/webhook:Webhook',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.branchName = registerOutput<String>('branchName');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.url = registerOutput<String>('url');
  }
}
