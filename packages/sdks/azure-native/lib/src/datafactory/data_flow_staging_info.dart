// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference.dart';

/// Staging info for execute data flow activity.
class DataFlowStagingInfo {
  /// Folder path for staging blob. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Staging linked service reference.
  final LinkedServiceReference? linkedService;

  /// Creates a new [DataFlowStagingInfo].
  /// [folderPath] Folder path for staging blob. Type: string (or Expression with resultType string)
  /// [linkedService] Staging linked service reference.
  DataFlowStagingInfo({
    this.folderPath,
    this.linkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderPath': ?folderPath,
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
    };
  }

  factory DataFlowStagingInfo.fromMap(Map<String, dynamic> map) {
    return DataFlowStagingInfo(
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      linkedService: map['linkedService'] == null ? null : LinkedServiceReference.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

