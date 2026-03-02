// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolarDbExtension resources.
class PolarDbExtensionState {
  /// The database account name of the associated PolarDB cluster. Only support `Super` account.
  final pulumi.Input<String>? accountName;
  /// The ID of the cluster.
  final pulumi.Input<String>? dbClusterId;
  /// PolarDB cluster database name.
  final pulumi.Input<String>? dbName;
  /// Default version.
  final pulumi.Input<String>? defaultVersion;
  /// Information about the installed plug-ins under the specified database.
  final pulumi.Input<String>? extensionName;
  /// Installed version, only supports upgrading to the default version.
  final pulumi.Input<String>? installedVersion;

  /// Creates a new [PolarDbExtensionState].
  /// [accountName] The database account name of the associated PolarDB cluster. Only support `Super` account.
  /// [dbClusterId] The ID of the cluster.
  /// [dbName] PolarDB cluster database name.
  /// [defaultVersion] Default version.
  /// [extensionName] Information about the installed plug-ins under the specified database.
  /// [installedVersion] Installed version, only supports upgrading to the default version.
  PolarDbExtensionState({
    this.accountName,
    this.dbClusterId,
    this.dbName,
    this.defaultVersion,
    this.extensionName,
    this.installedVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'dbClusterId': ?dbClusterId,
      'dbName': ?dbName,
      'defaultVersion': ?defaultVersion,
      'extensionName': ?extensionName,
      'installedVersion': ?installedVersion,
    };
  }

  factory PolarDbExtensionState.fromMap(Map<String, dynamic> map) {
    return PolarDbExtensionState(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId'] as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName'] as String).input(),
      defaultVersion: map['defaultVersion'] == null ? null : (map['defaultVersion'] as String).input(),
      extensionName: map['extensionName'] == null ? null : (map['extensionName'] as String).input(),
      installedVersion: map['installedVersion'] == null ? null : (map['installedVersion'] as String).input(),
    );
  }
}

