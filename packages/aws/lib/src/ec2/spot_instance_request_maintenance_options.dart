// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestMaintenanceOptions {
  /// Automatic recovery behavior of the Instance. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  final String? autoRecovery;

  /// Creates a new [SpotInstanceRequestMaintenanceOptions].
  /// [autoRecovery] Automatic recovery behavior of the Instance. Can be `"default"` or `"disabled"`. See [Recover your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html) for more details.
  SpotInstanceRequestMaintenanceOptions({
    this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRecoveryValue = autoRecovery;
    if (autoRecoveryValue != null) {
      map['autoRecovery'] = autoRecoveryValue;
    }
    return map;
  }

  factory SpotInstanceRequestMaintenanceOptions.fromMap(
      Map<String, dynamic> map) {
    return SpotInstanceRequestMaintenanceOptions(
      autoRecovery:
          map['autoRecovery'] == null ? null : map['autoRecovery'] as String,
    );
  }
}
