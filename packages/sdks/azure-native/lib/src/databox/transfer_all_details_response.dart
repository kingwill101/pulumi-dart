// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details to transfer all data.
class TransferAllDetailsResponse {
  /// Type of the account of data
  final pulumi.Input<String> dataAccountType;
  /// To indicate if all Azure blobs have to be transferred
  final pulumi.Input<bool>? transferAllBlobs;
  /// To indicate if all Azure Files have to be transferred
  final pulumi.Input<bool>? transferAllFiles;

  /// Creates a new [TransferAllDetailsResponse].
  /// [dataAccountType] Type of the account of data
  /// [transferAllBlobs] To indicate if all Azure blobs have to be transferred
  /// [transferAllFiles] To indicate if all Azure Files have to be transferred
  TransferAllDetailsResponse({
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

  factory TransferAllDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TransferAllDetailsResponse(
      dataAccountType: (map['dataAccountType'] as String).input(),
      transferAllBlobs: map['transferAllBlobs'] == null ? null : (map['transferAllBlobs'] as bool).input(),
      transferAllFiles: map['transferAllFiles'] == null ? null : (map['transferAllFiles'] as bool).input(),
    );
  }
}

