// ignore_for_file: unused_element, unnecessary_cast

class InstanceMaintenanceOptions {
  /// Automatic recovery behavior of the Instance. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  final String? autoRecovery;

  /// Creates a new [InstanceMaintenanceOptions].
  /// [autoRecovery] Automatic recovery behavior of the Instance. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  InstanceMaintenanceOptions({this.autoRecovery});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'autoRecovery': ?autoRecovery};
  }

  factory InstanceMaintenanceOptions.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceOptions(
      autoRecovery: map['autoRecovery'] == null
          ? null
          : map['autoRecovery'] as String,
    );
  }
}
