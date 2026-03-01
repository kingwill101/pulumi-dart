// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetBootDiagnostics {
  /// Whether to enable boot diagnostics for the virtual machine. Defaults to `true`.
  final bool? enabled;
  /// Blob endpoint for the storage account to hold the virtual machine's diagnostic files. This must be the root of a storage account, and not a storage container.
  final String storageUri;

  /// Creates a new [ScaleSetBootDiagnostics].
  /// [enabled] Whether to enable boot diagnostics for the virtual machine. Defaults to `true`.
  /// [storageUri] Blob endpoint for the storage account to hold the virtual machine's diagnostic files. This must be the root of a storage account, and not a storage container.
  ScaleSetBootDiagnostics({
    this.enabled,
    required this.storageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'storageUri': storageUri,
    };
  }

  factory ScaleSetBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return ScaleSetBootDiagnostics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      storageUri: map['storageUri'] as String,
    );
  }
}

