// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ontap_storage_virtual_machine_active_directory_configuration/ontap_storage_virtual_machine_active_directory_configuration.dart';

/// The set of arguments for OntapStorageVirtualMachine.
class OntapStorageVirtualMachineArgs {
  /// Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below.
  final Input<OntapStorageVirtualMachineActiveDirectoryConfiguration>?
      activeDirectoryConfiguration;

  /// The ID of the Amazon FSx ONTAP File System that this SVM will be created on.
  final Input<String> fileSystemId;

  /// The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the root volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is `UNIX`.
  final Input<String>? rootVolumeSecurityStyle;

  /// Specifies the password to use when logging on to the SVM using a secure shell (SSH) connection to the SVM's management endpoint. Doing so enables you to manage the SVM using the NetApp ONTAP CLI or REST API. If you do not specify a password, you can still use the file system's fsxadmin user to manage the SVM.
  final Input<String>? svmAdminPassword;

  /// A map of tags to assign to the storage virtual machine. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  OntapStorageVirtualMachineArgs({
    this.activeDirectoryConfiguration,
    required this.fileSystemId,
    this.name,
    this.region,
    this.rootVolumeSecurityStyle,
    this.svmAdminPassword,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeDirectoryConfigurationValue = activeDirectoryConfiguration;
    if (activeDirectoryConfigurationValue != null) {
      map['activeDirectoryConfiguration'] = Input.mapOptionalInputValue<
              OntapStorageVirtualMachineActiveDirectoryConfiguration,
              Map<String, dynamic>>(
          activeDirectoryConfigurationValue, (value) => value.toMap());
    }
    map['fileSystemId'] = fileSystemId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootVolumeSecurityStyleValue = rootVolumeSecurityStyle;
    if (rootVolumeSecurityStyleValue != null) {
      map['rootVolumeSecurityStyle'] = rootVolumeSecurityStyleValue;
    }
    final svmAdminPasswordValue = svmAdminPassword;
    if (svmAdminPasswordValue != null) {
      map['svmAdminPassword'] = svmAdminPasswordValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory OntapStorageVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineArgs(
      activeDirectoryConfiguration: Input.asOptionalInput<
              OntapStorageVirtualMachineActiveDirectoryConfiguration>(
          map['activeDirectoryConfiguration']),
      fileSystemId: Input.asInput<String>(map['fileSystemId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      rootVolumeSecurityStyle:
          Input.asOptionalInput<String>(map['rootVolumeSecurityStyle']),
      svmAdminPassword: Input.asOptionalInput<String>(map['svmAdminPassword']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
