// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ErEnvConfPresetCanaryNeimenggu {
  /// Allowed DCDN domain names.
  final pulumi.Input<List<String>>? allowedHosts;
  /// The version number of the code.
  final pulumi.Input<String>? codeRev;
  /// The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  final pulumi.Input<String>? specName;

  /// Creates a new [ErEnvConfPresetCanaryNeimenggu].
  /// [allowedHosts] Allowed DCDN domain names.
  /// [codeRev] The version number of the code.
  /// [specName] The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  ErEnvConfPresetCanaryNeimenggu({
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

  factory ErEnvConfPresetCanaryNeimenggu.fromMap(Map<String, dynamic> map) {
    return ErEnvConfPresetCanaryNeimenggu(
      allowedHosts: map['allowedHosts'] == null ? null : ((map['allowedHosts'] as List).cast<String>()).input(),
      codeRev: map['codeRev'] == null ? null : (map['codeRev'] as String).input(),
      specName: map['specName'] == null ? null : (map['specName'] as String).input(),
    );
  }
}

