// ignore_for_file: unused_element, unnecessary_cast

import 'ontap_storage_virtual_machine_active_directory_configuration_self_managed_active_directory_configuration.dart';

class OntapStorageVirtualMachineActiveDirectoryConfiguration {
  /// The NetBIOS name of the Active Directory computer object that will be created for your SVM. This is often the same as the SVM name but can be different. AWS limits to 15 characters because of standard NetBIOS naming limits.
  final String? netbiosName;
  final OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration?
  selfManagedActiveDirectoryConfiguration;

  /// Creates a new [OntapStorageVirtualMachineActiveDirectoryConfiguration].
  /// [netbiosName] The NetBIOS name of the Active Directory computer object that will be created for your SVM. This is often the same as the SVM name but can be different. AWS limits to 15 characters because of standard NetBIOS naming limits.
  /// [selfManagedActiveDirectoryConfiguration] Optional.
  OntapStorageVirtualMachineActiveDirectoryConfiguration({
    this.netbiosName,
    this.selfManagedActiveDirectoryConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'netbiosName': ?netbiosName,
      'selfManagedActiveDirectoryConfiguration':
          ?selfManagedActiveDirectoryConfiguration == null
          ? null
          : selfManagedActiveDirectoryConfiguration!.toMap(),
    };
  }

  factory OntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return OntapStorageVirtualMachineActiveDirectoryConfiguration(
      netbiosName: map['netbiosName'] == null
          ? null
          : map['netbiosName'] as String,
      selfManagedActiveDirectoryConfiguration:
          map['selfManagedActiveDirectoryConfiguration'] == null
          ? null
          : OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration.fromMap(
              (map['selfManagedActiveDirectoryConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
