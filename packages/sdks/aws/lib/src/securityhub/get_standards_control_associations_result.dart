// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_standards_control_associations_standards_control_association.dart';

/// Result data returned by getStandardsControlAssociations.
class GetStandardsControlAssociationsResult {
  final String id;
  final String region;
  /// ID of the security control.
  final String securityControlId;
  /// A list that provides the status and other details for each security control that applies to each enabled standard.
  /// See `standards_control_associations` below.
  final List<GetStandardsControlAssociationsStandardsControlAssociation> standardsControlAssociations;

  /// Creates a new [GetStandardsControlAssociationsResult].
  /// [id] Required.
  /// [region] Required.
  /// [securityControlId] ID of the security control.
  /// [standardsControlAssociations] A list that provides the status and other details for each security control that applies to each enabled standard.
  GetStandardsControlAssociationsResult({
    required this.id,
    required this.region,
    required this.securityControlId,
    required this.standardsControlAssociations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'securityControlId': securityControlId,
      'standardsControlAssociations': pulumi.Input.encodeList<GetStandardsControlAssociationsStandardsControlAssociation, Map<String, dynamic>>(standardsControlAssociations, (value) => value.toMap()),
    };
  }

  factory GetStandardsControlAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetStandardsControlAssociationsResult(
      id: map['id'] as String,
      region: map['region'] as String,
      securityControlId: map['securityControlId'] as String,
      standardsControlAssociations: pulumi.Input.decodeList<GetStandardsControlAssociationsStandardsControlAssociation>(map['standardsControlAssociations']!, (value) => GetStandardsControlAssociationsStandardsControlAssociation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

