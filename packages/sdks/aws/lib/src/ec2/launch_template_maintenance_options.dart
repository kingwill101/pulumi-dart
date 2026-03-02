// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateMaintenanceOptions {
  /// Disables the automatic recovery behavior of your instance or sets it to default. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  final pulumi.Input<String>? autoRecovery;

  /// Creates a new [LaunchTemplateMaintenanceOptions].
  /// [autoRecovery] Disables the automatic recovery behavior of your instance or sets it to default. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  LaunchTemplateMaintenanceOptions({
    this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': ?autoRecovery,
    };
  }

  factory LaunchTemplateMaintenanceOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateMaintenanceOptions(
      autoRecovery: map['autoRecovery'] == null ? null : ((map['autoRecovery'] as String).input()).input(),
    );
  }
}

