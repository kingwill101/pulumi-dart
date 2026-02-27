// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_group_alternate_identifier/get_group_alternate_identifier.dart';

/// Arguments for getGroup.
class GetGroupArgs3 {
  /// A unique identifier for the group that is not the primary identifier. Conflicts with `group_id` and `filter`. Detailed below.
  final Input<GetGroupAlternateIdentifier>? alternateIdentifier;

  /// The identifier for a group in the Identity Store.
  ///
  /// > Exactly one of the above arguments must be provided. Passing both `filter` and `group_id` is allowed for backwards compatibility.
  final Input<String>? groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  ///
  /// The following arguments are optional:
  final Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetGroupArgs3({
    this.alternateIdentifier,
    this.groupId,
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternateIdentifierValue = alternateIdentifier;
    if (alternateIdentifierValue != null) {
      map['alternateIdentifier'] = Input.mapOptionalInputValue<
              GetGroupAlternateIdentifier, Map<String, dynamic>>(
          alternateIdentifierValue, (value) => value.toMap());
    }
    final groupIdValue = groupId;
    if (groupIdValue != null) {
      map['groupId'] = groupIdValue;
    }
    map['identityStoreId'] = identityStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetGroupArgs3.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs3(
      alternateIdentifier: Input.asOptionalInput<GetGroupAlternateIdentifier>(
          map['alternateIdentifier']),
      groupId: Input.asOptionalInput<String>(map['groupId']),
      identityStoreId: Input.asInput<String>(map['identityStoreId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
