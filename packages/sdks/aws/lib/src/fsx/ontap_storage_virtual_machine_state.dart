// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_storage_virtual_machine_active_directory_configuration.dart';
import 'ontap_storage_virtual_machine_endpoint.dart';

/// Input properties used for looking up and filtering OntapStorageVirtualMachine resources.
class OntapStorageVirtualMachineState {
  /// Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below.
  final pulumi.Input<OntapStorageVirtualMachineActiveDirectoryConfiguration>? activeDirectoryConfiguration;
  /// Amazon Resource Name of the storage virtual machine.
  final pulumi.Input<String>? arn;
  /// The endpoints that are used to access data or to manage the storage virtual machine using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  final pulumi.Input<List<OntapStorageVirtualMachineEndpoint>>? endpoints;
  /// The ID of the Amazon FSx ONTAP File System that this SVM will be created on.
  final pulumi.Input<String>? fileSystemId;
  /// The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the root volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is `UNIX`.
  final pulumi.Input<String>? rootVolumeSecurityStyle;
  /// Describes the SVM's subtype, e.g. `DEFAULT`
  final pulumi.Input<String>? subtype;
  /// Specifies the password to use when logging on to the SVM using a secure shell (SSH) connection to the SVM's management endpoint. Doing so enables you to manage the SVM using the NetApp ONTAP CLI or REST API. If you do not specify a password, you can still use the file system's fsxadmin user to manage the SVM.
  final pulumi.Input<String>? svmAdminPassword;
  /// A map of tags to assign to the storage virtual machine. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The SVM's UUID (universally unique identifier).
  final pulumi.Input<String>? uuid;

  /// Creates a new [OntapStorageVirtualMachineState].
  /// [activeDirectoryConfiguration] Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below.
  /// [arn] Amazon Resource Name of the storage virtual machine.
  /// [endpoints] The endpoints that are used to access data or to manage the storage virtual machine using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  /// [fileSystemId] The ID of the Amazon FSx ONTAP File System that this SVM will be created on.
  /// [name] The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootVolumeSecurityStyle] Specifies the root volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is `UNIX`.
  /// [subtype] Describes the SVM's subtype, e.g. `DEFAULT`
  /// [svmAdminPassword] Specifies the password to use when logging on to the SVM using a secure shell (SSH) connection to the SVM's management endpoint. Doing so enables you to manage the SVM using the NetApp ONTAP CLI or REST API. If you do not specify a password, you can still use the file system's fsxadmin user to manage the SVM.
  /// [tags] A map of tags to assign to the storage virtual machine. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uuid] The SVM's UUID (universally unique identifier).
  OntapStorageVirtualMachineState({
    this.activeDirectoryConfiguration,
    this.arn,
    this.endpoints,
    this.fileSystemId,
    this.name,
    this.region,
    this.rootVolumeSecurityStyle,
    this.subtype,
    this.svmAdminPassword,
    this.tags,
    this.tagsAll,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapStorageVirtualMachineActiveDirectoryConfiguration, Map<String, dynamic>>(activeDirectoryConfiguration, (value) => value.toMap()),
      'arn': ?arn,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<OntapStorageVirtualMachineEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<OntapStorageVirtualMachineEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSystemId': ?fileSystemId,
      'name': ?name,
      'region': ?region,
      'rootVolumeSecurityStyle': ?rootVolumeSecurityStyle,
      'subtype': ?subtype,
      'svmAdminPassword': ?svmAdminPassword,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uuid': ?uuid,
    };
  }

  factory OntapStorageVirtualMachineState.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineState(
      activeDirectoryConfiguration: map['activeDirectoryConfiguration'] == null ? null : ((OntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap((map['activeDirectoryConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      endpoints: map['endpoints'] == null ? null : ((pulumi.Input.decodeList<OntapStorageVirtualMachineEndpoint>(map['endpoints']!, (value) => OntapStorageVirtualMachineEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      fileSystemId: map['fileSystemId'] == null ? null : ((map['fileSystemId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      rootVolumeSecurityStyle: map['rootVolumeSecurityStyle'] == null ? null : ((map['rootVolumeSecurityStyle'] as String).input()).input(),
      subtype: map['subtype'] == null ? null : ((map['subtype'] as String).input()).input(),
      svmAdminPassword: map['svmAdminPassword'] == null ? null : ((map['svmAdminPassword'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      uuid: map['uuid'] == null ? null : ((map['uuid'] as String).input()).input(),
    );
  }
}

