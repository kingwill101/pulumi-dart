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
  /// &gt; Exactly one of the above arguments must be provided. Passing both `filter` and `group_id` is allowed for backwards compatibility.
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
    this.alternateIdentifier,
    this.groupId,
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateIdentifier':
          ?pulumi.Input.mapOptionalInputValue<
            GetGroupAlternateIdentifier,
            Map<String, dynamic>
          >(alternateIdentifier, (value) => value.toMap()),
      'groupId': ?groupId,
      'identityStoreId': identityStoreId,
      'region': ?region,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      alternateIdentifier: (() {
        final guardedValue = map['alternateIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetGroupAlternateIdentifier.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityStoreId: pulumi.Input.fromValue(map['identityStoreId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
