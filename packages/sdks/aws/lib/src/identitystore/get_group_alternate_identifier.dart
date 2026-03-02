// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_alternate_identifier_external_id.dart';
import 'get_group_alternate_identifier_unique_attribute.dart';

class GetGroupAlternateIdentifier {
  /// Configuration block for filtering by the identifier issued by an external identity provider. Detailed below.
  final pulumi.Input<GetGroupAlternateIdentifierExternalId>? externalId;
  /// An entity attribute that's unique to a specific entity. Detailed below.
  ///
  /// > Exactly one of the above arguments must be provided.
  final pulumi.Input<GetGroupAlternateIdentifierUniqueAttribute>? uniqueAttribute;

  /// Creates a new [GetGroupAlternateIdentifier].
  /// [externalId] Configuration block for filtering by the identifier issued by an external identity provider. Detailed below.
  /// [uniqueAttribute] An entity attribute that's unique to a specific entity. Detailed below.
  GetGroupAlternateIdentifier({
    this.externalId,
    this.uniqueAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': ?pulumi.Input.mapOptionalInputValue<GetGroupAlternateIdentifierExternalId, Map<String, dynamic>>(externalId, (value) => value.toMap()),
      'uniqueAttribute': ?pulumi.Input.mapOptionalInputValue<GetGroupAlternateIdentifierUniqueAttribute, Map<String, dynamic>>(uniqueAttribute, (value) => value.toMap()),
    };
  }

  factory GetGroupAlternateIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGroupAlternateIdentifier(
      externalId: map['externalId'] == null ? null : ((GetGroupAlternateIdentifierExternalId.fromMap((map['externalId']! as Map).cast<String, dynamic>())).input()).input(),
      uniqueAttribute: map['uniqueAttribute'] == null ? null : ((GetGroupAlternateIdentifierUniqueAttribute.fromMap((map['uniqueAttribute']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

