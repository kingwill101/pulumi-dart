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
    pulumi.Output<OntapStorageVirtualMachineActiveDirectoryConfiguration>? activeDirectoryConfiguration,
    pulumi.Output<String>? arn,
    pulumi.Output<List<OntapStorageVirtualMachineEndpoint>>? endpoints,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rootVolumeSecurityStyle,
    pulumi.Output<String>? subtype,
    pulumi.Output<String>? svmAdminPassword,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uuid,
  }) :
      activeDirectoryConfiguration = pulumi.Input.asOptionalInput<OntapStorageVirtualMachineActiveDirectoryConfiguration>(activeDirectoryConfiguration),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      endpoints = pulumi.Input.asOptionalInput<List<OntapStorageVirtualMachineEndpoint>>(endpoints),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootVolumeSecurityStyle = pulumi.Input.asOptionalInput<String>(rootVolumeSecurityStyle),
      subtype = pulumi.Input.asOptionalInput<String>(subtype),
      svmAdminPassword = pulumi.Input.asOptionalInput<String>(svmAdminPassword),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

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
      activeDirectoryConfiguration: map['activeDirectoryConfiguration'] == null ? null : pulumi.Output.create<OntapStorageVirtualMachineActiveDirectoryConfiguration>(OntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap((map['activeDirectoryConfiguration'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<OntapStorageVirtualMachineEndpoint>>(pulumi.Input.decodeList<OntapStorageVirtualMachineEndpoint>(map['endpoints'], (value) => OntapStorageVirtualMachineEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootVolumeSecurityStyle: map['rootVolumeSecurityStyle'] == null ? null : pulumi.Output.create<String>(map['rootVolumeSecurityStyle'] as String),
      subtype: map['subtype'] == null ? null : pulumi.Output.create<String>(map['subtype'] as String),
      svmAdminPassword: map['svmAdminPassword'] == null ? null : pulumi.Output.create<String>(map['svmAdminPassword'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

