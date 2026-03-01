// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_authorizers_get_authorizers_args_doc}
/// Arguments for getAuthorizers.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_authorizers_get_authorizers_args_doc}
class GetAuthorizersArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API.
  final pulumi.Input<String> restApiId;

  /// Creates a new [GetAuthorizersArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] ID of the associated REST API.
  GetAuthorizersArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> restApiId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      restApiId = pulumi.Input.asInput<String>(restApiId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'restApiId': restApiId,
    };
  }

  factory GetAuthorizersArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizersArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApiId: pulumi.Output.create<String>(map['restApiId'] as String),
    );
  }
}

