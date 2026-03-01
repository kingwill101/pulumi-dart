// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference_response.dart';

/// Staging info for execute data flow activity.
class DataFlowStagingInfoResponse {
  /// Folder path for staging blob. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Staging linked service reference.
  final LinkedServiceReferenceResponse? linkedService;

  /// Creates a new [DataFlowStagingInfoResponse].
  /// [folderPath] Folder path for staging blob. Type: string (or Expression with resultType string)
  /// [linkedService] Staging linked service reference.
  DataFlowStagingInfoResponse({
    this.folderPath,
    this.linkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderPath': ?folderPath,
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
    };
  }

  factory DataFlowStagingInfoResponse.fromMap(Map<String, dynamic> map) {
    return DataFlowStagingInfoResponse(
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      linkedService: map['linkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

