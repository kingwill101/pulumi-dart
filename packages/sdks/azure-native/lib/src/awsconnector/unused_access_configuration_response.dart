// ignore_for_file: unused_element, unnecessary_cast


/// Definition of UnusedAccessConfiguration
class UnusedAccessConfigurationResponse {
  /// The specified access age in days for which to generate findings for unused access. For example, if you specify 90 days, the analyzer will generate findings for IAM entities within the accounts of the selected organization for any access that hasn't been used in 90 or more days since the analyzer's last scan. You can choose a value between 1 and 180 days.
  final int? unusedAccessAge;

  /// Creates a new [UnusedAccessConfigurationResponse].
  /// [unusedAccessAge] The specified access age in days for which to generate findings for unused access. For example, if you specify 90 days, the analyzer will generate findings for IAM entities within the accounts of the selected organization for any access that hasn't been used in 90 or more days since the analyzer's last scan. You can choose a value between 1 and 180 days.
  UnusedAccessConfigurationResponse({
    this.unusedAccessAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unusedAccessAge': ?unusedAccessAge,
    };
  }

  factory UnusedAccessConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return UnusedAccessConfigurationResponse(
      unusedAccessAge: map['unusedAccessAge'] == null ? null : map['unusedAccessAge'] as int,
    );
  }
}

