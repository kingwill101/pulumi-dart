// ignore_for_file: unused_element, unnecessary_cast


class ConditionalAccessPolicyConditionsPlatforms {
  /// A list of platforms explicitly excluded from the policy. Possible values are: `all`, `android`, `iOS`, `linux`, `macOS`, `windows`, `windowsPhone` or `unknownFutureValue`.
  final List<String>? excludedPlatforms;
  /// A list of platforms the policy applies to, unless explicitly excluded. Possible values are: `all`, `android`, `iOS`, `linux`, `macOS`, `windows`, `windowsPhone` or `unknownFutureValue`.
  final List<String> includedPlatforms;

  /// Creates a new [ConditionalAccessPolicyConditionsPlatforms].
  /// [excludedPlatforms] A list of platforms explicitly excluded from the policy. Possible values are: `all`, `android`, `iOS`, `linux`, `macOS`, `windows`, `windowsPhone` or `unknownFutureValue`.
  /// [includedPlatforms] A list of platforms the policy applies to, unless explicitly excluded. Possible values are: `all`, `android`, `iOS`, `linux`, `macOS`, `windows`, `windowsPhone` or `unknownFutureValue`.
  ConditionalAccessPolicyConditionsPlatforms({
    this.excludedPlatforms,
    required this.includedPlatforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedPlatforms': ?excludedPlatforms,
      'includedPlatforms': includedPlatforms,
    };
  }

  factory ConditionalAccessPolicyConditionsPlatforms.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsPlatforms(
      excludedPlatforms: map['excludedPlatforms'] == null ? null : (map['excludedPlatforms'] as List).cast<String>(),
      includedPlatforms: (map['includedPlatforms'] as List).cast<String>(),
    );
  }
}

