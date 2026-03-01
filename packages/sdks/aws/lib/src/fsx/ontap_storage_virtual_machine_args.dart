// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_storage_virtual_machine_active_directory_configuration.dart';

/// {@template pulumi_fsx_ontap_storage_virtual_machine_ontap_storage_virtual_machine_args_doc}
/// The set of arguments for OntapStorageVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_fsx_ontap_storage_virtual_machine_ontap_storage_virtual_machine_args_doc}
class OntapStorageVirtualMachineArgs {
  /// Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below.
  final pulumi.Input<OntapStorageVirtualMachineActiveDirectoryConfiguration>? activeDirectoryConfiguration;
  /// The ID of the Amazon FSx ONTAP File System that this SVM will be created on.
  final pulumi.Input<String> fileSystemId;
  /// The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the root volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is `UNIX`.
  final pulumi.Input<String>? rootVolumeSecurityStyle;
  /// Specifies the password to use when logging on to the SVM using a secure shell (SSH) connection to the SVM's management endpoint. Doing so enables you to manage the SVM using the NetApp ONTAP CLI or REST API. If you do not specify a password, you can still use the file system's fsxadmin user to manage the SVM.
  final pulumi.Input<String>? svmAdminPassword;
  /// A map of tags to assign to the storage virtual machine. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OntapStorageVirtualMachineArgs].
  /// [activeDirectoryConfiguration] Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below.
  /// [fileSystemId] The ID of the Amazon FSx ONTAP File System that this SVM will be created on.
  /// [name] The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootVolumeSecurityStyle] Specifies the root volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is `UNIX`.
  /// [svmAdminPassword] Specifies the password to use when logging on to the SVM using a secure shell (SSH) connection to the SVM's management endpoint. Doing so enables you to manage the SVM using the NetApp ONTAP CLI or REST API. If you do not specify a password, you can still use the file system's fsxadmin user to manage the SVM.
  /// [tags] A map of tags to assign to the storage virtual machine. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  OntapStorageVirtualMachineArgs({
    pulumi.Output<OntapStorageVirtualMachineActiveDirectoryConfiguration>? activeDirectoryConfiguration,
    required pulumi.Output<String> fileSystemId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rootVolumeSecurityStyle,
    pulumi.Output<String>? svmAdminPassword,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      activeDirectoryConfiguration = pulumi.Input.asOptionalInput<OntapStorageVirtualMachineActiveDirectoryConfiguration>(activeDirectoryConfiguration),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootVolumeSecurityStyle = pulumi.Input.asOptionalInput<String>(rootVolumeSecurityStyle),
      svmAdminPassword = pulumi.Input.asOptionalInput<String>(svmAdminPassword),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapStorageVirtualMachineActiveDirectoryConfiguration, Map<String, dynamic>>(activeDirectoryConfiguration, (value) => value.toMap()),
      'fileSystemId': fileSystemId,
      'name': ?name,
      'region': ?region,
      'rootVolumeSecurityStyle': ?rootVolumeSecurityStyle,
      'svmAdminPassword': ?svmAdminPassword,
      'tags': ?tags,
    };
  }

  factory OntapStorageVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineArgs(
      activeDirectoryConfiguration: map['activeDirectoryConfiguration'] == null ? null : pulumi.Output.create<OntapStorageVirtualMachineActiveDirectoryConfiguration>(OntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap((map['activeDirectoryConfiguration'] as Map).cast<String, dynamic>())),
      fileSystemId: pulumi.Output.create<String>(map['fileSystemId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootVolumeSecurityStyle: map['rootVolumeSecurityStyle'] == null ? null : pulumi.Output.create<String>(map['rootVolumeSecurityStyle'] as String),
      svmAdminPassword: map['svmAdminPassword'] == null ? null : pulumi.Output.create<String>(map['svmAdminPassword'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

