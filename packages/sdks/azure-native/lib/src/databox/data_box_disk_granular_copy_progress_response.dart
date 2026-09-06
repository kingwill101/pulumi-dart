// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';

/// DataBox Disk Granular Copy Progress
class DataBoxDiskGranularCopyProgressResponse {
  /// Id of the account where the data needs to be uploaded.
  final pulumi.Input<String> accountId;
  /// Available actions on the job.
  final pulumi.Input<List<String>> actions;
  /// To indicate bytes transferred.
  final pulumi.Input<double> bytesProcessed;
  /// The Status of the copy
  final pulumi.Input<String> copyStatus;
  /// Data Account Type.
  final pulumi.Input<String> dataAccountType;
  /// To indicate directories errored out in the job.
  final pulumi.Input<double> directoriesErroredOut;
  /// Error, if any, in the stage
  final pulumi.Input<CloudErrorResponse> error;
  /// Number of files which could not be copied
  final pulumi.Input<double> filesErroredOut;
  /// Number of files processed
  final pulumi.Input<double> filesProcessed;
  /// To indicate directories renamed
  final pulumi.Input<double> invalidDirectoriesProcessed;
  /// Total amount of data not adhering to azure naming conventions which were processed by automatic renaming
  final pulumi.Input<double> invalidFileBytesUploaded;
  /// Number of files not adhering to azure naming conventions which were processed by automatic renaming
  final pulumi.Input<double> invalidFilesProcessed;
  /// To indicate if enumeration of data is in progress.
  /// Until this is true, the TotalBytesToProcess may not be valid.
  final pulumi.Input<bool> isEnumerationInProgress;
  /// Number of folders not adhering to azure naming conventions which were processed by automatic renaming
  final pulumi.Input<double> renamedContainerCount;
  /// Disk Serial Number.
  final pulumi.Input<String> serialNumber;
  /// Name of the storage account. This will be empty for data account types other than storage account.
  final pulumi.Input<String> storageAccountName;
  /// Total amount of data to be processed by the job.
  final pulumi.Input<double> totalBytesToProcess;
  /// Total files to process
  final pulumi.Input<double> totalFilesToProcess;
  /// Transfer type of data
  final pulumi.Input<String> transferType;

  /// Creates a new [DataBoxDiskGranularCopyProgressResponse].
  /// [accountId] Id of the account where the data needs to be uploaded.
  /// [actions] Available actions on the job.
  /// [bytesProcessed] To indicate bytes transferred.
  /// [copyStatus] The Status of the copy
  /// [dataAccountType] Data Account Type.
  /// [directoriesErroredOut] To indicate directories errored out in the job.
  /// [error] Error, if any, in the stage
  /// [filesErroredOut] Number of files which could not be copied
  /// [filesProcessed] Number of files processed
  /// [invalidDirectoriesProcessed] To indicate directories renamed
  /// [invalidFileBytesUploaded] Total amount of data not adhering to azure naming conventions which were processed by automatic renaming
  /// [invalidFilesProcessed] Number of files not adhering to azure naming conventions which were processed by automatic renaming
  /// [isEnumerationInProgress] To indicate if enumeration of data is in progress.
  /// [renamedContainerCount] Number of folders not adhering to azure naming conventions which were processed by automatic renaming
  /// [serialNumber] Disk Serial Number.
  /// [storageAccountName] Name of the storage account. This will be empty for data account types other than storage account.
  /// [totalBytesToProcess] Total amount of data to be processed by the job.
  /// [totalFilesToProcess] Total files to process
  /// [transferType] Transfer type of data
  const DataBoxDiskGranularCopyProgressResponse({
    required this.accountId,
    required this.actions,
    required this.bytesProcessed,
    required this.copyStatus,
    required this.dataAccountType,
    required this.directoriesErroredOut,
    required this.error,
    required this.filesErroredOut,
    required this.filesProcessed,
    required this.invalidDirectoriesProcessed,
    required this.invalidFileBytesUploaded,
    required this.invalidFilesProcessed,
    required this.isEnumerationInProgress,
    required this.renamedContainerCount,
    required this.serialNumber,
    required this.storageAccountName,
    required this.totalBytesToProcess,
    required this.totalFilesToProcess,
    required this.transferType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'actions': actions,
      'bytesProcessed': bytesProcessed,
      'copyStatus': copyStatus,
      'dataAccountType': dataAccountType,
      'directoriesErroredOut': directoriesErroredOut,
      'error': pulumi.Input.mapInputValue<CloudErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'filesErroredOut': filesErroredOut,
      'filesProcessed': filesProcessed,
      'invalidDirectoriesProcessed': invalidDirectoriesProcessed,
      'invalidFileBytesUploaded': invalidFileBytesUploaded,
      'invalidFilesProcessed': invalidFilesProcessed,
      'isEnumerationInProgress': isEnumerationInProgress,
      'renamedContainerCount': renamedContainerCount,
      'serialNumber': serialNumber,
      'storageAccountName': storageAccountName,
      'totalBytesToProcess': totalBytesToProcess,
      'totalFilesToProcess': totalFilesToProcess,
      'transferType': transferType,
    };
  }

  factory DataBoxDiskGranularCopyProgressResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskGranularCopyProgressResponse(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      bytesProcessed: pulumi.Input.fromValue((map['bytesProcessed'] as num).toDouble()),
      copyStatus: pulumi.Input.fromValue(map['copyStatus'] as String),
      dataAccountType: pulumi.Input.fromValue(map['dataAccountType'] as String),
      directoriesErroredOut: pulumi.Input.fromValue((map['directoriesErroredOut'] as num).toDouble()),
      error: pulumi.Input.fromValue(CloudErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      filesErroredOut: pulumi.Input.fromValue((map['filesErroredOut'] as num).toDouble()),
      filesProcessed: pulumi.Input.fromValue((map['filesProcessed'] as num).toDouble()),
      invalidDirectoriesProcessed: pulumi.Input.fromValue((map['invalidDirectoriesProcessed'] as num).toDouble()),
      invalidFileBytesUploaded: pulumi.Input.fromValue((map['invalidFileBytesUploaded'] as num).toDouble()),
      invalidFilesProcessed: pulumi.Input.fromValue((map['invalidFilesProcessed'] as num).toDouble()),
      isEnumerationInProgress: pulumi.Input.fromValue(map['isEnumerationInProgress'] as bool),
      renamedContainerCount: pulumi.Input.fromValue((map['renamedContainerCount'] as num).toDouble()),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      totalBytesToProcess: pulumi.Input.fromValue((map['totalBytesToProcess'] as num).toDouble()),
      totalFilesToProcess: pulumi.Input.fromValue((map['totalFilesToProcess'] as num).toDouble()),
      transferType: pulumi.Input.fromValue(map['transferType'] as String),
    );
  }
}
