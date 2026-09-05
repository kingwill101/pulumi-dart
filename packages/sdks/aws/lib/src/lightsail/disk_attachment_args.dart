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
  final pulumi.Input<String?>? region;

  /// Creates a new [DiskAttachmentArgs].
  /// [diskName] Name of the Lightsail disk.
  /// [diskPath] Disk path to expose to the instance.
  /// [instanceName] Name of the Lightsail instance to attach to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DiskAttachmentArgs({
    required this.diskName,
    required this.diskPath,
    required this.instanceName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskName': diskName,
      'diskPath': diskPath,
      'instanceName': instanceName,
      'region': ?region,
    };
  }

  factory DiskAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DiskAttachmentArgs(
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskPath: pulumi.Input.fromValue(map['diskPath'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
