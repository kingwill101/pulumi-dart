// ignore_for_file: unused_element, unnecessary_cast

import 'data_export.dart';

/// Definition of StorageClassAnalysis
class StorageClassAnalysis {
  /// Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported. Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported.
  final DataExport? dataExport;

  /// Creates a new [StorageClassAnalysis].
  /// [dataExport] Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported. Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported.
  StorageClassAnalysis({
    this.dataExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExport': ?dataExport == null ? null : dataExport!.toMap(),
    };
  }

  factory StorageClassAnalysis.fromMap(Map<String, dynamic> map) {
    return StorageClassAnalysis(
      dataExport: map['dataExport'] == null ? null : DataExport.fromMap((map['dataExport'] as Map).cast<String, dynamic>()),
    );
  }
}

