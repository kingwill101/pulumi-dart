// ignore_for_file: unused_element, unnecessary_cast

import 'get_user_alternate_identifier_external_id.dart';
import 'get_user_alternate_identifier_unique_attribute.dart';

class GetUserAlternateIdentifier {
  /// Configuration block for filtering by the identifier issued by an external identity provider. Detailed below.
  final GetUserAlternateIdentifierExternalId? externalId;

  /// An entity attribute that's unique to a specific entity. Detailed below.
  ///
  /// > Exactly one of the above arguments must be provided.
  final GetUserAlternateIdentifierUniqueAttribute? uniqueAttribute;

  /// Creates a new [GetUserAlternateIdentifier].
  /// [externalId] Configuration block for filtering by the identifier issued by an external identity provider. Detailed below.
  /// [uniqueAttribute] An entity attribute that's unique to a specific entity. Detailed below.
  GetUserAlternateIdentifier({
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

  factory GetUserAlternateIdentifier.fromMap(Map<String, dynamic> map) {
    return GetUserAlternateIdentifier(
      externalId: map['externalId'] == null
          ? null
          : GetUserAlternateIdentifierExternalId.fromMap(
              (map['externalId'] as Map).cast<String, dynamic>()),
      uniqueAttribute: map['uniqueAttribute'] == null
          ? null
          : GetUserAlternateIdentifierUniqueAttribute.fromMap(
              (map['uniqueAttribute'] as Map).cast<String, dynamic>()),
    );
  }
}
