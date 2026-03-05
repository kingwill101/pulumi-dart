// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_export.dart';

/// Definition of StorageClassAnalysis
class StorageClassAnalysis {
  /// Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported. Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported.
  final pulumi.Input<DataExport>? dataExport;

  /// Creates a new [StorageClassAnalysis].
  /// [dataExport] Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported. Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported.
  StorageClassAnalysis({
    this.dataExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExport': ?pulumi.Input.mapOptionalInputValue<DataExport, Map<String, dynamic>>(dataExport, (value) => value.toMap()),
    };
  }

  factory StorageClassAnalysis.fromMap(Map<String, dynamic> map) {
    return StorageClassAnalysis(
      dataExport: (() { final guardedValue = map['dataExport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataExport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

