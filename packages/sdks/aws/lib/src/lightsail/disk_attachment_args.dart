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
    required pulumi.Output<String> diskName,
    required pulumi.Output<String> diskPath,
    required pulumi.Output<String> instanceName,
    pulumi.Output<String>? region,
  }) :
      diskName = pulumi.Input.asInput<String>(diskName),
      diskPath = pulumi.Input.asInput<String>(diskPath),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      diskName: pulumi.Output.create<String>(map['diskName'] as String),
      diskPath: pulumi.Output.create<String>(map['diskPath'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

