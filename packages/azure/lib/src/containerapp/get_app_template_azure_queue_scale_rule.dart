// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_azure_queue_scale_rule_authentication.dart';

class GetAppTemplateAzureQueueScaleRule {
  final List<GetAppTemplateAzureQueueScaleRuleAuthentication> authentications;
  /// The name of the Container App.
  final String name;
  final int queueLength;
  final String queueName;

  /// Creates a new [GetAppTemplateAzureQueueScaleRule].
  /// [authentications] Required.
  /// [name] The name of the Container App.
  /// [queueLength] Required.
  /// [queueName] Required.
  GetAppTemplateAzureQueueScaleRule({
    required this.authentications,
    required this.name,
    required this.queueLength,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.encodeList<GetAppTemplateAzureQueueScaleRuleAuthentication, Map<String, dynamic>>(authentications, (value) => value.toMap()),
      'name': name,
      'queueLength': queueLength,
      'queueName': queueName,
    };
  }

  factory GetAppTemplateAzureQueueScaleRule.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateAzureQueueScaleRule(
      authentications: pulumi.Input.decodeList<GetAppTemplateAzureQueueScaleRuleAuthentication>(map['authentications'], (value) => GetAppTemplateAzureQueueScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      queueLength: map['queueLength'] as int,
      queueName: map['queueName'] as String,
    );
  }
}

