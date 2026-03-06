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
  const PolarDbExtensionState({
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
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterId: (() { final guardedValue = map['dbClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionName: (() { final guardedValue = map['extensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installedVersion: (() { final guardedValue = map['installedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

