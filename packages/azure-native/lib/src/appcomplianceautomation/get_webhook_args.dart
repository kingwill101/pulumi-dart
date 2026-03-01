// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_get_webhook_args_doc}
/// Arguments for getWebhook.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_get_webhook_args_doc}
class GetWebhookArgs {
  /// Report Name.
  final pulumi.Input<String> reportName;
  /// Webhook Name.
  final pulumi.Input<String> webhookName;

  /// Creates a new [GetWebhookArgs].
  /// [reportName] Report Name.
  /// [webhookName] Webhook Name.
  GetWebhookArgs({
    required String reportName,
    required String webhookName,
  }) :
      reportName = pulumi.Input.asInput<String>(reportName),
      webhookName = pulumi.Input.asInput<String>(webhookName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportName': reportName,
      'webhookName': webhookName,
    };
  }

  factory GetWebhookArgs.fromMap(Map<String, dynamic> map) {
    return GetWebhookArgs(
      reportName: map['reportName'] as String,
      webhookName: map['webhookName'] as String,
    );
  }
}

