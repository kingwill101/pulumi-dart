// ignore_for_file: unused_element, unnecessary_cast

class ReleaseBlueprint {
  final String? engine;

  /// URI to a blueprint used by the Unit (required unless unitKind or release is
  /// set).
  final String? package;

  /// (Output)
  /// Version metadata if present on the blueprint.
  final String? version;

  /// Creates a new [ReleaseBlueprint].
  /// [engine] Optional.
  /// [package] URI to a blueprint used by the Unit (required unless unitKind or release is
  /// [version] (Output)
  ReleaseBlueprint({this.engine, this.package, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'package': ?package,
      'version': ?version,
    };
  }

  factory ReleaseBlueprint.fromMap(Map<String, dynamic> map) {
    return ReleaseBlueprint(
      engine: map['engine'] == null ? null : map['engine'] as String,
      package: map['package'] == null ? null : map['package'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
