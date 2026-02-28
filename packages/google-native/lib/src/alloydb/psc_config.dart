// ignore_for_file: unused_element, unnecessary_cast


/// PscConfig contains PSC related configuration at a cluster level. NEXT ID: 2
class PscConfig {
  /// Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  final bool? pscEnabled;

  /// Creates a new [PscConfig].
  /// [pscEnabled] Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  PscConfig({
    this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscEnabled': ?pscEnabled,
    };
  }

  factory PscConfig.fromMap(Map<String, dynamic> map) {
    return PscConfig(
      pscEnabled: map['pscEnabled'] == null ? null : map['pscEnabled'] as bool,
    );
  }
}

