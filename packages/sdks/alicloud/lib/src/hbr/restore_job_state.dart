// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_job_ots_detail.dart';

/// Input properties used for looking up and filtering RestoreJob resources.
class RestoreJobState {
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  final pulumi.Input<String>? crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;
  /// The exclude path. **NOTE:** Invalid while source_type equals `OSS` or `NAS`. It's a json string with format:`["/excludePath]`, up to 255 characters. **WARNING:** If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  final pulumi.Input<String>? exclude;
  /// The include path. **NOTE:** Invalid while source_type equals `OSS` or `NAS`. It's a json string with format:`["/includePath"]`, Up to 255 characters. **WARNING:** The field is required while source_type equals `OTS_TABLE` which means source table name. If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  final pulumi.Input<String>? include;
  /// Recovery options. **NOTE:** Required while source_type equals `OSS` or `NAS`, invalid while source_type equals `ECS_FILE`. It's a json string with format:`"{"includes":[],"excludes":[]}",`. Recovery options. When restores OTS_TABLE and real target time is the rangEnd time of the snapshot, it should be a string with format: `{"UI_TargetTime":1650032529018}`.
  final pulumi.Input<String>? options;
  /// The details about the Tablestore instance. See the following `Block ots_detail`.
  final pulumi.Input<RestoreJobOtsDetail>? otsDetail;
  /// Restore Job ID. It's the unique key of this resource, if you want to set this argument by yourself, you must specify a unique keyword that never appears.
  final pulumi.Input<String>? restoreJobId;
  /// The type of recovery destination. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`,`UDM_ECS_ROLLBACK`. **Note**: Currently, there is a one-to-one correspondence between the data source type with the recovery destination type.
  final pulumi.Input<String>? restoreType;
  /// The hashcode of Snapshot.
  final pulumi.Input<String>? snapshotHash;
  /// The ID of Snapshot.
  final pulumi.Input<String>? snapshotId;
  /// The type of data source. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`,`UDM_ECS`.
  final pulumi.Input<String>? sourceType;
  /// The Restore Job Status.
  final pulumi.Input<String>? status;
  /// The target name of OSS bucket. **NOTE:** Required while source_type equals `OSS`,
  final pulumi.Input<String>? targetBucket;
  /// The target client ID.
  final pulumi.Input<String>? targetClientId;
  /// The creation time of destination File System. **NOTE:** While source_type equals `NAS`, this parameter must be set. **Note:** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  final pulumi.Input<String>? targetCreateTime;
  /// The target data source ID.
  final pulumi.Input<String>? targetDataSourceId;
  /// The ID of destination File System. **NOTE:** Required while source_type equals `NAS`
  final pulumi.Input<String>? targetFileSystemId;
  /// The target ID of ECS instance. **NOTE:** Required while source_type equals `ECS_FILE`
  final pulumi.Input<String>? targetInstanceId;
  /// The name of the Table store instance to which you want to restore data.**WARNING:** Required while source_type equals `OTS_TABLE`.
  final pulumi.Input<String>? targetInstanceName;
  /// The target file path of (ECS) instance. **WARNING:** Required while source_type equals `NAS` or `ECS_FILE`, If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  final pulumi.Input<String>? targetPath;
  /// The target prefix of the OSS object. **WARNING:** Required while source_type equals `OSS`. If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  final pulumi.Input<String>? targetPrefix;
  /// The name of the table that stores the restored data. **WARNING:** Required while source_type equals `OTS_TABLE`.
  final pulumi.Input<String>? targetTableName;
  /// The time when data is restored to the Table store instance. This value is a UNIX timestamp. Unit: seconds. **WARNING:** Required while source_type equals `OTS_TABLE`. **Note:** The time when data is restored to the Tablestore instance. It should be 0 if restores data at the End time of the snapshot.
  final pulumi.Input<String>? targetTime;
  /// The full machine backup details.
  final pulumi.Input<String>? udmDetail;
  /// The ID of backup vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [RestoreJobState].
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account.
  /// [crossAccountType] The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account.
  /// [exclude] The exclude path. **NOTE:** Invalid while source_type equals `OSS` or `NAS`. It's a json string with format:`["/excludePath]`, up to 255 characters. **WARNING:** If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  /// [include] The include path. **NOTE:** Invalid while source_type equals `OSS` or `NAS`. It's a json string with format:`["/includePath"]`, Up to 255 characters. **WARNING:** The field is required while source_type equals `OTS_TABLE` which means source table name. If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  /// [options] Recovery options. **NOTE:** Required while source_type equals `OSS` or `NAS`, invalid while source_type equals `ECS_FILE`. It's a json string with format:`"{"includes":[],"excludes":[]}",`. Recovery options. When restores OTS_TABLE and real target time is the rangEnd time of the snapshot, it should be a string with format: `{"UI_TargetTime":1650032529018}`.
  /// [otsDetail] The details about the Tablestore instance. See the following `Block ots_detail`.
  /// [restoreJobId] Restore Job ID. It's the unique key of this resource, if you want to set this argument by yourself, you must specify a unique keyword that never appears.
  /// [restoreType] The type of recovery destination. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`,`UDM_ECS_ROLLBACK`. **Note**: Currently, there is a one-to-one correspondence between the data source type with the recovery destination type.
  /// [snapshotHash] The hashcode of Snapshot.
  /// [snapshotId] The ID of Snapshot.
  /// [sourceType] The type of data source. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`,`UDM_ECS`.
  /// [status] The Restore Job Status.
  /// [targetBucket] The target name of OSS bucket. **NOTE:** Required while source_type equals `OSS`,
  /// [targetClientId] The target client ID.
  /// [targetCreateTime] The creation time of destination File System. **NOTE:** While source_type equals `NAS`, this parameter must be set. **Note:** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  /// [targetDataSourceId] The target data source ID.
  /// [targetFileSystemId] The ID of destination File System. **NOTE:** Required while source_type equals `NAS`
  /// [targetInstanceId] The target ID of ECS instance. **NOTE:** Required while source_type equals `ECS_FILE`
  /// [targetInstanceName] The name of the Table store instance to which you want to restore data.**WARNING:** Required while source_type equals `OTS_TABLE`.
  /// [targetPath] The target file path of (ECS) instance. **WARNING:** Required while source_type equals `NAS` or `ECS_FILE`, If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  /// [targetPrefix] The target prefix of the OSS object. **WARNING:** Required while source_type equals `OSS`. If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  /// [targetTableName] The name of the table that stores the restored data. **WARNING:** Required while source_type equals `OTS_TABLE`.
  /// [targetTime] The time when data is restored to the Table store instance. This value is a UNIX timestamp. Unit: seconds. **WARNING:** Required while source_type equals `OTS_TABLE`. **Note:** The time when data is restored to the Tablestore instance. It should be 0 if restores data at the End time of the snapshot.
  /// [udmDetail] The full machine backup details.
  /// [vaultId] The ID of backup vault.
  const RestoreJobState({
    this.crossAccountRoleName,
    this.crossAccountType,
    this.crossAccountUserId,
    this.exclude,
    this.include,
    this.options,
    this.otsDetail,
    this.restoreJobId,
    this.restoreType,
    this.snapshotHash,
    this.snapshotId,
    this.sourceType,
    this.status,
    this.targetBucket,
    this.targetClientId,
    this.targetCreateTime,
    this.targetDataSourceId,
    this.targetFileSystemId,
    this.targetInstanceId,
    this.targetInstanceName,
    this.targetPath,
    this.targetPrefix,
    this.targetTableName,
    this.targetTime,
    this.udmDetail,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'exclude': ?exclude,
      'include': ?include,
      'options': ?options,
      'otsDetail': ?pulumi.Input.mapOptionalInputValue<RestoreJobOtsDetail, Map<String, dynamic>>(otsDetail, (value) => value.toMap()),
      'restoreJobId': ?restoreJobId,
      'restoreType': ?restoreType,
      'snapshotHash': ?snapshotHash,
      'snapshotId': ?snapshotId,
      'sourceType': ?sourceType,
      'status': ?status,
      'targetBucket': ?targetBucket,
      'targetClientId': ?targetClientId,
      'targetCreateTime': ?targetCreateTime,
      'targetDataSourceId': ?targetDataSourceId,
      'targetFileSystemId': ?targetFileSystemId,
      'targetInstanceId': ?targetInstanceId,
      'targetInstanceName': ?targetInstanceName,
      'targetPath': ?targetPath,
      'targetPrefix': ?targetPrefix,
      'targetTableName': ?targetTableName,
      'targetTime': ?targetTime,
      'udmDetail': ?udmDetail,
      'vaultId': ?vaultId,
    };
  }

  factory RestoreJobState.fromMap(Map<String, dynamic> map) {
    return RestoreJobState(
      crossAccountRoleName: (() { final guardedValue = map['crossAccountRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossAccountType: (() { final guardedValue = map['crossAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossAccountUserId: (() { final guardedValue = map['crossAccountUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      otsDetail: (() { final guardedValue = map['otsDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreJobOtsDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restoreJobId: (() { final guardedValue = map['restoreJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreType: (() { final guardedValue = map['restoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotHash: (() { final guardedValue = map['snapshotHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetBucket: (() { final guardedValue = map['targetBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetClientId: (() { final guardedValue = map['targetClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetCreateTime: (() { final guardedValue = map['targetCreateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDataSourceId: (() { final guardedValue = map['targetDataSourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetFileSystemId: (() { final guardedValue = map['targetFileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetInstanceId: (() { final guardedValue = map['targetInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetInstanceName: (() { final guardedValue = map['targetInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPath: (() { final guardedValue = map['targetPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPrefix: (() { final guardedValue = map['targetPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetTableName: (() { final guardedValue = map['targetTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetTime: (() { final guardedValue = map['targetTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      udmDetail: (() { final guardedValue = map['udmDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

