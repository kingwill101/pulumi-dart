// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_user_pools_get_user_pools_args_doc}
/// Arguments for getUserPools.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_user_pools_get_user_pools_args_doc}
class GetUserPoolsArgs {
  /// Name of the cognito user pools. Name is not a unique attribute for cognito user pool, so multiple pools might be returned with given name. If the pool name is expected to be unique, you can reference the pool id via ```tolist(data.aws_cognito_user_pools.selected.ids)[0]```
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetUserPoolsArgs].
  /// [name] Name of the cognito user pools. Name is not a unique attribute for cognito user pool, so multiple pools might be returned with given name. If the pool name is expected to be unique, you can reference the pool id via ```tolist(data.aws_cognito_user_pools.selected.ids)[0]```
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetUserPoolsArgs({
    required String name,
    String? region,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetUserPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserPoolsArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
