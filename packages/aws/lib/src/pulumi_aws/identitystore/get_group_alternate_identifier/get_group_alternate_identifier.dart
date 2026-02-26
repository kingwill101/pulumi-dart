// ignore_for_file: unused_element, unnecessary_cast

import '../get_group_alternate_identifier_external_id/get_group_alternate_identifier_external_id.dart';
import '../get_group_alternate_identifier_unique_attribute/get_group_alternate_identifier_unique_attribute.dart';

class GetGroupAlternateIdentifier {
  /// Configuration block for filtering by the identifier issued by an external identity provider. Detailed below.
  final GetGroupAlternateIdentifierExternalId? externalId;

  /// An entity attribute that's unique to a specific entity. Detailed below.
  ///
  /// > Exactly one of the above arguments must be provided.
  final GetGroupAlternateIdentifierUniqueAttribute? uniqueAttribute;

  GetGroupAlternateIdentifier({
    this.externalId,
    this.uniqueAttribute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue.toMap();
    }
    final uniqueAttributeValue = uniqueAttribute;
    if (uniqueAttributeValue != null) {
      map['uniqueAttribute'] = uniqueAttributeValue.toMap();
    }
    return map;
  }

  factory GetGroupAlternateIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGroupAlternateIdentifier(
      externalId: map['externalId'] == null
          ? null
          : GetGroupAlternateIdentifierExternalId.fromMap(
              (map['externalId'] as Map).cast<String, dynamic>()),
      uniqueAttribute: map['uniqueAttribute'] == null
          ? null
          : GetGroupAlternateIdentifierUniqueAttribute.fromMap(
              (map['uniqueAttribute'] as Map).cast<String, dynamic>()),
    );
  }
}
