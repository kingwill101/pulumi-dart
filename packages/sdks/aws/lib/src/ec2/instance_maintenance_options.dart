// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMaintenanceOptions {
  /// Automatic recovery behavior of the Instance. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  final pulumi.Input<String>? autoRecovery;

  /// Creates a new [InstanceMaintenanceOptions].
  /// [autoRecovery] Automatic recovery behavior of the Instance. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  const InstanceMaintenanceOptions({
    this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': ?autoRecovery,
    };
  }

  factory InstanceMaintenanceOptions.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceOptions(
      autoRecovery: (() { final guardedValue = map['autoRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

