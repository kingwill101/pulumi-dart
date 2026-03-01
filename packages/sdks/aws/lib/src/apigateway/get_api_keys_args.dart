// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_api_keys_get_api_keys_args_doc}
/// Arguments for getApiKeys.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_api_keys_get_api_keys_args_doc}
class GetApiKeysArgs {
  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final pulumi.Input<String>? customerId;
  /// Set this value to `true` if you wish the result contains the key value. Defaults to `false`.
  final pulumi.Input<bool>? includeValues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetApiKeysArgs].
  /// [customerId] Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  /// [includeValues] Set this value to `true` if you wish the result contains the key value. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetApiKeysArgs({
    pulumi.Output<String>? customerId,
    pulumi.Output<bool>? includeValues,
    pulumi.Output<String>? region,
  }) :
      customerId = pulumi.Input.asOptionalInput<String>(customerId),
      includeValues = pulumi.Input.asOptionalInput<bool>(includeValues),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': ?customerId,
      'includeValues': ?includeValues,
      'region': ?region,
    };
  }

  factory GetApiKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetApiKeysArgs(
      customerId: map['customerId'] == null ? null : pulumi.Output.create<String>(map['customerId'] as String),
      includeValues: map['includeValues'] == null ? null : pulumi.Output.create<bool>(map['includeValues'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

