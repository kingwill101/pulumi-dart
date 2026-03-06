// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ErEnvConfPresetCanaryYunnan {
  /// Allowed DCDN domain names.
  final pulumi.Input<List<String>>? allowedHosts;
  /// The version number of the code.
  final pulumi.Input<String>? codeRev;
  /// The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  final pulumi.Input<String>? specName;

  /// Creates a new [ErEnvConfPresetCanaryYunnan].
  /// [allowedHosts] Allowed DCDN domain names.
  /// [codeRev] The version number of the code.
  /// [specName] The specification of the CPU time slice. Valid values: `5ms`, `50ms`, `100ms`.
  const ErEnvConfPresetCanaryYunnan({
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

  factory ErEnvConfPresetCanaryYunnan.fromMap(Map<String, dynamic> map) {
    return ErEnvConfPresetCanaryYunnan(
      allowedHosts: (() { final guardedValue = map['allowedHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      codeRev: (() { final guardedValue = map['codeRev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specName: (() { final guardedValue = map['specName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

