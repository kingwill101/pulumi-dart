// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Webhook.
class WebhookArgs {
  /// Unique ID for an Amplify app.
  final Input<String> appId;

  /// Name for a branch that is part of the Amplify app.
  final Input<String> branchName;

  /// Description for a webhook.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  WebhookArgs({
    required this.appId,
    required this.branchName,
    this.description,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['branchName'] = branchName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      appId: Input.asInput<String>(map['appId']),
      branchName: Input.asInput<String>(map['branchName']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
