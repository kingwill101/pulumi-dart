// ignore_for_file: unused_element, unnecessary_cast


/// Details to transfer all data.
class TransferAllDetails {
  /// Type of the account of data
  final String dataAccountType;
  /// To indicate if all Azure blobs have to be transferred
  final bool? transferAllBlobs;
  /// To indicate if all Azure Files have to be transferred
  final bool? transferAllFiles;

  /// Creates a new [TransferAllDetails].
  /// [dataAccountType] Type of the account of data
  /// [transferAllBlobs] To indicate if all Azure blobs have to be transferred
  /// [transferAllFiles] To indicate if all Azure Files have to be transferred
  TransferAllDetails({
    required this.dataAccountType,
    this.transferAllBlobs,
    this.transferAllFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccountType': dataAccountType,
      'transferAllBlobs': ?transferAllBlobs,
      'transferAllFiles': ?transferAllFiles,
    };
  }

  factory TransferAllDetails.fromMap(Map<String, dynamic> map) {
    return TransferAllDetails(
      dataAccountType: map['dataAccountType'] as String,
      transferAllBlobs: map['transferAllBlobs'] == null ? null : map['transferAllBlobs'] as bool,
      transferAllFiles: map['transferAllFiles'] == null ? null : map['transferAllFiles'] as bool,
    );
  }
}

