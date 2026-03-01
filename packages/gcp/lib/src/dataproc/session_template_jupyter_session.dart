// ignore_for_file: unused_element, unnecessary_cast

class SessionTemplateJupyterSession {
  /// Display name, shown in the Jupyter kernelspec card.
  final String? displayName;

  /// Kernel to be used with Jupyter interactive session.
  /// Possible values are: `PYTHON`, `SCALA`.
  final String? kernel;

  /// Creates a new [SessionTemplateJupyterSession].
  /// [displayName] Display name, shown in the Jupyter kernelspec card.
  /// [kernel] Kernel to be used with Jupyter interactive session.
  SessionTemplateJupyterSession({this.displayName, this.kernel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'kernel': ?kernel};
  }

  factory SessionTemplateJupyterSession.fromMap(Map<String, dynamic> map) {
    return SessionTemplateJupyterSession(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      kernel: map['kernel'] == null ? null : map['kernel'] as String,
    );
  }
}
