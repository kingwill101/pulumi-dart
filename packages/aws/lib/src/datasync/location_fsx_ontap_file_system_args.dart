// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_ontap_file_system_protocol.dart';

/// {@template pulumi_datasync_location_fsx_ontap_file_system_location_fsx_ontap_file_system_args_doc}
/// The set of arguments for LocationFsxOntapFileSystem.
/// {@endtemplate}
/// {@macro pulumi_datasync_location_fsx_ontap_file_system_location_fsx_ontap_file_system_args_doc}
class LocationFsxOntapFileSystemArgs {
  /// The data transfer protocol that DataSync uses to access your Amazon FSx file system. See Protocol below.
  final pulumi.Input<LocationFsxOntapFileSystemProtocol> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The security groups that provide access to your file system's preferred subnet. The security groups must allow outbbound traffic on the following ports (depending on the protocol you use):
  /// * Network File System (NFS): TCP ports 111, 635, and 2049
  /// * Server Message Block (SMB): TCP port 445
  final pulumi.Input<List<String>> securityGroupArns;

  /// The ARN of the SVM in your file system where you want to copy data to of from.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> storageVirtualMachineArn;

  /// Path to the file share in the SVM where you'll copy your data. You can specify a junction path (also known as a mount point), qtree path (for NFS file shares), or share name (for SMB file shares) (e.g. `/vol1`, `/vol1/tree1`, `share1`).
  final pulumi.Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocationFsxOntapFileSystemArgs].
  /// [protocol] The data transfer protocol that DataSync uses to access your Amazon FSx file system. See Protocol below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The security groups that provide access to your file system's preferred subnet. The security groups must allow outbbound traffic on the following ports (depending on the protocol you use):
  /// [storageVirtualMachineArn] The ARN of the SVM in your file system where you want to copy data to of from.
  /// [subdirectory] Path to the file share in the SVM where you'll copy your data. You can specify a junction path (also known as a mount point), qtree path (for NFS file shares), or share name (for SMB file shares) (e.g. `/vol1`, `/vol1/tree1`, `share1`).
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LocationFsxOntapFileSystemArgs({
    required LocationFsxOntapFileSystemProtocol protocol,
    String? region,
    required List<String> securityGroupArns,
    required String storageVirtualMachineArn,
    String? subdirectory,
    Map<String, String>? tags,
  })  : protocol =
            pulumi.Input.asInput<LocationFsxOntapFileSystemProtocol>(protocol),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupArns =
            pulumi.Input.asInput<List<String>>(securityGroupArns),
        storageVirtualMachineArn =
            pulumi.Input.asInput<String>(storageVirtualMachineArn),
        subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['protocol'] = pulumi.Input.mapInputValue<
        LocationFsxOntapFileSystemProtocol,
        Map<String, dynamic>>(protocol, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupArns'] = securityGroupArns;
    map['storageVirtualMachineArn'] = storageVirtualMachineArn;
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LocationFsxOntapFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemArgs(
      protocol: LocationFsxOntapFileSystemProtocol.fromMap(
          (map['protocol'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupArns: (map['securityGroupArns'] as List).cast<String>(),
      storageVirtualMachineArn: map['storageVirtualMachineArn'] as String,
      subdirectory:
          map['subdirectory'] == null ? null : map['subdirectory'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
