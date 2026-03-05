// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeywordLib resources.
class KeywordLibState {
  /// The business scenario. Example:["bizTypeA","bizTypeB"]
  final pulumi.Input<List<String>>? bizTypes;
  /// The category of the text library. Valid values: BLACK: a blacklist. WHITE: a whitelist. REVIEW: a review list
  final pulumi.Input<String>? category;
  /// Specifies whether to enable text library.true: Enable the text library. This is the default value.false: Disable the text library.
  final pulumi.Input<bool>? enable;
  /// The name of the keyword library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  final pulumi.Input<String>? keywordLibName;
  /// Language.
  final pulumi.Input<String>? lang;
  /// Language used by the text Library
  final pulumi.Input<String>? language;
  /// The category of the text library in each moderation scenario. Valid values: textKeyword: a text library against which terms in text are matched. similarText: a text library against which text patterns are matched. textKeyword: a text library against which terms extracted from images are matched. voiceText: a text library against which terms converted from audio are matched.
  final pulumi.Input<String>? libType;
  /// The matching method. Valid values:fuzzy: fuzzy match precise: exact match
  final pulumi.Input<String>? matchMode;
  /// The moderation scenario to which the text library applies. Valid values:TEXT: text anti-spam、IMAGE: ad violation detection、VOICE: audio anti-spam
  final pulumi.Input<String>? resourceType;

  /// Creates a new [KeywordLibState].
  /// [bizTypes] The business scenario. Example:["bizTypeA","bizTypeB"]
  /// [category] The category of the text library. Valid values: BLACK: a blacklist. WHITE: a whitelist. REVIEW: a review list
  /// [enable] Specifies whether to enable text library.true: Enable the text library. This is the default value.false: Disable the text library.
  /// [keywordLibName] The name of the keyword library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  /// [lang] Language.
  /// [language] Language used by the text Library
  /// [libType] The category of the text library in each moderation scenario. Valid values: textKeyword: a text library against which terms in text are matched. similarText: a text library against which text patterns are matched. textKeyword: a text library against which terms extracted from images are matched. voiceText: a text library against which terms converted from audio are matched.
  /// [matchMode] The matching method. Valid values:fuzzy: fuzzy match precise: exact match
  /// [resourceType] The moderation scenario to which the text library applies. Valid values:TEXT: text anti-spam、IMAGE: ad violation detection、VOICE: audio anti-spam
  KeywordLibState({
    this.bizTypes,
    this.category,
    this.enable,
    this.keywordLibName,
    this.lang,
    this.language,
    this.libType,
    this.matchMode,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizTypes': ?bizTypes,
      'category': ?category,
      'enable': ?enable,
      'keywordLibName': ?keywordLibName,
      'lang': ?lang,
      'language': ?language,
      'libType': ?libType,
      'matchMode': ?matchMode,
      'resourceType': ?resourceType,
    };
  }

  factory KeywordLibState.fromMap(Map<String, dynamic> map) {
    return KeywordLibState(
      bizTypes: (() { final guardedValue = map['bizTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keywordLibName: (() { final guardedValue = map['keywordLibName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      libType: (() { final guardedValue = map['libType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchMode: (() { final guardedValue = map['matchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

