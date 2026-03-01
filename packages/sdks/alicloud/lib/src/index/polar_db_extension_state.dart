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
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? dbName,
    pulumi.Output<String>? defaultVersion,
    pulumi.Output<String>? extensionName,
    pulumi.Output<String>? installedVersion,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      dbName = pulumi.Input.asOptionalInput<String>(dbName),
      defaultVersion = pulumi.Input.asOptionalInput<String>(defaultVersion),
      extensionName = pulumi.Input.asOptionalInput<String>(extensionName),
      installedVersion = pulumi.Input.asOptionalInput<String>(installedVersion);

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
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbName: map['dbName'] == null ? null : pulumi.Output.create<String>(map['dbName'] as String),
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<String>(map['defaultVersion'] as String),
      extensionName: map['extensionName'] == null ? null : pulumi.Output.create<String>(map['extensionName'] as String),
      installedVersion: map['installedVersion'] == null ? null : pulumi.Output.create<String>(map['installedVersion'] as String),
    );
  }
}

