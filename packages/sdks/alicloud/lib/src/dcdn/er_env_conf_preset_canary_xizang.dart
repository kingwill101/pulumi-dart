// ignore_for_file: unused_element, unnecessary_cast


class ErEnvConfPresetCanaryXizang {
  /// Allowed DCDN domain names.
  final List<String>? allowedHosts;
  /// The version number of the code.
  final String? codeRev;
  /// The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  final String? specName;

  /// Creates a new [ErEnvConfPresetCanaryXizang].
  /// [allowedHosts] Allowed DCDN domain names.
  /// [codeRev] The version number of the code.
  /// [specName] The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  ErEnvConfPresetCanaryXizang({
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

  factory ErEnvConfPresetCanaryXizang.fromMap(Map<String, dynamic> map) {
    return ErEnvConfPresetCanaryXizang(
      allowedHosts: map['allowedHosts'] == null ? null : (map['allowedHosts'] as List).cast<String>(),
      codeRev: map['codeRev'] == null ? null : map['codeRev'] as String,
      specName: map['specName'] == null ? null : map['specName'] as String,
    );
  }
}

