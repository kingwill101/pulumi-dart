// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Jupyter kernel configuration.
class JupyterKernelConfigResponse {
  /// Argument to the the runtime
  final pulumi.Input<List<String>?>? argv;
  /// Display name of the kernel
  final pulumi.Input<String?>? displayName;
  /// Language of the kernel [Example value: python]
  final pulumi.Input<String?>? language;

  /// Creates a new [JupyterKernelConfigResponse].
  /// [argv] Argument to the the runtime
  /// [displayName] Display name of the kernel
  /// [language] Language of the kernel [Example value: python]
  const JupyterKernelConfigResponse({
    this.argv,
    this.displayName,
    this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argv': ?argv,
      'displayName': ?displayName,
      'language': ?language,
    };
  }

  factory JupyterKernelConfigResponse.fromMap(Map<String, dynamic> map) {
    return JupyterKernelConfigResponse(
      argv: (() { final guardedValue = map['argv']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
