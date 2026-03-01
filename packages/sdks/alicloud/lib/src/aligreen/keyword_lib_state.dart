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
    pulumi.Output<List<String>>? bizTypes,
    pulumi.Output<String>? category,
    pulumi.Output<bool>? enable,
    pulumi.Output<String>? keywordLibName,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? language,
    pulumi.Output<String>? libType,
    pulumi.Output<String>? matchMode,
    pulumi.Output<String>? resourceType,
  }) :
      bizTypes = pulumi.Input.asOptionalInput<List<String>>(bizTypes),
      category = pulumi.Input.asOptionalInput<String>(category),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      keywordLibName = pulumi.Input.asOptionalInput<String>(keywordLibName),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      language = pulumi.Input.asOptionalInput<String>(language),
      libType = pulumi.Input.asOptionalInput<String>(libType),
      matchMode = pulumi.Input.asOptionalInput<String>(matchMode),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

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
      bizTypes: map['bizTypes'] == null ? null : pulumi.Output.create<List<String>>((map['bizTypes'] as List).cast<String>()),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      enable: map['enable'] == null ? null : pulumi.Output.create<bool>(map['enable'] as bool),
      keywordLibName: map['keywordLibName'] == null ? null : pulumi.Output.create<String>(map['keywordLibName'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      libType: map['libType'] == null ? null : pulumi.Output.create<String>(map['libType'] as String),
      matchMode: map['matchMode'] == null ? null : pulumi.Output.create<String>(map['matchMode'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

