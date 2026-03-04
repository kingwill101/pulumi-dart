// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerDeletionProtectionConfig {
  /// Remove the Protection Status
  final pulumi.Input<bool>? enabled;

  /// Deletion Protection Turn-on Time Use Greenwich Mean Time, in the Format of Yyyy-MM-ddTHH: mm: SSZ
  final pulumi.Input<String>? enabledTime;

  /// Creates a new [LoadBalancerDeletionProtectionConfig].
  /// [enabled] Remove the Protection Status
  /// [enabledTime] Deletion Protection Turn-on Time Use Greenwich Mean Time, in the Format of Yyyy-MM-ddTHH: mm: SSZ
  LoadBalancerDeletionProtectionConfig({this.enabled, this.enabledTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'enabledTime': ?enabledTime};
  }

  factory LoadBalancerDeletionProtectionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerDeletionProtectionConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabledTime: (() {
        final guardedValue = map['enabledTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
