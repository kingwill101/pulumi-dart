// ignore_for_file: unused_element, unnecessary_cast

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfigResponse {
  /// OSVersion specifies the Windows node config to be used on the node
  final String osVersion;

  /// Creates a new [WindowsNodeConfigResponse].
  /// [osVersion] OSVersion specifies the Windows node config to be used on the node
  WindowsNodeConfigResponse({required this.osVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'osVersion': osVersion};
  }

  factory WindowsNodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfigResponse(osVersion: map['osVersion'] as String);
  }
}
