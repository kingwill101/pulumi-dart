// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';

/// Staging info for execute data flow activity.
class DataFlowStagingInfoResponse {
  /// Folder path for staging blob. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Staging linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedService;

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
      'linkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
    };
  }

  factory DataFlowStagingInfoResponse.fromMap(Map<String, dynamic> map) {
    return DataFlowStagingInfoResponse(
      folderPath: map['folderPath'] == null ? null : (map['folderPath']!).input(),
      linkedService: map['linkedService'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedService']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

