// ignore_for_file: unused_element, unnecessary_cast

import 'windows_node_config_os_version2.dart';

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfig2 {
  /// OSVersion specifies the Windows node config to be used on the node
  final WindowsNodeConfigOsVersion2? osVersion;

  WindowsNodeConfig2({
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final osVersionValue = osVersion;
    if (osVersionValue != null) {
      map['osVersion'] = osVersionValue.value;
    }
    return map;
  }

  factory WindowsNodeConfig2.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfig2(
      osVersion: map['osVersion'] == null
          ? null
          : WindowsNodeConfigOsVersion2.fromValue(map['osVersion'] as String),
    );
  }
}
