// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitystore_get_groups_get_groups_args_doc}
/// Arguments for getGroups.
/// {@endtemplate}
/// {@macro pulumi_identitystore_get_groups_get_groups_args_doc}
class GetGroupsArgs {
  /// Identity Store ID associated with the Single Sign-On (SSO) Instance.
  final pulumi.Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetGroupsArgs].
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On (SSO) Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetGroupsArgs({
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

  factory GetGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupsArgs(
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
