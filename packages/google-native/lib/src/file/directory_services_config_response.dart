// ignore_for_file: unused_element, unnecessary_cast

import 'managed_active_directory_config_response.dart';

/// Directory Services configuration for Kerberos-based authentication.
class DirectoryServicesConfigResponse {
  /// Configuration for Managed Service for Microsoft Active Directory.
  final ManagedActiveDirectoryConfigResponse managedActiveDirectory;

  /// Creates a new [DirectoryServicesConfigResponse].
  /// [managedActiveDirectory] Configuration for Managed Service for Microsoft Active Directory.
  DirectoryServicesConfigResponse({required this.managedActiveDirectory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedActiveDirectory': managedActiveDirectory.toMap(),
    };
  }

  factory DirectoryServicesConfigResponse.fromMap(Map<String, dynamic> map) {
    return DirectoryServicesConfigResponse(
      managedActiveDirectory: ManagedActiveDirectoryConfigResponse.fromMap(
        (map['managedActiveDirectory'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
