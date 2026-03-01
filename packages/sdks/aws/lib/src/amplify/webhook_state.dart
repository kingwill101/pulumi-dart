// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Webhook resources.
class WebhookState {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String>? appId;
  /// ARN for the webhook.
  final pulumi.Input<String>? arn;
  /// Name for a branch that is part of the Amplify app.
  final pulumi.Input<String>? branchName;
  /// Description for a webhook.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// URL of the webhook.
  final pulumi.Input<String>? url;

  /// Creates a new [WebhookState].
  /// [appId] Unique ID for an Amplify app.
  /// [arn] ARN for the webhook.
  /// [branchName] Name for a branch that is part of the Amplify app.
  /// [description] Description for a webhook.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [url] URL of the webhook.
  WebhookState({
    pulumi.Output<String>? appId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? branchName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<String>? url,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      branchName = pulumi.Input.asOptionalInput<String>(branchName),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'arn': ?arn,
      'branchName': ?branchName,
      'description': ?description,
      'region': ?region,
      'url': ?url,
    };
  }

  factory WebhookState.fromMap(Map<String, dynamic> map) {
    return WebhookState(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      branchName: map['branchName'] == null ? null : pulumi.Output.create<String>(map['branchName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

