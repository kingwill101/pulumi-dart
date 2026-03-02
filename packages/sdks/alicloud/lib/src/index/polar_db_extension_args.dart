// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_polar_db_extension_polar_db_extension_args_doc}
/// The set of arguments for PolarDbExtension.
/// {@endtemplate}
/// {@macro pulumi_index_polar_db_extension_polar_db_extension_args_doc}
class PolarDbExtensionArgs {
  /// The database account name of the associated PolarDB cluster. Only support `Super` account.
  final pulumi.Input<String> accountName;
  /// The ID of the cluster.
  final pulumi.Input<String> dbClusterId;
  /// PolarDB cluster database name.
  final pulumi.Input<String> dbName;
  /// Information about the installed plug-ins under the specified database.
  final pulumi.Input<String> extensionName;
  /// Installed version, only supports upgrading to the default version.
  final pulumi.Input<String>? installedVersion;

  /// Creates a new [PolarDbExtensionArgs].
  /// [accountName] The database account name of the associated PolarDB cluster. Only support `Super` account.
  /// [dbClusterId] The ID of the cluster.
  /// [dbName] PolarDB cluster database name.
  /// [extensionName] Information about the installed plug-ins under the specified database.
  /// [installedVersion] Installed version, only supports upgrading to the default version.
  PolarDbExtensionArgs({
    required this.accountName,
    required this.dbClusterId,
    required this.dbName,
    required this.extensionName,
    this.installedVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dbClusterId': dbClusterId,
      'dbName': dbName,
      'extensionName': extensionName,
      'installedVersion': ?installedVersion,
    };
  }

  factory PolarDbExtensionArgs.fromMap(Map<String, dynamic> map) {
    return PolarDbExtensionArgs(
      accountName: (map['accountName'] as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
      dbName: (map['dbName'] as String).input(),
      extensionName: (map['extensionName'] as String).input(),
      installedVersion: map['installedVersion'] == null ? null : (map['installedVersion'] as String).input(),
    );
  }
}

