// ignore_for_file: unused_element, unnecessary_cast

import 'jupyter_config_kernel.dart';

/// Jupyter configuration for an interactive session.
class JupyterConfig {
  /// Optional. Display name, shown in the Jupyter kernelspec card.
  final String? displayName;
  /// Optional. Kernel
  final JupyterConfigKernel? kernel;

  /// Creates a new [JupyterConfig].
  /// [displayName] Optional. Display name, shown in the Jupyter kernelspec card.
  /// [kernel] Optional. Kernel
  JupyterConfig({
    this.displayName,
    this.kernel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'kernel': ?kernel == null ? null : kernel!.value,
    };
  }

  factory JupyterConfig.fromMap(Map<String, dynamic> map) {
    return JupyterConfig(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      kernel: map['kernel'] == null ? null : JupyterConfigKernel.fromValue(map['kernel'] as String),
    );
  }
}

