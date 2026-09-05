// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_standards_control_associations_standards_control_association.dart';

/// Result data returned by getStandardsControlAssociations.
class GetStandardsControlAssociationsResult {
  final String? id;
  final String? region;
  /// ID of the security control.
  final String? securityControlId;
  /// A list that provides the status and other details for each security control that applies to each enabled standard.
  /// See `standardsControlAssociations` below.
  final List<GetStandardsControlAssociationsStandardsControlAssociation>? standardsControlAssociations;

  /// Creates a new [GetStandardsControlAssociationsResult].
  /// [id] Optional.
  /// [region] Optional.
  /// [securityControlId] ID of the security control.
  /// [standardsControlAssociations] A list that provides the status and other details for each security control that applies to each enabled standard.
  const GetStandardsControlAssociationsResult({
    this.id,
    this.region,
    this.securityControlId,
    this.standardsControlAssociations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'securityControlId': ?securityControlId,
      'standardsControlAssociations': ?(() { final guardedValue = standardsControlAssociations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStandardsControlAssociationsStandardsControlAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetStandardsControlAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetStandardsControlAssociationsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityControlId: (() { final guardedValue = map['securityControlId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standardsControlAssociations: (() { final guardedValue = map['standardsControlAssociations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStandardsControlAssociationsStandardsControlAssociation>(guardedValue, (value) => GetStandardsControlAssociationsStandardsControlAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
