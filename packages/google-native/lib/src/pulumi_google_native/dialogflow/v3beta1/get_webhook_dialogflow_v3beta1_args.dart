// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWebhook.
class GetWebhookDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> webhookId;

  GetWebhookDialogflowV3beta1Args({
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

  factory GetWebhookDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetWebhookDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      webhookId: pulumi.Input.asInput<String>(map['webhookId']),
    );
  }
}
