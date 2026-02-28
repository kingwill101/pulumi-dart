// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assistant_customer_policy_banned_phrase.dart';
import 'assistant_customer_policy_model_armor_config.dart';

class AssistantCustomerPolicy {
  /// List of banned phrases.
  /// Structure is documented below.
  final List<AssistantCustomerPolicyBannedPhrase>? bannedPhrases;

  /// Model Armor configuration to be used for sanitizing user prompts and assistant responses.
  /// Structure is documented below.
  final AssistantCustomerPolicyModelArmorConfig? modelArmorConfig;

  /// Creates a new [AssistantCustomerPolicy].
  /// [bannedPhrases] List of banned phrases.
  /// [modelArmorConfig] Model Armor configuration to be used for sanitizing user prompts and assistant responses.
  AssistantCustomerPolicy({
    this.bannedPhrases,
    this.modelArmorConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bannedPhrasesValue = bannedPhrases;
    if (bannedPhrasesValue != null) {
      map['bannedPhrases'] = pulumi.Input.encodeList<
          AssistantCustomerPolicyBannedPhrase,
          Map<String, dynamic>>(bannedPhrasesValue, (value) => value.toMap());
    }
    final modelArmorConfigValue = modelArmorConfig;
    if (modelArmorConfigValue != null) {
      map['modelArmorConfig'] = modelArmorConfigValue.toMap();
    }
    return map;
  }

  factory AssistantCustomerPolicy.fromMap(Map<String, dynamic> map) {
    return AssistantCustomerPolicy(
      bannedPhrases: map['bannedPhrases'] == null
          ? null
          : pulumi.Input.decodeList<AssistantCustomerPolicyBannedPhrase>(
              map['bannedPhrases'],
              (value) => AssistantCustomerPolicyBannedPhrase.fromMap(
                  (value as Map).cast<String, dynamic>())),
      modelArmorConfig: map['modelArmorConfig'] == null
          ? null
          : AssistantCustomerPolicyModelArmorConfig.fromMap(
              (map['modelArmorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
