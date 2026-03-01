// ignore_for_file: unused_element, unnecessary_cast


/// InMage protected disk details.
class InMageProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final double? diskCapacityInBytes;
  /// The disk id.
  final String? diskId;
  /// The disk name.
  final String? diskName;
  /// A value indicating whether disk is resized.
  final String? diskResized;
  /// The file system capacity in bytes.
  final double? fileSystemCapacityInBytes;
  /// The health error code for the disk.
  final String? healthErrorCode;
  /// The last RPO calculated time.
  final String? lastRpoCalculatedTime;
  /// The Progress Health.
  final String? progressHealth;
  /// The Progress Status.
  final String? progressStatus;
  /// The protection stage.
  final String? protectionStage;
  /// The PS data transit in MB.
  final double? psDataInMB;
  /// The resync duration in seconds.
  final double? resyncDurationInSeconds;
  /// The resync last 15 minutes transferred bytes.
  final double? resyncLast15MinutesTransferredBytes;
  /// The last data transfer time in UTC.
  final String? resyncLastDataTransferTimeUTC;
  /// The resync processed bytes.
  final double? resyncProcessedBytes;
  /// The resync progress percentage.
  final int? resyncProgressPercentage;
  /// A value indicating whether resync is required for this disk.
  final String? resyncRequired;
  /// The resync start time.
  final String? resyncStartTime;
  /// The resync total transferred bytes.
  final double? resyncTotalTransferredBytes;
  /// The RPO in seconds.
  final double? rpoInSeconds;
  /// The source data transit in MB.
  final double? sourceDataInMB;
  /// The target data transit in MB.
  final double? targetDataInMB;

  /// Creates a new [InMageProtectedDiskDetailsResponse].
  /// [diskCapacityInBytes] The disk capacity in bytes.
  /// [diskId] The disk id.
  /// [diskName] The disk name.
  /// [diskResized] A value indicating whether disk is resized.
  /// [fileSystemCapacityInBytes] The file system capacity in bytes.
  /// [healthErrorCode] The health error code for the disk.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [progressHealth] The Progress Health.
  /// [progressStatus] The Progress Status.
  /// [protectionStage] The protection stage.
  /// [psDataInMB] The PS data transit in MB.
  /// [resyncDurationInSeconds] The resync duration in seconds.
  /// [resyncLast15MinutesTransferredBytes] The resync last 15 minutes transferred bytes.
  /// [resyncLastDataTransferTimeUTC] The last data transfer time in UTC.
  /// [resyncProcessedBytes] The resync processed bytes.
  /// [resyncProgressPercentage] The resync progress percentage.
  /// [resyncRequired] A value indicating whether resync is required for this disk.
  /// [resyncStartTime] The resync start time.
  /// [resyncTotalTransferredBytes] The resync total transferred bytes.
  /// [rpoInSeconds] The RPO in seconds.
  /// [sourceDataInMB] The source data transit in MB.
  /// [targetDataInMB] The target data transit in MB.
  InMageProtectedDiskDetailsResponse({
    this.diskCapacityInBytes,
    this.diskId,
    this.diskName,
    this.diskResized,
    this.fileSystemCapacityInBytes,
    this.healthErrorCode,
    this.lastRpoCalculatedTime,
    this.progressHealth,
    this.progressStatus,
    this.protectionStage,
    this.psDataInMB,
    this.resyncDurationInSeconds,
    this.resyncLast15MinutesTransferredBytes,
    this.resyncLastDataTransferTimeUTC,
    this.resyncProcessedBytes,
    this.resyncProgressPercentage,
    this.resyncRequired,
    this.resyncStartTime,
    this.resyncTotalTransferredBytes,
    this.rpoInSeconds,
    this.sourceDataInMB,
    this.targetDataInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCapacityInBytes': ?diskCapacityInBytes,
      'diskId': ?diskId,
      'diskName': ?diskName,
      'diskResized': ?diskResized,
      'fileSystemCapacityInBytes': ?fileSystemCapacityInBytes,
      'healthErrorCode': ?healthErrorCode,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'progressHealth': ?progressHealth,
      'progressStatus': ?progressStatus,
      'protectionStage': ?protectionStage,
      'psDataInMB': ?psDataInMB,
      'resyncDurationInSeconds': ?resyncDurationInSeconds,
      'resyncLast15MinutesTransferredBytes': ?resyncLast15MinutesTransferredBytes,
      'resyncLastDataTransferTimeUTC': ?resyncLastDataTransferTimeUTC,
      'resyncProcessedBytes': ?resyncProcessedBytes,
      'resyncProgressPercentage': ?resyncProgressPercentage,
      'resyncRequired': ?resyncRequired,
      'resyncStartTime': ?resyncStartTime,
      'resyncTotalTransferredBytes': ?resyncTotalTransferredBytes,
      'rpoInSeconds': ?rpoInSeconds,
      'sourceDataInMB': ?sourceDataInMB,
      'targetDataInMB': ?targetDataInMB,
    };
  }

  factory InMageProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageProtectedDiskDetailsResponse(
      diskCapacityInBytes: map['diskCapacityInBytes'] == null ? null : map['diskCapacityInBytes'] as double,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskResized: map['diskResized'] == null ? null : map['diskResized'] as String,
      fileSystemCapacityInBytes: map['fileSystemCapacityInBytes'] == null ? null : map['fileSystemCapacityInBytes'] as double,
      healthErrorCode: map['healthErrorCode'] == null ? null : map['healthErrorCode'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      progressHealth: map['progressHealth'] == null ? null : map['progressHealth'] as String,
      progressStatus: map['progressStatus'] == null ? null : map['progressStatus'] as String,
      protectionStage: map['protectionStage'] == null ? null : map['protectionStage'] as String,
      psDataInMB: map['psDataInMB'] == null ? null : map['psDataInMB'] as double,
      resyncDurationInSeconds: map['resyncDurationInSeconds'] == null ? null : map['resyncDurationInSeconds'] as double,
      resyncLast15MinutesTransferredBytes: map['resyncLast15MinutesTransferredBytes'] == null ? null : map['resyncLast15MinutesTransferredBytes'] as double,
      resyncLastDataTransferTimeUTC: map['resyncLastDataTransferTimeUTC'] == null ? null : map['resyncLastDataTransferTimeUTC'] as String,
      resyncProcessedBytes: map['resyncProcessedBytes'] == null ? null : map['resyncProcessedBytes'] as double,
      resyncProgressPercentage: map['resyncProgressPercentage'] == null ? null : map['resyncProgressPercentage'] as int,
      resyncRequired: map['resyncRequired'] == null ? null : map['resyncRequired'] as String,
      resyncStartTime: map['resyncStartTime'] == null ? null : map['resyncStartTime'] as String,
      resyncTotalTransferredBytes: map['resyncTotalTransferredBytes'] == null ? null : map['resyncTotalTransferredBytes'] as double,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
      sourceDataInMB: map['sourceDataInMB'] == null ? null : map['sourceDataInMB'] as double,
      targetDataInMB: map['targetDataInMB'] == null ? null : map['targetDataInMB'] as double,
    );
  }
}

