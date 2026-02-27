// ignore_for_file: unused_element, unnecessary_cast

import '../ontap_volume_snaplock_configuration_retention_period_default_retention/ontap_volume_snaplock_configuration_retention_period_default_retention.dart';
import '../ontap_volume_snaplock_configuration_retention_period_maximum_retention/ontap_volume_snaplock_configuration_retention_period_maximum_retention.dart';
import '../ontap_volume_snaplock_configuration_retention_period_minimum_retention/ontap_volume_snaplock_configuration_retention_period_minimum_retention.dart';

class OntapVolumeSnaplockConfigurationRetentionPeriod {
  /// The retention period assigned to a write once, read many (WORM) file by default if an explicit retention period is not set for an FSx for ONTAP SnapLock volume. The default retention period must be greater than or equal to the minimum retention period and less than or equal to the maximum retention period. See `default_retention` Block for details.
  final OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention?
      defaultRetention;

  /// The longest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `maximum_retention` Block for details.
  final OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention?
      maximumRetention;

  /// The shortest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `minimum_retention` Block for details.
  final OntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention?
      minimumRetention;

  OntapVolumeSnaplockConfigurationRetentionPeriod({
    this.defaultRetention,
    this.maximumRetention,
    this.minimumRetention,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultRetentionValue = defaultRetention;
    if (defaultRetentionValue != null) {
      map['defaultRetention'] = defaultRetentionValue.toMap();
    }
    final maximumRetentionValue = maximumRetention;
    if (maximumRetentionValue != null) {
      map['maximumRetention'] = maximumRetentionValue.toMap();
    }
    final minimumRetentionValue = minimumRetention;
    if (minimumRetentionValue != null) {
      map['minimumRetention'] = minimumRetentionValue.toMap();
    }
    return map;
  }

  factory OntapVolumeSnaplockConfigurationRetentionPeriod.fromMap(
      Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfigurationRetentionPeriod(
      defaultRetention: map['defaultRetention'] == null
          ? null
          : OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention
              .fromMap(
                  (map['defaultRetention'] as Map).cast<String, dynamic>()),
      maximumRetention: map['maximumRetention'] == null
          ? null
          : OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention
              .fromMap(
                  (map['maximumRetention'] as Map).cast<String, dynamic>()),
      minimumRetention: map['minimumRetention'] == null
          ? null
          : OntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention
              .fromMap(
                  (map['minimumRetention'] as Map).cast<String, dynamic>()),
    );
  }
}
