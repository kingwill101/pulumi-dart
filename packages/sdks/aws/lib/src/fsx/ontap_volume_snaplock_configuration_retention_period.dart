// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_volume_snaplock_configuration_retention_period_default_retention.dart';
import 'ontap_volume_snaplock_configuration_retention_period_maximum_retention.dart';
import 'ontap_volume_snaplock_configuration_retention_period_minimum_retention.dart';

class OntapVolumeSnaplockConfigurationRetentionPeriod {
  /// Retention period assigned to a write once, read many (WORM) file by default if an explicit retention period is not set for an FSx for ONTAP SnapLock volume. The default retention period must be greater than or equal to the minimum retention period and less than or equal to the maximum retention period. See `defaultRetention` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention>? defaultRetention;
  /// Longest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `maximumRetention` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention>? maximumRetention;
  /// Shortest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `minimumRetention` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention>? minimumRetention;

  /// Creates a new [OntapVolumeSnaplockConfigurationRetentionPeriod].
  /// [defaultRetention] Retention period assigned to a write once, read many (WORM) file by default if an explicit retention period is not set for an FSx for ONTAP SnapLock volume. The default retention period must be greater than or equal to the minimum retention period and less than or equal to the maximum retention period. See `defaultRetention` Block for details.
  /// [maximumRetention] Longest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `maximumRetention` Block for details.
  /// [minimumRetention] Shortest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `minimumRetention` Block for details.
  const OntapVolumeSnaplockConfigurationRetentionPeriod({
    this.defaultRetention,
    this.maximumRetention,
    this.minimumRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRetention': ?pulumi.Input.mapOptionalInputValue<OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention, Map<String, dynamic>>(defaultRetention, (value) => value.toMap()),
      'maximumRetention': ?pulumi.Input.mapOptionalInputValue<OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention, Map<String, dynamic>>(maximumRetention, (value) => value.toMap()),
      'minimumRetention': ?pulumi.Input.mapOptionalInputValue<OntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention, Map<String, dynamic>>(minimumRetention, (value) => value.toMap()),
    };
  }

  factory OntapVolumeSnaplockConfigurationRetentionPeriod.fromMap(Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfigurationRetentionPeriod(
      defaultRetention: (() { final guardedValue = map['defaultRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumRetention: (() { final guardedValue = map['maximumRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minimumRetention: (() { final guardedValue = map['minimumRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
