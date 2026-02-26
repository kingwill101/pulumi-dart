// ignore_for_file: unused_element, unnecessary_cast

import '../ontap_volume_snaplock_configuration_autocommit_period/ontap_volume_snaplock_configuration_autocommit_period.dart';
import '../ontap_volume_snaplock_configuration_retention_period/ontap_volume_snaplock_configuration_retention_period.dart';

class OntapVolumeSnaplockConfiguration {
  /// Enables or disables the audit log volume for an FSx for ONTAP SnapLock volume. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? auditLogVolume;

  /// The configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. See <span pulumi-lang-nodejs="`autocommitPeriod`" pulumi-lang-dotnet="`AutocommitPeriod`" pulumi-lang-go="`autocommitPeriod`" pulumi-lang-python="`autocommit_period`" pulumi-lang-yaml="`autocommitPeriod`" pulumi-lang-java="`autocommitPeriod`">`autocommit_period`</span> Block for details.
  final OntapVolumeSnaplockConfigurationAutocommitPeriod? autocommitPeriod;

  /// Enables, disables, or permanently disables privileged delete on an FSx for ONTAP SnapLock Enterprise volume. Valid values: `DISABLED`, `ENABLED`, `PERMANENTLY_DISABLED`. The default value is `DISABLED`.
  final String? privilegedDelete;

  /// The retention period of an FSx for ONTAP SnapLock volume. See <span pulumi-lang-nodejs="`retentionPeriod`" pulumi-lang-dotnet="`RetentionPeriod`" pulumi-lang-go="`retentionPeriod`" pulumi-lang-python="`retention_period`" pulumi-lang-yaml="`retentionPeriod`" pulumi-lang-java="`retentionPeriod`">`retention_period`</span> Block for details.
  final OntapVolumeSnaplockConfigurationRetentionPeriod? retentionPeriod;

  /// Specifies the retention mode of an FSx for ONTAP SnapLock volume. After it is set, it can't be changed. Valid values: `COMPLIANCE`, `ENTERPRISE`.
  final String snaplockType;

  /// Enables or disables volume-append mode on an FSx for ONTAP SnapLock volume. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? volumeAppendModeEnabled;

  OntapVolumeSnaplockConfiguration({
    this.auditLogVolume,
    this.autocommitPeriod,
    this.privilegedDelete,
    this.retentionPeriod,
    required this.snaplockType,
    this.volumeAppendModeEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditLogVolumeValue = auditLogVolume;
    if (auditLogVolumeValue != null) {
      map['auditLogVolume'] = auditLogVolumeValue;
    }
    final autocommitPeriodValue = autocommitPeriod;
    if (autocommitPeriodValue != null) {
      map['autocommitPeriod'] = autocommitPeriodValue.toMap();
    }
    final privilegedDeleteValue = privilegedDelete;
    if (privilegedDeleteValue != null) {
      map['privilegedDelete'] = privilegedDeleteValue;
    }
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue.toMap();
    }
    map['snaplockType'] = snaplockType;
    final volumeAppendModeEnabledValue = volumeAppendModeEnabled;
    if (volumeAppendModeEnabledValue != null) {
      map['volumeAppendModeEnabled'] = volumeAppendModeEnabledValue;
    }
    return map;
  }

  factory OntapVolumeSnaplockConfiguration.fromMap(Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfiguration(
      auditLogVolume:
          map['auditLogVolume'] == null ? null : map['auditLogVolume'] as bool,
      autocommitPeriod: map['autocommitPeriod'] == null
          ? null
          : OntapVolumeSnaplockConfigurationAutocommitPeriod.fromMap(
              (map['autocommitPeriod'] as Map).cast<String, dynamic>()),
      privilegedDelete: map['privilegedDelete'] == null
          ? null
          : map['privilegedDelete'] as String,
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : OntapVolumeSnaplockConfigurationRetentionPeriod.fromMap(
              (map['retentionPeriod'] as Map).cast<String, dynamic>()),
      snaplockType: map['snaplockType'] as String,
      volumeAppendModeEnabled: map['volumeAppendModeEnabled'] == null
          ? null
          : map['volumeAppendModeEnabled'] as bool,
    );
  }
}
