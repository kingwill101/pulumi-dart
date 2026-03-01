// ignore_for_file: unused_element, unnecessary_cast

import 'windows_node_config_os_version_container_v1beta1.dart';

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfigContainerV1beta1 {
  /// OSVersion specifies the Windows node config to be used on the node
  final WindowsNodeConfigOsVersionContainerV1beta1? osVersion;

  /// Creates a new [WindowsNodeConfigContainerV1beta1].
  /// [osVersion] OSVersion specifies the Windows node config to be used on the node
  WindowsNodeConfigContainerV1beta1({this.osVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osVersion': ?osVersion == null ? null : osVersion!.value,
    };
  }

  factory WindowsNodeConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfigContainerV1beta1(
      osVersion: map['osVersion'] == null
          ? null
          : WindowsNodeConfigOsVersionContainerV1beta1.fromValue(
              map['osVersion'] as String,
            ),
    );
  }
}
