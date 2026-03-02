// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceBabelfishConfig {
  /// specifies whether to enable the Babelfish for the instance. If you set this parameter to **true**, you enable Babelfish for the instance. If you leave this parameter empty, you disable Babelfish for the instance.
  final pulumi.Input<String> babelfishEnabled;
  /// The password of the administrator account. The password must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. It must be 8 to 32 characters in length. The password can contain any of the following characters:! @ # $ % ^ & * () _ + - =
  final pulumi.Input<String> masterUserPassword;
  /// The name of the administrator account. The name can contain lowercase letters, digits, and underscores (_). It must start with a letter and end with a letter or digit. It can be up to 63 characters in length and cannot start with pg.
  final pulumi.Input<String> masterUsername;
  /// The migration mode of the instance. Valid values: **single-db** and **multi-db**.
  final pulumi.Input<String> migrationMode;

  /// Creates a new [InstanceBabelfishConfig].
  /// [babelfishEnabled] specifies whether to enable the Babelfish for the instance. If you set this parameter to **true**, you enable Babelfish for the instance. If you leave this parameter empty, you disable Babelfish for the instance.
  /// [masterUserPassword] The password of the administrator account. The password must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. It must be 8 to 32 characters in length. The password can contain any of the following characters:! @ # $ % ^ & * () _ + - =
  /// [masterUsername] The name of the administrator account. The name can contain lowercase letters, digits, and underscores (_). It must start with a letter and end with a letter or digit. It can be up to 63 characters in length and cannot start with pg.
  /// [migrationMode] The migration mode of the instance. Valid values: **single-db** and **multi-db**.
  InstanceBabelfishConfig({
    required this.babelfishEnabled,
    required this.masterUserPassword,
    required this.masterUsername,
    required this.migrationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'babelfishEnabled': babelfishEnabled,
      'masterUserPassword': masterUserPassword,
      'masterUsername': masterUsername,
      'migrationMode': migrationMode,
    };
  }

  factory InstanceBabelfishConfig.fromMap(Map<String, dynamic> map) {
    return InstanceBabelfishConfig(
      babelfishEnabled: (map['babelfishEnabled'] as String).input(),
      masterUserPassword: (map['masterUserPassword'] as String).input(),
      masterUsername: (map['masterUsername'] as String).input(),
      migrationMode: (map['migrationMode'] as String).input(),
    );
  }
}

