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
  RuleOptionResponse({
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
      keyword: map['keyword'] == null ? null : (map['keyword']! as String).input(),
      settings: map['settings'] == null ? null : ((map['settings']! as List).cast<String>()).input(),
    );
  }
}

