// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_compliant_file.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrence {
  final String? nonComplianceReason;
  final List<NonCompliantFile>? nonCompliantFiles;

  /// Creates a new [ComplianceOccurrence].
  /// [nonComplianceReason] Optional.
  /// [nonCompliantFiles] Optional.
  ComplianceOccurrence({this.nonComplianceReason, this.nonCompliantFiles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonComplianceReason': ?nonComplianceReason,
      'nonCompliantFiles': ?nonCompliantFiles == null
          ? null
          : pulumi.Input.encodeList<NonCompliantFile, Map<String, dynamic>>(
              nonCompliantFiles!,
              (value) => value.toMap(),
            ),
    };
  }

  factory ComplianceOccurrence.fromMap(Map<String, dynamic> map) {
    return ComplianceOccurrence(
      nonComplianceReason: map['nonComplianceReason'] == null
          ? null
          : map['nonComplianceReason'] as String,
      nonCompliantFiles: map['nonCompliantFiles'] == null
          ? null
          : pulumi.Input.decodeList<NonCompliantFile>(
              map['nonCompliantFiles'],
              (value) => NonCompliantFile.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
