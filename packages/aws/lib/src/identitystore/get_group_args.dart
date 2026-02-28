// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_alternate_identifier.dart';

/// {@template pulumi_identitystore_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_identitystore_get_group_get_group_args_doc}
class GetGroupArgs {
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

  /// Creates a new [GetGroupArgs].
  /// [alternateIdentifier] A unique identifier for the group that is not the primary identifier. Conflicts with `group_id` and `filter`. Detailed below.
  /// [groupId] The identifier for a group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetGroupArgs({
    GetGroupAlternateIdentifier? alternateIdentifier,
    String? groupId,
    required String identityStoreId,
    String? region,
  })  : alternateIdentifier =
            pulumi.Input.asOptionalInput<GetGroupAlternateIdentifier>(
                alternateIdentifier),
        groupId = pulumi.Input.asOptionalInput<String>(groupId),
        identityStoreId = pulumi.Input.asInput<String>(identityStoreId),
        region = pulumi.Input.asOptionalInput<String>(region);

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

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      alternateIdentifier: map['alternateIdentifier'] == null
          ? null
          : GetGroupAlternateIdentifier.fromMap(
              (map['alternateIdentifier'] as Map).cast<String, dynamic>()),
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
