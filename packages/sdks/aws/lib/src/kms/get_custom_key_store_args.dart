// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_custom_key_store_get_custom_key_store_args_doc}
/// Arguments for getCustomKeyStore.
/// {@endtemplate}
/// {@macro pulumi_kms_get_custom_key_store_get_custom_key_store_args_doc}
class GetCustomKeyStoreArgs {
  /// ID for the custom key store.
  final pulumi.Input<String?>? customKeyStoreId;
  /// User-specified friendly name for the custom key store.
  final pulumi.Input<String?>? customKeyStoreName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetCustomKeyStoreArgs].
  /// [customKeyStoreId] ID for the custom key store.
  /// [customKeyStoreName] User-specified friendly name for the custom key store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetCustomKeyStoreArgs({
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
      customKeyStoreId: (() { final guardedValue = map['customKeyStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customKeyStoreName: (() { final guardedValue = map['customKeyStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
