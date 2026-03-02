// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_volume_snaplock_configuration_retention_period_default_retention.dart';
import 'ontap_volume_snaplock_configuration_retention_period_maximum_retention.dart';
import 'ontap_volume_snaplock_configuration_retention_period_minimum_retention.dart';

class OntapVolumeSnaplockConfigurationRetentionPeriod {
  /// The retention period assigned to a write once, read many (WORM) file by default if an explicit retention period is not set for an FSx for ONTAP SnapLock volume. The default retention period must be greater than or equal to the minimum retention period and less than or equal to the maximum retention period. See `default_retention` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention>? defaultRetention;
  /// The longest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `maximum_retention` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention>? maximumRetention;
  /// The shortest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `minimum_retention` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention>? minimumRetention;

  /// Creates a new [OntapVolumeSnaplockConfigurationRetentionPeriod].
  /// [defaultRetention] The retention period assigned to a write once, read many (WORM) file by default if an explicit retention period is not set for an FSx for ONTAP SnapLock volume. The default retention period must be greater than or equal to the minimum retention period and less than or equal to the maximum retention period. See `default_retention` Block for details.
  /// [maximumRetention] The longest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `maximum_retention` Block for details.
  /// [minimumRetention] The shortest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. See `minimum_retention` Block for details.
  OntapVolumeSnaplockConfigurationRetentionPeriod({
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
      defaultRetention: map['defaultRetention'] == null ? null : ((OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention.fromMap((map['defaultRetention']! as Map).cast<String, dynamic>())).input()).input(),
      maximumRetention: map['maximumRetention'] == null ? null : ((OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention.fromMap((map['maximumRetention']! as Map).cast<String, dynamic>())).input()).input(),
      minimumRetention: map['minimumRetention'] == null ? null : ((OntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention.fromMap((map['minimumRetention']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

