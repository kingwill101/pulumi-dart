// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitystore_get_users_get_users_args_doc}
/// Arguments for getUsers.
/// {@endtemplate}
/// {@macro pulumi_identitystore_get_users_get_users_args_doc}
class GetUsersArgs {
  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetUsersArgs].
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetUsersArgs({
    required String identityStoreId,
    String? region,
  })  : identityStoreId = pulumi.Input.asInput<String>(identityStoreId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityStoreId'] = identityStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs(
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
