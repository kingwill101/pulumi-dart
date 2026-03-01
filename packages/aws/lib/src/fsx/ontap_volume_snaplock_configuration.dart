// ignore_for_file: unused_element, unnecessary_cast

import 'ontap_volume_snaplock_configuration_autocommit_period.dart';
import 'ontap_volume_snaplock_configuration_retention_period.dart';

class OntapVolumeSnaplockConfiguration {
  /// Enables or disables the audit log volume for an FSx for ONTAP SnapLock volume. The default value is `false`.
  final bool? auditLogVolume;

  /// The configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. See `autocommit_period` Block for details.
  final OntapVolumeSnaplockConfigurationAutocommitPeriod? autocommitPeriod;

  /// Enables, disables, or permanently disables privileged delete on an FSx for ONTAP SnapLock Enterprise volume. Valid values: `DISABLED`, `ENABLED`, `PERMANENTLY_DISABLED`. The default value is `DISABLED`.
  final String? privilegedDelete;

  /// The retention period of an FSx for ONTAP SnapLock volume. See `retention_period` Block for details.
  final OntapVolumeSnaplockConfigurationRetentionPeriod? retentionPeriod;

  /// Specifies the retention mode of an FSx for ONTAP SnapLock volume. After it is set, it can't be changed. Valid values: `COMPLIANCE`, `ENTERPRISE`.
  final String snaplockType;

  /// Enables or disables volume-append mode on an FSx for ONTAP SnapLock volume. The default value is `false`.
  final bool? volumeAppendModeEnabled;

  /// Creates a new [OntapVolumeSnaplockConfiguration].
  /// [auditLogVolume] Enables or disables the audit log volume for an FSx for ONTAP SnapLock volume. The default value is `false`.
  /// [autocommitPeriod] The configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. See `autocommit_period` Block for details.
  /// [privilegedDelete] Enables, disables, or permanently disables privileged delete on an FSx for ONTAP SnapLock Enterprise volume. Valid values: `DISABLED`, `ENABLED`, `PERMANENTLY_DISABLED`. The default value is `DISABLED`.
  /// [retentionPeriod] The retention period of an FSx for ONTAP SnapLock volume. See `retention_period` Block for details.
  /// [snaplockType] Specifies the retention mode of an FSx for ONTAP SnapLock volume. After it is set, it can't be changed. Valid values: `COMPLIANCE`, `ENTERPRISE`.
  /// [volumeAppendModeEnabled] Enables or disables volume-append mode on an FSx for ONTAP SnapLock volume. The default value is `false`.
  OntapVolumeSnaplockConfiguration({
    this.auditLogVolume,
    this.autocommitPeriod,
    this.privilegedDelete,
    this.retentionPeriod,
    required this.snaplockType,
    this.volumeAppendModeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogVolume': ?auditLogVolume,
      'autocommitPeriod': ?autocommitPeriod == null
          ? null
          : autocommitPeriod!.toMap(),
      'privilegedDelete': ?privilegedDelete,
      'retentionPeriod': ?retentionPeriod == null
          ? null
          : retentionPeriod!.toMap(),
      'snaplockType': snaplockType,
      'volumeAppendModeEnabled': ?volumeAppendModeEnabled,
    };
  }

  factory OntapVolumeSnaplockConfiguration.fromMap(Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfiguration(
      auditLogVolume: map['auditLogVolume'] == null
          ? null
          : map['auditLogVolume'] as bool,
      autocommitPeriod: map['autocommitPeriod'] == null
          ? null
          : OntapVolumeSnaplockConfigurationAutocommitPeriod.fromMap(
              (map['autocommitPeriod'] as Map).cast<String, dynamic>(),
            ),
      privilegedDelete: map['privilegedDelete'] == null
          ? null
          : map['privilegedDelete'] as String,
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : OntapVolumeSnaplockConfigurationRetentionPeriod.fromMap(
              (map['retentionPeriod'] as Map).cast<String, dynamic>(),
            ),
      snaplockType: map['snaplockType'] as String,
      volumeAppendModeEnabled: map['volumeAppendModeEnabled'] == null
          ? null
          : map['volumeAppendModeEnabled'] as bool,
    );
  }
}
