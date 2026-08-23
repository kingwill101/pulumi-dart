// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RuleOption
class RuleOptionResponse {
  /// Property keyword
  final pulumi.Input<String>? keyword;
  /// Property settings
  final pulumi.Input<List<String>>? settings;

  /// Creates a new [RuleOptionResponse].
  /// [keyword] Property keyword
  /// [settings] Property settings
  const RuleOptionResponse({
    this.keyword,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyword': ?keyword,
      'settings': ?settings,
    };
  }

  factory RuleOptionResponse.fromMap(Map<String, dynamic> map) {
    return RuleOptionResponse(
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
