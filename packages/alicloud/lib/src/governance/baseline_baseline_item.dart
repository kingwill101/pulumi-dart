// ignore_for_file: unused_element, unnecessary_cast


class BaselineBaselineItem {
  /// Baseline item configuration. The format is a JSON string.
  final String? config;
  /// The baseline item name.
  final String? name;
  /// The baseline item version.
  final String? version;

  /// Creates a new [BaselineBaselineItem].
  /// [config] Baseline item configuration. The format is a JSON string.
  /// [name] The baseline item name.
  /// [version] The baseline item version.
  BaselineBaselineItem({
    this.config,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'name': ?name,
      'version': ?version,
    };
  }

  factory BaselineBaselineItem.fromMap(Map<String, dynamic> map) {
    return BaselineBaselineItem(
      config: map['config'] == null ? null : map['config'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

