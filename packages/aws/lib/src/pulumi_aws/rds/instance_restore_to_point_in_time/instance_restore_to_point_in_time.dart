// ignore_for_file: unused_element, unnecessary_cast

class InstanceRestoreToPointInTime {
  /// The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with <span pulumi-lang-nodejs="`useLatestRestorableTime`" pulumi-lang-dotnet="`UseLatestRestorableTime`" pulumi-lang-go="`useLatestRestorableTime`" pulumi-lang-python="`use_latest_restorable_time`" pulumi-lang-yaml="`useLatestRestorableTime`" pulumi-lang-java="`useLatestRestorableTime`">`use_latest_restorable_time`</span>.
  final String? restoreTime;

  /// The ARN of the automated backup from which to restore. Required if <span pulumi-lang-nodejs="`sourceDbInstanceIdentifier`" pulumi-lang-dotnet="`SourceDbInstanceIdentifier`" pulumi-lang-go="`sourceDbInstanceIdentifier`" pulumi-lang-python="`source_db_instance_identifier`" pulumi-lang-yaml="`sourceDbInstanceIdentifier`" pulumi-lang-java="`sourceDbInstanceIdentifier`">`source_db_instance_identifier`</span> or <span pulumi-lang-nodejs="`sourceDbiResourceId`" pulumi-lang-dotnet="`SourceDbiResourceId`" pulumi-lang-go="`sourceDbiResourceId`" pulumi-lang-python="`source_dbi_resource_id`" pulumi-lang-yaml="`sourceDbiResourceId`" pulumi-lang-java="`sourceDbiResourceId`">`source_dbi_resource_id`</span> is not specified.
  final String? sourceDbInstanceAutomatedBackupsArn;

  /// The identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if <span pulumi-lang-nodejs="`sourceDbInstanceAutomatedBackupsArn`" pulumi-lang-dotnet="`SourceDbInstanceAutomatedBackupsArn`" pulumi-lang-go="`sourceDbInstanceAutomatedBackupsArn`" pulumi-lang-python="`source_db_instance_automated_backups_arn`" pulumi-lang-yaml="`sourceDbInstanceAutomatedBackupsArn`" pulumi-lang-java="`sourceDbInstanceAutomatedBackupsArn`">`source_db_instance_automated_backups_arn`</span> or <span pulumi-lang-nodejs="`sourceDbiResourceId`" pulumi-lang-dotnet="`SourceDbiResourceId`" pulumi-lang-go="`sourceDbiResourceId`" pulumi-lang-python="`source_dbi_resource_id`" pulumi-lang-yaml="`sourceDbiResourceId`" pulumi-lang-java="`sourceDbiResourceId`">`source_dbi_resource_id`</span> is not specified.
  final String? sourceDbInstanceIdentifier;

  /// The resource ID of the source DB instance from which to restore. Required if <span pulumi-lang-nodejs="`sourceDbInstanceIdentifier`" pulumi-lang-dotnet="`SourceDbInstanceIdentifier`" pulumi-lang-go="`sourceDbInstanceIdentifier`" pulumi-lang-python="`source_db_instance_identifier`" pulumi-lang-yaml="`sourceDbInstanceIdentifier`" pulumi-lang-java="`sourceDbInstanceIdentifier`">`source_db_instance_identifier`</span> or <span pulumi-lang-nodejs="`sourceDbInstanceAutomatedBackupsArn`" pulumi-lang-dotnet="`SourceDbInstanceAutomatedBackupsArn`" pulumi-lang-go="`sourceDbInstanceAutomatedBackupsArn`" pulumi-lang-python="`source_db_instance_automated_backups_arn`" pulumi-lang-yaml="`sourceDbInstanceAutomatedBackupsArn`" pulumi-lang-java="`sourceDbInstanceAutomatedBackupsArn`">`source_db_instance_automated_backups_arn`</span> is not specified.
  final String? sourceDbiResourceId;

  /// A boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Cannot be specified with <span pulumi-lang-nodejs="`restoreTime`" pulumi-lang-dotnet="`RestoreTime`" pulumi-lang-go="`restoreTime`" pulumi-lang-python="`restore_time`" pulumi-lang-yaml="`restoreTime`" pulumi-lang-java="`restoreTime`">`restore_time`</span>.
  final bool? useLatestRestorableTime;

  InstanceRestoreToPointInTime({
    this.restoreTime,
    this.sourceDbInstanceAutomatedBackupsArn,
    this.sourceDbInstanceIdentifier,
    this.sourceDbiResourceId,
    this.useLatestRestorableTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final restoreTimeValue = restoreTime;
    if (restoreTimeValue != null) {
      map['restoreTime'] = restoreTimeValue;
    }
    final sourceDbInstanceAutomatedBackupsArnValue =
        sourceDbInstanceAutomatedBackupsArn;
    if (sourceDbInstanceAutomatedBackupsArnValue != null) {
      map['sourceDbInstanceAutomatedBackupsArn'] =
          sourceDbInstanceAutomatedBackupsArnValue;
    }
    final sourceDbInstanceIdentifierValue = sourceDbInstanceIdentifier;
    if (sourceDbInstanceIdentifierValue != null) {
      map['sourceDbInstanceIdentifier'] = sourceDbInstanceIdentifierValue;
    }
    final sourceDbiResourceIdValue = sourceDbiResourceId;
    if (sourceDbiResourceIdValue != null) {
      map['sourceDbiResourceId'] = sourceDbiResourceIdValue;
    }
    final useLatestRestorableTimeValue = useLatestRestorableTime;
    if (useLatestRestorableTimeValue != null) {
      map['useLatestRestorableTime'] = useLatestRestorableTimeValue;
    }
    return map;
  }

  factory InstanceRestoreToPointInTime.fromMap(Map<String, dynamic> map) {
    return InstanceRestoreToPointInTime(
      restoreTime:
          map['restoreTime'] == null ? null : map['restoreTime'] as String,
      sourceDbInstanceAutomatedBackupsArn:
          map['sourceDbInstanceAutomatedBackupsArn'] == null
              ? null
              : map['sourceDbInstanceAutomatedBackupsArn'] as String,
      sourceDbInstanceIdentifier: map['sourceDbInstanceIdentifier'] == null
          ? null
          : map['sourceDbInstanceIdentifier'] as String,
      sourceDbiResourceId: map['sourceDbiResourceId'] == null
          ? null
          : map['sourceDbiResourceId'] as String,
      useLatestRestorableTime: map['useLatestRestorableTime'] == null
          ? null
          : map['useLatestRestorableTime'] as bool,
    );
  }
}
