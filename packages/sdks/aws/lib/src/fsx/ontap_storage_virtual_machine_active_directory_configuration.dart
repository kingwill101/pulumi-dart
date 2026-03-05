// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_storage_virtual_machine_active_directory_configuration_self_managed_active_directory_configuration.dart';

class OntapStorageVirtualMachineActiveDirectoryConfiguration {
  /// The NetBIOS name of the Active Directory computer object that will be created for your SVM. This is often the same as the SVM name but can be different. AWS limits to 15 characters because of standard NetBIOS naming limits.
  final pulumi.Input<String>? netbiosName;
  final pulumi.Input<OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration>? selfManagedActiveDirectoryConfiguration;

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
      'selfManagedActiveDirectoryConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration, Map<String, dynamic>>(selfManagedActiveDirectoryConfiguration, (value) => value.toMap()),
    };
  }

  factory OntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineActiveDirectoryConfiguration(
      netbiosName: (() { final guardedValue = map['netbiosName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfManagedActiveDirectoryConfiguration: (() { final guardedValue = map['selfManagedActiveDirectoryConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

