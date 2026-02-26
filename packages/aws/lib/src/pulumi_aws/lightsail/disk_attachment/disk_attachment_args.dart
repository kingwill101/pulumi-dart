// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DiskAttachment.
class DiskAttachmentArgs {
  /// Name of the Lightsail disk.
  final Input<String> diskName;

  /// Disk path to expose to the instance.
  final Input<String> diskPath;

  /// Name of the Lightsail instance to attach to.
  final Input<String> instanceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  DiskAttachmentArgs({
    required this.diskName,
    required this.diskPath,
    required this.instanceName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskName'] = diskName;
    map['diskPath'] = diskPath;
    map['instanceName'] = instanceName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DiskAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DiskAttachmentArgs(
      diskName: Input.asInput<String>(map['diskName']),
      diskPath: Input.asInput<String>(map['diskPath']),
      instanceName: Input.asInput<String>(map['instanceName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
