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
  const LocationFsxOntapFileSystemState({
    this.arn,
    this.creationTime,
    this.fsxFilesystemArn,
    this.protocol,
    this.region,
    this.securityGroupArns,
    this.storageVirtualMachineArn,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fsxFilesystemArn: (() { final guardedValue = map['fsxFilesystemArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocationFsxOntapFileSystemProtocol.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupArns: (() { final guardedValue = map['securityGroupArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageVirtualMachineArn: (() { final guardedValue = map['storageVirtualMachineArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdirectory: (() { final guardedValue = map['subdirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

