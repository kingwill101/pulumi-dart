// ignore_for_file: unused_element, unnecessary_cast


class ErEnvConfPresetCanaryGuizhou {
  /// Allowed DCDN domain names.
  final List<String>? allowedHosts;
  /// The version number of the code.
  final String? codeRev;
  /// The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  final String? specName;

  /// Creates a new [ErEnvConfPresetCanaryGuizhou].
  /// [allowedHosts] Allowed DCDN domain names.
  /// [codeRev] The version number of the code.
  /// [specName] The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  ErEnvConfPresetCanaryGuizhou({
    this.allowedHosts,
    this.codeRev,
    this.specName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHosts': ?allowedHosts,
      'codeRev': ?codeRev,
      'specName': ?specName,
    };
  }

  factory ErEnvConfPresetCanaryGuizhou.fromMap(Map<String, dynamic> map) {
    return ErEnvConfPresetCanaryGuizhou(
      allowedHosts: map['allowedHosts'] == null ? null : (map['allowedHosts'] as List).cast<String>(),
      codeRev: map['codeRev'] == null ? null : map['codeRev'] as String,
      specName: map['specName'] == null ? null : map['specName'] as String,
    );
  }
}

