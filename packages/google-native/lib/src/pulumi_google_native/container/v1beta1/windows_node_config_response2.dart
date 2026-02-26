// ignore_for_file: unused_element, unnecessary_cast

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfigResponse2 {
  /// OSVersion specifies the Windows node config to be used on the node
  final String osVersion;

  WindowsNodeConfigResponse2({
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['osVersion'] = osVersion;
    return map;
  }

  factory WindowsNodeConfigResponse2.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfigResponse2(
      osVersion: map['osVersion'] as String,
    );
  }
}
