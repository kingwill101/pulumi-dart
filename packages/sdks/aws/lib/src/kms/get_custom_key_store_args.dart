// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_custom_key_store_get_custom_key_store_args_doc}
/// Arguments for getCustomKeyStore.
/// {@endtemplate}
/// {@macro pulumi_kms_get_custom_key_store_get_custom_key_store_args_doc}
class GetCustomKeyStoreArgs {
  /// The ID for the custom key store.
  final pulumi.Input<String>? customKeyStoreId;
  /// The user-specified friendly name for the custom key store.
  final pulumi.Input<String>? customKeyStoreName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCustomKeyStoreArgs].
  /// [customKeyStoreId] The ID for the custom key store.
  /// [customKeyStoreName] The user-specified friendly name for the custom key store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCustomKeyStoreArgs({
    pulumi.Output<String>? customKeyStoreId,
    pulumi.Output<String>? customKeyStoreName,
    pulumi.Output<String>? region,
  }) :
      customKeyStoreId = pulumi.Input.asOptionalInput<String>(customKeyStoreId),
      customKeyStoreName = pulumi.Input.asOptionalInput<String>(customKeyStoreName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customKeyStoreId': ?customKeyStoreId,
      'customKeyStoreName': ?customKeyStoreName,
      'region': ?region,
    };
  }

  factory GetCustomKeyStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomKeyStoreArgs(
      customKeyStoreId: map['customKeyStoreId'] == null ? null : pulumi.Output.create<String>(map['customKeyStoreId'] as String),
      customKeyStoreName: map['customKeyStoreName'] == null ? null : pulumi.Output.create<String>(map['customKeyStoreName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

