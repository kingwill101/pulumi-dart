// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_identity_pool_get_identity_pool_args_doc}
/// Arguments for getIdentityPool.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_identity_pool_get_identity_pool_args_doc}
class GetIdentityPoolArgs {
  /// The Cognito Identity Pool name.
  final pulumi.Input<String> identityPoolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assigned to the Identity Pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetIdentityPoolArgs].
  /// [identityPoolName] The Cognito Identity Pool name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assigned to the Identity Pool.
  GetIdentityPoolArgs({
    required String identityPoolName,
    String? region,
    Map<String, String>? tags,
  }) : identityPoolName = pulumi.Input.asInput<String>(identityPoolName),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityPoolName': identityPoolName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetIdentityPoolArgs(
      identityPoolName: map['identityPoolName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
