// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details to transfer all data.
class TransferAllDetails {
  /// Type of the account of data
  final pulumi.Input<String> dataAccountType;
  /// To indicate if all Azure blobs have to be transferred
  final pulumi.Input<bool>? transferAllBlobs;
  /// To indicate if all Azure Files have to be transferred
  final pulumi.Input<bool>? transferAllFiles;

  /// Creates a new [TransferAllDetails].
  /// [dataAccountType] Type of the account of data
  /// [transferAllBlobs] To indicate if all Azure blobs have to be transferred
  /// [transferAllFiles] To indicate if all Azure Files have to be transferred
  const TransferAllDetails({
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
      dataAccountType: pulumi.Input.fromValue(map['dataAccountType'] as String),
      transferAllBlobs: (() { final guardedValue = map['transferAllBlobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transferAllFiles: (() { final guardedValue = map['transferAllFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
