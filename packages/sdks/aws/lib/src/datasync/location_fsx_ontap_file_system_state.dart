// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_ontap_file_system_protocol.dart';

/// Input properties used for looking up and filtering LocationFsxOntapFileSystem resources.
class LocationFsxOntapFileSystemState {
  /// ARN of the DataSync Location for the FSx Ontap File System.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? creationTime;
  /// ARN of the FSx Ontap File System.
  final pulumi.Input<String>? fsxFilesystemArn;
  /// The data transfer protocol that DataSync uses to access your Amazon FSx file system. See Protocol below.
  final pulumi.Input<LocationFsxOntapFileSystemProtocol>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The security groups that provide access to your file system's preferred subnet. The security groups must allow outbbound traffic on the following ports (depending on the protocol you use):
  /// * Network File System (NFS): TCP ports 111, 635, and 2049
  /// * Server Message Block (SMB): TCP port 445
  final pulumi.Input<List<String>>? securityGroupArns;
  /// The ARN of the SVM in your file system where you want to copy data to of from.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? storageVirtualMachineArn;
  /// Path to the file share in the SVM where you'll copy your data. You can specify a junction path (also known as a mount point), qtree path (for NFS file shares), or share name (for SMB file shares) (e.g. `/vol1`, `/vol1/tree1`, `share1`).
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// URI of the FSx ONTAP file system location
  final pulumi.Input<String>? uri;

  /// Creates a new [LocationFsxOntapFileSystemState].
  /// [arn] ARN of the DataSync Location for the FSx Ontap File System.
  /// [creationTime] Optional.
  /// [fsxFilesystemArn] ARN of the FSx Ontap File System.
  /// [protocol] The data transfer protocol that DataSync uses to access your Amazon FSx file system. See Protocol below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The security groups that provide access to your file system's preferred subnet. The security groups must allow outbbound traffic on the following ports (depending on the protocol you use):
  /// [storageVirtualMachineArn] The ARN of the SVM in your file system where you want to copy data to of from.
  /// [subdirectory] Path to the file share in the SVM where you'll copy your data. You can specify a junction path (also known as a mount point), qtree path (for NFS file shares), or share name (for SMB file shares) (e.g. `/vol1`, `/vol1/tree1`, `share1`).
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [uri] URI of the FSx ONTAP file system location
  LocationFsxOntapFileSystemState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? fsxFilesystemArn,
    pulumi.Output<LocationFsxOntapFileSystemProtocol>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupArns,
    pulumi.Output<String>? storageVirtualMachineArn,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      fsxFilesystemArn = pulumi.Input.asOptionalInput<String>(fsxFilesystemArn),
      protocol = pulumi.Input.asOptionalInput<LocationFsxOntapFileSystemProtocol>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupArns = pulumi.Input.asOptionalInput<List<String>>(securityGroupArns),
      storageVirtualMachineArn = pulumi.Input.asOptionalInput<String>(storageVirtualMachineArn),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'fsxFilesystemArn': ?fsxFilesystemArn,
      'protocol': ?pulumi.Input.mapOptionalInputValue<LocationFsxOntapFileSystemProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'region': ?region,
      'securityGroupArns': ?securityGroupArns,
      'storageVirtualMachineArn': ?storageVirtualMachineArn,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory LocationFsxOntapFileSystemState.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      fsxFilesystemArn: map['fsxFilesystemArn'] == null ? null : pulumi.Output.create<String>(map['fsxFilesystemArn'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<LocationFsxOntapFileSystemProtocol>(LocationFsxOntapFileSystemProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupArns: map['securityGroupArns'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupArns'] as List).cast<String>()),
      storageVirtualMachineArn: map['storageVirtualMachineArn'] == null ? null : pulumi.Output.create<String>(map['storageVirtualMachineArn'] as String),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

