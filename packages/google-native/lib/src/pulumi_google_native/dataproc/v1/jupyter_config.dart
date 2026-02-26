// ignore_for_file: unused_element, unnecessary_cast

import 'jupyter_config_kernel.dart';

/// Jupyter configuration for an interactive session.
class JupyterConfig {
  /// Optional. Display name, shown in the Jupyter kernelspec card.
  final String? displayName;

  /// Optional. Kernel
  final JupyterConfigKernel? kernel;

  JupyterConfig({
    this.displayName,
    this.kernel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final kernelValue = kernel;
    if (kernelValue != null) {
      map['kernel'] = kernelValue.value;
    }
    return map;
  }

  factory JupyterConfig.fromMap(Map<String, dynamic> map) {
    return JupyterConfig(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      kernel: map['kernel'] == null
          ? null
          : JupyterConfigKernel.fromValue(map['kernel'] as String),
    );
  }
}
