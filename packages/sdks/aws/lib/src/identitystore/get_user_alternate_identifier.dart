// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_alternate_identifier_external_id.dart';
import 'get_user_alternate_identifier_unique_attribute.dart';

class GetUserAlternateIdentifier {
  /// Configuration block for filtering by the identifier issued by an external identity provider. Detailed below.
  final pulumi.Input<GetUserAlternateIdentifierExternalId>? externalId;

  /// An entity attribute that's unique to a specific entity. Detailed below.
  ///
  /// &gt; Exactly one of the above arguments must be provided.
  final pulumi.Input<GetUserAlternateIdentifierUniqueAttribute>?
  uniqueAttribute;

  /// Creates a new [GetUserAlternateIdentifier].
  /// [externalId] Configuration block for filtering by the identifier issued by an external identity provider. Detailed below.
  /// [uniqueAttribute] An entity attribute that's unique to a specific entity. Detailed below.
  GetUserAlternateIdentifier({this.externalId, this.uniqueAttribute});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId':
          ?pulumi.Input.mapOptionalInputValue<
            GetUserAlternateIdentifierExternalId,
            Map<String, dynamic>
          >(externalId, (value) => value.toMap()),
      'uniqueAttribute':
          ?pulumi.Input.mapOptionalInputValue<
            GetUserAlternateIdentifierUniqueAttribute,
            Map<String, dynamic>
          >(uniqueAttribute, (value) => value.toMap()),
    };
  }

  factory GetUserAlternateIdentifier.fromMap(Map<String, dynamic> map) {
    return GetUserAlternateIdentifier(
      externalId: (() {
        final guardedValue = map['externalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetUserAlternateIdentifierExternalId.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uniqueAttribute: (() {
        final guardedValue = map['uniqueAttribute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetUserAlternateIdentifierUniqueAttribute.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
