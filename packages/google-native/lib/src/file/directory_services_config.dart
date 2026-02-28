// ignore_for_file: unused_element, unnecessary_cast

import 'managed_active_directory_config.dart';

/// Directory Services configuration for Kerberos-based authentication.
class DirectoryServicesConfig {
  /// Configuration for Managed Service for Microsoft Active Directory.
  final ManagedActiveDirectoryConfig? managedActiveDirectory;

  /// Creates a new [DirectoryServicesConfig].
  /// [managedActiveDirectory] Configuration for Managed Service for Microsoft Active Directory.
  DirectoryServicesConfig({
    this.managedActiveDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final managedActiveDirectoryValue = managedActiveDirectory;
    if (managedActiveDirectoryValue != null) {
      map['managedActiveDirectory'] = managedActiveDirectoryValue.toMap();
    }
    return map;
  }

  factory DirectoryServicesConfig.fromMap(Map<String, dynamic> map) {
    return DirectoryServicesConfig(
      managedActiveDirectory: map['managedActiveDirectory'] == null
          ? null
          : ManagedActiveDirectoryConfig.fromMap(
              (map['managedActiveDirectory'] as Map).cast<String, dynamic>()),
    );
  }
}
