// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_export_response.dart';

/// Definition of StorageClassAnalysis
class StorageClassAnalysisResponse {
  /// Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported. Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported.
  final pulumi.Input<DataExportResponse>? dataExport;

  /// Creates a new [StorageClassAnalysisResponse].
  /// [dataExport] Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported. Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported.
  StorageClassAnalysisResponse({
    this.dataExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExport': ?pulumi.Input.mapOptionalInputValue<DataExportResponse, Map<String, dynamic>>(dataExport, (value) => value.toMap()),
    };
  }

  factory StorageClassAnalysisResponse.fromMap(Map<String, dynamic> map) {
    return StorageClassAnalysisResponse(
      dataExport: map['dataExport'] == null ? null : (DataExportResponse.fromMap((map['dataExport']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

