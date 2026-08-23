// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_volume_snaplock_configuration_autocommit_period.dart';
import 'ontap_volume_snaplock_configuration_retention_period.dart';

class OntapVolumeSnaplockConfiguration {
  /// Whether to enable the audit log volume for an FSx for ONTAP SnapLock volume. The default value is `false`.
  final pulumi.Input<bool>? auditLogVolume;
  /// Configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. See `autocommitPeriod` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationAutocommitPeriod>? autocommitPeriod;
  /// Whether privileged delete is enabled, disabled, or permanently disabled on an FSx for ONTAP SnapLock Enterprise volume. Valid values: `DISABLED`, `ENABLED`, `PERMANENTLY_DISABLED`. The default value is `DISABLED`.
  final pulumi.Input<String>? privilegedDelete;
  /// Retention period of an FSx for ONTAP SnapLock volume. See `retentionPeriod` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfigurationRetentionPeriod>? retentionPeriod;
  /// Retention mode of an FSx for ONTAP SnapLock volume. After it is set, it can't be changed. Valid values: `COMPLIANCE`, `ENTERPRISE`.
  final pulumi.Input<String> snaplockType;
  /// Whether to enable volume-append mode on an FSx for ONTAP SnapLock volume. The default value is `false`.
  final pulumi.Input<bool>? volumeAppendModeEnabled;

  /// Creates a new [OntapVolumeSnaplockConfiguration].
  /// [auditLogVolume] Whether to enable the audit log volume for an FSx for ONTAP SnapLock volume. The default value is `false`.
  /// [autocommitPeriod] Configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. See `autocommitPeriod` Block for details.
  /// [privilegedDelete] Whether privileged delete is enabled, disabled, or permanently disabled on an FSx for ONTAP SnapLock Enterprise volume. Valid values: `DISABLED`, `ENABLED`, `PERMANENTLY_DISABLED`. The default value is `DISABLED`.
  /// [retentionPeriod] Retention period of an FSx for ONTAP SnapLock volume. See `retentionPeriod` Block for details.
  /// [snaplockType] Retention mode of an FSx for ONTAP SnapLock volume. After it is set, it can't be changed. Valid values: `COMPLIANCE`, `ENTERPRISE`.
  /// [volumeAppendModeEnabled] Whether to enable volume-append mode on an FSx for ONTAP SnapLock volume. The default value is `false`.
  const OntapVolumeSnaplockConfiguration({
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
      'autocommitPeriod': ?pulumi.Input.mapOptionalInputValue<OntapVolumeSnaplockConfigurationAutocommitPeriod, Map<String, dynamic>>(autocommitPeriod, (value) => value.toMap()),
      'privilegedDelete': ?privilegedDelete,
      'retentionPeriod': ?pulumi.Input.mapOptionalInputValue<OntapVolumeSnaplockConfigurationRetentionPeriod, Map<String, dynamic>>(retentionPeriod, (value) => value.toMap()),
      'snaplockType': snaplockType,
      'volumeAppendModeEnabled': ?volumeAppendModeEnabled,
    };
  }

  factory OntapVolumeSnaplockConfiguration.fromMap(Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfiguration(
      auditLogVolume: (() { final guardedValue = map['auditLogVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autocommitPeriod: (() { final guardedValue = map['autocommitPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeSnaplockConfigurationAutocommitPeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privilegedDelete: (() { final guardedValue = map['privilegedDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeSnaplockConfigurationRetentionPeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snaplockType: pulumi.Input.fromValue(map['snaplockType'] as String),
      volumeAppendModeEnabled: (() { final guardedValue = map['volumeAppendModeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
