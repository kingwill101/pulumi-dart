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
    this.appId,
    this.arn,
    this.branchName,
    this.description,
    this.region,
    this.url,
  });

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
      appId: map['appId'] == null ? null : ((map['appId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      branchName: map['branchName'] == null ? null : ((map['branchName'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      url: map['url'] == null ? null : ((map['url'] as String).input()).input(),
    );
  }
}

