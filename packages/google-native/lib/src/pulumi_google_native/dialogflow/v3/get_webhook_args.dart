// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWebhook.
class GetWebhookArgs {
  final Input<String> agentId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> webhookId;

  GetWebhookArgs({
    required this.agentId,
    required this.location,
    this.project,
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['webhookId'] = webhookId;
    return map;
  }

  factory GetWebhookArgs.fromMap(Map<String, dynamic> map) {
    return GetWebhookArgs(
      agentId: Input.asInput<String>(map['agentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      webhookId: Input.asInput<String>(map['webhookId']),
    );
  }
}
