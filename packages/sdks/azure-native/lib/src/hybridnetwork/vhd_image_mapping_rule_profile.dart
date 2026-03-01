// ignore_for_file: unused_element, unnecessary_cast


/// Vhd mapping rule profile
class VhdImageMappingRuleProfile {
  /// List of values.
  final String? userConfiguration;

  /// Creates a new [VhdImageMappingRuleProfile].
  /// [userConfiguration] List of values.
  VhdImageMappingRuleProfile({
    this.userConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userConfiguration': ?userConfiguration,
    };
  }

  factory VhdImageMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return VhdImageMappingRuleProfile(
      userConfiguration: map['userConfiguration'] == null ? null : map['userConfiguration'] as String,
    );
  }
}

