// ignore_for_file: unused_element, unnecessary_cast

/// Jupyter configuration for an interactive session.
class JupyterConfigResponse {
  /// Optional. Display name, shown in the Jupyter kernelspec card.
  final String displayName;

  /// Optional. Kernel
  final String kernel;

  JupyterConfigResponse({
    required this.displayName,
    required this.kernel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['kernel'] = kernel;
    return map;
  }

  factory JupyterConfigResponse.fromMap(Map<String, dynamic> map) {
    return JupyterConfigResponse(
      displayName: map['displayName'] as String,
      kernel: map['kernel'] as String,
    );
  }
}
