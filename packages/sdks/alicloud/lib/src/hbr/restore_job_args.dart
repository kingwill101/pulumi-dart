// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_job_ots_detail.dart';

/// {@template pulumi_hbr_restore_job_restore_job_args_doc}
/// The set of arguments for RestoreJob.
/// {@endtemplate}
/// {@macro pulumi_hbr_restore_job_restore_job_args_doc}
class RestoreJobArgs {
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
  final pulumi.Input<String> restoreType;
  /// The hashcode of Snapshot.
  final pulumi.Input<String> snapshotHash;
  /// The ID of Snapshot.
  final pulumi.Input<String> snapshotId;
  /// The type of data source. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`,`UDM_ECS`.
  final pulumi.Input<String> sourceType;
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
  final pulumi.Input<String> vaultId;

  /// Creates a new [RestoreJobArgs].
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
  RestoreJobArgs({
    pulumi.Output<String>? crossAccountRoleName,
    pulumi.Output<String>? crossAccountType,
    pulumi.Output<int>? crossAccountUserId,
    pulumi.Output<String>? exclude,
    pulumi.Output<String>? include,
    pulumi.Output<String>? options,
    pulumi.Output<RestoreJobOtsDetail>? otsDetail,
    pulumi.Output<String>? restoreJobId,
    required pulumi.Output<String> restoreType,
    required pulumi.Output<String> snapshotHash,
    required pulumi.Output<String> snapshotId,
    required pulumi.Output<String> sourceType,
    pulumi.Output<String>? targetBucket,
    pulumi.Output<String>? targetClientId,
    pulumi.Output<String>? targetCreateTime,
    pulumi.Output<String>? targetDataSourceId,
    pulumi.Output<String>? targetFileSystemId,
    pulumi.Output<String>? targetInstanceId,
    pulumi.Output<String>? targetInstanceName,
    pulumi.Output<String>? targetPath,
    pulumi.Output<String>? targetPrefix,
    pulumi.Output<String>? targetTableName,
    pulumi.Output<String>? targetTime,
    pulumi.Output<String>? udmDetail,
    required pulumi.Output<String> vaultId,
  }) :
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountType = pulumi.Input.asOptionalInput<String>(crossAccountType),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId),
      exclude = pulumi.Input.asOptionalInput<String>(exclude),
      include = pulumi.Input.asOptionalInput<String>(include),
      options = pulumi.Input.asOptionalInput<String>(options),
      otsDetail = pulumi.Input.asOptionalInput<RestoreJobOtsDetail>(otsDetail),
      restoreJobId = pulumi.Input.asOptionalInput<String>(restoreJobId),
      restoreType = pulumi.Input.asInput<String>(restoreType),
      snapshotHash = pulumi.Input.asInput<String>(snapshotHash),
      snapshotId = pulumi.Input.asInput<String>(snapshotId),
      sourceType = pulumi.Input.asInput<String>(sourceType),
      targetBucket = pulumi.Input.asOptionalInput<String>(targetBucket),
      targetClientId = pulumi.Input.asOptionalInput<String>(targetClientId),
      targetCreateTime = pulumi.Input.asOptionalInput<String>(targetCreateTime),
      targetDataSourceId = pulumi.Input.asOptionalInput<String>(targetDataSourceId),
      targetFileSystemId = pulumi.Input.asOptionalInput<String>(targetFileSystemId),
      targetInstanceId = pulumi.Input.asOptionalInput<String>(targetInstanceId),
      targetInstanceName = pulumi.Input.asOptionalInput<String>(targetInstanceName),
      targetPath = pulumi.Input.asOptionalInput<String>(targetPath),
      targetPrefix = pulumi.Input.asOptionalInput<String>(targetPrefix),
      targetTableName = pulumi.Input.asOptionalInput<String>(targetTableName),
      targetTime = pulumi.Input.asOptionalInput<String>(targetTime),
      udmDetail = pulumi.Input.asOptionalInput<String>(udmDetail),
      vaultId = pulumi.Input.asInput<String>(vaultId);

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
      'restoreType': restoreType,
      'snapshotHash': snapshotHash,
      'snapshotId': snapshotId,
      'sourceType': sourceType,
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
      'vaultId': vaultId,
    };
  }

  factory RestoreJobArgs.fromMap(Map<String, dynamic> map) {
    return RestoreJobArgs(
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : pulumi.Output.create<String>(map['crossAccountRoleName'] as String),
      crossAccountType: map['crossAccountType'] == null ? null : pulumi.Output.create<String>(map['crossAccountType'] as String),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : pulumi.Output.create<int>(map['crossAccountUserId'] as int),
      exclude: map['exclude'] == null ? null : pulumi.Output.create<String>(map['exclude'] as String),
      include: map['include'] == null ? null : pulumi.Output.create<String>(map['include'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<String>(map['options'] as String),
      otsDetail: map['otsDetail'] == null ? null : pulumi.Output.create<RestoreJobOtsDetail>(RestoreJobOtsDetail.fromMap((map['otsDetail'] as Map).cast<String, dynamic>())),
      restoreJobId: map['restoreJobId'] == null ? null : pulumi.Output.create<String>(map['restoreJobId'] as String),
      restoreType: pulumi.Output.create<String>(map['restoreType'] as String),
      snapshotHash: pulumi.Output.create<String>(map['snapshotHash'] as String),
      snapshotId: pulumi.Output.create<String>(map['snapshotId'] as String),
      sourceType: pulumi.Output.create<String>(map['sourceType'] as String),
      targetBucket: map['targetBucket'] == null ? null : pulumi.Output.create<String>(map['targetBucket'] as String),
      targetClientId: map['targetClientId'] == null ? null : pulumi.Output.create<String>(map['targetClientId'] as String),
      targetCreateTime: map['targetCreateTime'] == null ? null : pulumi.Output.create<String>(map['targetCreateTime'] as String),
      targetDataSourceId: map['targetDataSourceId'] == null ? null : pulumi.Output.create<String>(map['targetDataSourceId'] as String),
      targetFileSystemId: map['targetFileSystemId'] == null ? null : pulumi.Output.create<String>(map['targetFileSystemId'] as String),
      targetInstanceId: map['targetInstanceId'] == null ? null : pulumi.Output.create<String>(map['targetInstanceId'] as String),
      targetInstanceName: map['targetInstanceName'] == null ? null : pulumi.Output.create<String>(map['targetInstanceName'] as String),
      targetPath: map['targetPath'] == null ? null : pulumi.Output.create<String>(map['targetPath'] as String),
      targetPrefix: map['targetPrefix'] == null ? null : pulumi.Output.create<String>(map['targetPrefix'] as String),
      targetTableName: map['targetTableName'] == null ? null : pulumi.Output.create<String>(map['targetTableName'] as String),
      targetTime: map['targetTime'] == null ? null : pulumi.Output.create<String>(map['targetTime'] as String),
      udmDetail: map['udmDetail'] == null ? null : pulumi.Output.create<String>(map['udmDetail'] as String),
      vaultId: pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

