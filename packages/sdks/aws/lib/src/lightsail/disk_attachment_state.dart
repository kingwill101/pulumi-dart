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
    pulumi.Output<String>? diskName,
    pulumi.Output<String>? diskPath,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? region,
  }) :
      diskName = pulumi.Input.asOptionalInput<String>(diskName),
      diskPath = pulumi.Input.asOptionalInput<String>(diskPath),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      diskName: map['diskName'] == null ? null : pulumi.Output.create<String>(map['diskName'] as String),
      diskPath: map['diskPath'] == null ? null : pulumi.Output.create<String>(map['diskPath'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

