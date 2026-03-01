// ignore_for_file: unused_element, unnecessary_cast


/// The call rate limit Cognitive Services account.
class RegionSettingResponse {
  /// Maps the region to the regional custom subdomain.
  final String? customsubdomain;
  /// Name of the region.
  final String? name;
  /// A value for priority or weighted routing methods.
  final double? value;

  /// Creates a new [RegionSettingResponse].
  /// [customsubdomain] Maps the region to the regional custom subdomain.
  /// [name] Name of the region.
  /// [value] A value for priority or weighted routing methods.
  RegionSettingResponse({
    this.customsubdomain,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customsubdomain': ?customsubdomain,
      'name': ?name,
      'value': ?value,
    };
  }

  factory RegionSettingResponse.fromMap(Map<String, dynamic> map) {
    return RegionSettingResponse(
      customsubdomain: map['customsubdomain'] == null ? null : map['customsubdomain'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

