// ignore_for_file: unused_element, unnecessary_cast

import 'windows_node_config_os_version.dart';

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfig {
  /// OSVersion specifies the Windows node config to be used on the node
  final WindowsNodeConfigOsVersion? osVersion;

  /// Creates a new [WindowsNodeConfig].
  /// [osVersion] OSVersion specifies the Windows node config to be used on the node
  WindowsNodeConfig({this.osVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osVersion': ?osVersion == null ? null : osVersion!.value,
    };
  }

  factory WindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfig(
      osVersion: map['osVersion'] == null
          ? null
          : WindowsNodeConfigOsVersion.fromValue(map['osVersion'] as String),
    );
  }
}
