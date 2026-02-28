// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_disk_attachment_disk_attachment_args_doc}
/// The set of arguments for DiskAttachment.
/// {@endtemplate}
/// {@macro pulumi_lightsail_disk_attachment_disk_attachment_args_doc}
class DiskAttachmentArgs {
  /// Name of the Lightsail disk.
  final pulumi.Input<String> diskName;

  /// Disk path to expose to the instance.
  final pulumi.Input<String> diskPath;

  /// Name of the Lightsail instance to attach to.
  final pulumi.Input<String> instanceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DiskAttachmentArgs].
  /// [diskName] Name of the Lightsail disk.
  /// [diskPath] Disk path to expose to the instance.
  /// [instanceName] Name of the Lightsail instance to attach to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DiskAttachmentArgs({
    required String diskName,
    required String diskPath,
    required String instanceName,
    String? region,
  })  : diskName = pulumi.Input.asInput<String>(diskName),
        diskPath = pulumi.Input.asInput<String>(diskPath),
        instanceName = pulumi.Input.asInput<String>(instanceName),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      diskName: map['diskName'] as String,
      diskPath: map['diskPath'] as String,
      instanceName: map['instanceName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
