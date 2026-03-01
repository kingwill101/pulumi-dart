// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RuleOption
class RuleOption {
  /// Property keyword
  final String? keyword;
  /// Property settings
  final List<String>? settings;

  /// Creates a new [RuleOption].
  /// [keyword] Property keyword
  /// [settings] Property settings
  RuleOption({
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
      keyword: map['keyword'] == null ? null : map['keyword'] as String,
      settings: map['settings'] == null ? null : (map['settings'] as List).cast<String>(),
    );
  }
}

