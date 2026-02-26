// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCustomKeyStore.
class GetCustomKeyStoreArgs {
  /// The ID for the custom key store.
  final Input<String>? customKeyStoreId;

  /// The user-specified friendly name for the custom key store.
  final Input<String>? customKeyStoreName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetCustomKeyStoreArgs({
    this.customKeyStoreId,
    this.customKeyStoreName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customKeyStoreIdValue = customKeyStoreId;
    if (customKeyStoreIdValue != null) {
      map['customKeyStoreId'] = customKeyStoreIdValue;
    }
    final customKeyStoreNameValue = customKeyStoreName;
    if (customKeyStoreNameValue != null) {
      map['customKeyStoreName'] = customKeyStoreNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetCustomKeyStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomKeyStoreArgs(
      customKeyStoreId: Input.asOptionalInput<String>(map['customKeyStoreId']),
      customKeyStoreName:
          Input.asOptionalInput<String>(map['customKeyStoreName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
