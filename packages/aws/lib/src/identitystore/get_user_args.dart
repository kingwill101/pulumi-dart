// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_alternate_identifier.dart';

/// {@template pulumi_identitystore_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_identitystore_get_user_get_user_args_doc}
class GetUserArgs {
  /// A unique identifier for a user or group that is not the primary identifier. Conflicts with `user_id` and `filter`. Detailed below.
  final pulumi.Input<GetUserAlternateIdentifier>? alternateIdentifier;

  /// Identity Store ID associated with the Single Sign-On Instance.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The identifier for a user in the Identity Store.
  ///
  /// > Exactly one of the above arguments must be provided. Passing both `filter` and `user_id` is allowed for backwards compatibility.
  final pulumi.Input<String>? userId;

  /// Creates a new [GetUserArgs].
  /// [alternateIdentifier] A unique identifier for a user or group that is not the primary identifier. Conflicts with `user_id` and `filter`. Detailed below.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userId] The identifier for a user in the Identity Store.
  GetUserArgs({
    GetUserAlternateIdentifier? alternateIdentifier,
    required String identityStoreId,
    String? region,
    String? userId,
  })  : alternateIdentifier =
            pulumi.Input.asOptionalInput<GetUserAlternateIdentifier>(
                alternateIdentifier),
        identityStoreId = pulumi.Input.asInput<String>(identityStoreId),
        region = pulumi.Input.asOptionalInput<String>(region),
        userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternateIdentifierValue = alternateIdentifier;
    if (alternateIdentifierValue != null) {
      map['alternateIdentifier'] = pulumi.Input.mapOptionalInputValue<
              GetUserAlternateIdentifier, Map<String, dynamic>>(
          alternateIdentifierValue, (value) => value.toMap());
    }
    map['identityStoreId'] = identityStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final userIdValue = userId;
    if (userIdValue != null) {
      map['userId'] = userIdValue;
    }
    return map;
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      alternateIdentifier: map['alternateIdentifier'] == null
          ? null
          : GetUserAlternateIdentifier.fromMap(
              (map['alternateIdentifier'] as Map).cast<String, dynamic>()),
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}
