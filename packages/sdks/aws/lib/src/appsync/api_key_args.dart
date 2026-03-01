// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appsync_api_key_api_key_args_doc}
/// The set of arguments for ApiKey.
/// {@endtemplate}
/// {@macro pulumi_appsync_api_key_api_key_args_doc}
class ApiKeyArgs {
  /// ID of the associated AppSync API
  final pulumi.Input<String> apiId;
  /// API key description. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;
  /// RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  final pulumi.Input<String>? expires;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ApiKeyArgs].
  /// [apiId] ID of the associated AppSync API
  /// [description] API key description. Defaults to "Managed by Pulumi".
  /// [expires] RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApiKeyArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expires,
    pulumi.Output<String>? region,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      description = pulumi.Input.asOptionalInput<String>(description),
      expires = pulumi.Input.asOptionalInput<String>(expires),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': ?description,
      'expires': ?expires,
      'region': ?region,
    };
  }

  factory ApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return ApiKeyArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expires: map['expires'] == null ? null : pulumi.Output.create<String>(map['expires'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

