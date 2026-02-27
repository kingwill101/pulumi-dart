// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_group_alternate_identifier/get_group_alternate_identifier.dart';

/// Arguments for getGroup.
class GetGroupIdentitystoreArgs {
  /// A unique identifier for the group that is not the primary identifier. Conflicts with `group_id` and `filter`. Detailed below.
  final pulumi.Input<GetGroupAlternateIdentifier>? alternateIdentifier;

  /// The identifier for a group in the Identity Store.
  ///
  /// > Exactly one of the above arguments must be provided. Passing both `filter` and `group_id` is allowed for backwards compatibility.
  final pulumi.Input<String>? groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetGroupIdentitystoreArgs({
    this.alternateIdentifier,
    this.groupId,
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternateIdentifierValue = alternateIdentifier;
    if (alternateIdentifierValue != null) {
      map['alternateIdentifier'] = pulumi.Input.mapOptionalInputValue<
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

  factory GetGroupIdentitystoreArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupIdentitystoreArgs(
      alternateIdentifier:
          pulumi.Input.asOptionalInput<GetGroupAlternateIdentifier>(
              map['alternateIdentifier']),
      groupId: pulumi.Input.asOptionalInput<String>(map['groupId']),
      identityStoreId: pulumi.Input.asInput<String>(map['identityStoreId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
