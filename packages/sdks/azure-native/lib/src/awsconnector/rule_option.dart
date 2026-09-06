// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RuleOption
class RuleOption {
  /// Property keyword
  final pulumi.Input<String?>? keyword;
  /// Property settings
  final pulumi.Input<List<String>?>? settings;

  /// Creates a new [RuleOption].
  /// [keyword] Property keyword
  /// [settings] Property settings
  const RuleOption({
    this.keyword,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyword': ?keyword,
      'settings': ?settings,
    };
  }

  factory RuleOption.fromMap(Map<String, dynamic> map) {
    return RuleOption(
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
