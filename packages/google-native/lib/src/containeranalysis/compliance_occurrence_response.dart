// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_compliant_file_response.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrenceResponse {
  final String nonComplianceReason;
  final List<NonCompliantFileResponse> nonCompliantFiles;

  /// Creates a new [ComplianceOccurrenceResponse].
  /// [nonComplianceReason] Required.
  /// [nonCompliantFiles] Required.
  ComplianceOccurrenceResponse({
    required this.nonComplianceReason,
    required this.nonCompliantFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonComplianceReason': nonComplianceReason,
      'nonCompliantFiles':
          pulumi.Input.encodeList<
            NonCompliantFileResponse,
            Map<String, dynamic>
          >(nonCompliantFiles, (value) => value.toMap()),
    };
  }

  factory ComplianceOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceOccurrenceResponse(
      nonComplianceReason: map['nonComplianceReason'] as String,
      nonCompliantFiles: pulumi.Input.decodeList<NonCompliantFileResponse>(
        map['nonCompliantFiles'],
        (value) => NonCompliantFileResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
