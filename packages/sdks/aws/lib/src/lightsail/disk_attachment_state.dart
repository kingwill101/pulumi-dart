// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DiskAttachment resources.
class DiskAttachmentState {
  /// Name of the Lightsail disk.
  final pulumi.Input<String>? diskName;
  /// Disk path to expose to the instance.
  final pulumi.Input<String>? diskPath;
  /// Name of the Lightsail instance to attach to.
  final pulumi.Input<String>? instanceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DiskAttachmentState].
  /// [diskName] Name of the Lightsail disk.
  /// [diskPath] Disk path to expose to the instance.
  /// [instanceName] Name of the Lightsail instance to attach to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DiskAttachmentState({
    this.diskName,
    this.diskPath,
    this.instanceName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskName': ?diskName,
      'diskPath': ?diskPath,
      'instanceName': ?instanceName,
      'region': ?region,
    };
  }

  factory DiskAttachmentState.fromMap(Map<String, dynamic> map) {
    return DiskAttachmentState(
      diskName: map['diskName'] == null ? null : (map['diskName'] as String).input(),
      diskPath: map['diskPath'] == null ? null : (map['diskPath'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

