// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_error_response.dart';

/// DataBox CustomerDisk Copy Progress
class DataBoxCustomerDiskCopyProgressResponse {
  /// Id of the account where the data needs to be uploaded.
  final String accountId;
  /// Available actions on the job.
  final List<String> actions;
  /// To indicate bytes transferred.
  final double bytesProcessed;
  /// The Status of the copy
  final String copyStatus;
  /// Data Account Type.
  final String dataAccountType;
  /// To indicate directories errored out in the job.
  final double directoriesErroredOut;
  /// Error, if any, in the stage
  final CloudErrorResponse error;
  /// Number of files which could not be copied
  final double filesErroredOut;
  /// Number of files processed
  final double filesProcessed;
  /// To indicate directories renamed
  final double invalidDirectoriesProcessed;
  /// Total amount of data not adhering to azure naming conventions which were processed by automatic renaming
  final double invalidFileBytesUploaded;
  /// Number of files not adhering to azure naming conventions which were processed by automatic renaming
  final double invalidFilesProcessed;
  /// To indicate if enumeration of data is in progress.
  /// Until this is true, the TotalBytesToProcess may not be valid.
  final bool isEnumerationInProgress;
  /// Number of folders not adhering to azure naming conventions which were processed by automatic renaming
  final double renamedContainerCount;
  /// Disk Serial Number.
  final String serialNumber;
  /// Name of the storage account. This will be empty for data account types other than storage account.
  final String storageAccountName;
  /// Total amount of data to be processed by the job.
  final double totalBytesToProcess;
  /// Total files to process
  final double totalFilesToProcess;
  /// Transfer type of data
  final String transferType;

  /// Creates a new [DataBoxCustomerDiskCopyProgressResponse].
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
  DataBoxCustomerDiskCopyProgressResponse({
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
      'error': error.toMap(),
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

  factory DataBoxCustomerDiskCopyProgressResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxCustomerDiskCopyProgressResponse(
      accountId: map['accountId'] as String,
      actions: (map['actions'] as List).cast<String>(),
      bytesProcessed: map['bytesProcessed'] as double,
      copyStatus: map['copyStatus'] as String,
      dataAccountType: map['dataAccountType'] as String,
      directoriesErroredOut: map['directoriesErroredOut'] as double,
      error: CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      filesErroredOut: map['filesErroredOut'] as double,
      filesProcessed: map['filesProcessed'] as double,
      invalidDirectoriesProcessed: map['invalidDirectoriesProcessed'] as double,
      invalidFileBytesUploaded: map['invalidFileBytesUploaded'] as double,
      invalidFilesProcessed: map['invalidFilesProcessed'] as double,
      isEnumerationInProgress: map['isEnumerationInProgress'] as bool,
      renamedContainerCount: map['renamedContainerCount'] as double,
      serialNumber: map['serialNumber'] as String,
      storageAccountName: map['storageAccountName'] as String,
      totalBytesToProcess: map['totalBytesToProcess'] as double,
      totalFilesToProcess: map['totalFilesToProcess'] as double,
      transferType: map['transferType'] as String,
    );
  }
}

