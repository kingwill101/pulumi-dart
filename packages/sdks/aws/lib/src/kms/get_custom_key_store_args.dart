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
    this.customKeyStoreId,
    this.customKeyStoreName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customKeyStoreId': ?customKeyStoreId,
      'customKeyStoreName': ?customKeyStoreName,
      'region': ?region,
    };
  }

  factory GetCustomKeyStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomKeyStoreArgs(
      customKeyStoreId: map['customKeyStoreId'] == null ? null : ((map['customKeyStoreId'] as String).input()).input(),
      customKeyStoreName: map['customKeyStoreName'] == null ? null : ((map['customKeyStoreName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

