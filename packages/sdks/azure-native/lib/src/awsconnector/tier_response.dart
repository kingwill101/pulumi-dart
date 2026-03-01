// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Tier
class TierResponse {
  /// The name of this environment tier.
  final String? name;
  /// The type of this environment tier.
  final String? type;
  /// The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
  final String? version;

  /// Creates a new [TierResponse].
  /// [name] The name of this environment tier.
  /// [type] The type of this environment tier.
  /// [version] The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
  TierResponse({
    this.name,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
      'version': ?version,
    };
  }

  factory TierResponse.fromMap(Map<String, dynamic> map) {
    return TierResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

