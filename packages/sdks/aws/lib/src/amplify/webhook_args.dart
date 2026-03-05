// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amplify_webhook_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_amplify_webhook_webhook_args_doc}
class WebhookArgs {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String> appId;
  /// Name for a branch that is part of the Amplify app.
  final pulumi.Input<String> branchName;
  /// Description for a webhook.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [WebhookArgs].
  /// [appId] Unique ID for an Amplify app.
  /// [branchName] Name for a branch that is part of the Amplify app.
  /// [description] Description for a webhook.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  WebhookArgs({
    required this.appId,
    required this.branchName,
    this.description,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'branchName': branchName,
      'description': ?description,
      'region': ?region,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

