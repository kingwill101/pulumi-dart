// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_user_alternate_identifier/get_user_alternate_identifier.dart';

/// Arguments for getUser.
class GetUserIdentitystoreArgs {
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

  GetUserIdentitystoreArgs({
    this.alternateIdentifier,
    required this.identityStoreId,
    this.region,
    this.userId,
  });

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

  factory GetUserIdentitystoreArgs.fromMap(Map<String, dynamic> map) {
    return GetUserIdentitystoreArgs(
      alternateIdentifier:
          pulumi.Input.asOptionalInput<GetUserAlternateIdentifier>(
              map['alternateIdentifier']),
      identityStoreId: pulumi.Input.asInput<String>(map['identityStoreId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userId: pulumi.Input.asOptionalInput<String>(map['userId']),
    );
  }
}
