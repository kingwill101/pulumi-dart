// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machine_active_directory_configuration_self_managed_active_directory_configuration.dart';

class GetOntapStorageVirtualMachineActiveDirectoryConfiguration {
  /// The NetBIOS name of the AD computer object to which the SVM is joined.
  final String netbiosName;
  final List<
    GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration
  >
  selfManagedActiveDirectoryConfigurations;

  /// Creates a new [GetOntapStorageVirtualMachineActiveDirectoryConfiguration].
  /// [netbiosName] The NetBIOS name of the AD computer object to which the SVM is joined.
  /// [selfManagedActiveDirectoryConfigurations] Required.
  GetOntapStorageVirtualMachineActiveDirectoryConfiguration({
    required this.netbiosName,
    required this.selfManagedActiveDirectoryConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'netbiosName': netbiosName,
      'selfManagedActiveDirectoryConfigurations':
          pulumi.Input.encodeList<
            GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration,
            Map<String, dynamic>
          >(selfManagedActiveDirectoryConfigurations, (value) => value.toMap()),
    };
  }

  factory GetOntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOntapStorageVirtualMachineActiveDirectoryConfiguration(
      netbiosName: map['netbiosName'] as String,
      selfManagedActiveDirectoryConfigurations:
          pulumi.Input.decodeList<
            GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration
          >(
            map['selfManagedActiveDirectoryConfigurations'],
            (value) =>
                GetOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
