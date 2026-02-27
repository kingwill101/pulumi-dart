// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApiKeys.
class GetApiKeysArgs {
  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final Input<String>? customerId;

  /// Set this value to `true` if you wish the result contains the key value. Defaults to `false`.
  final Input<bool>? includeValues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetApiKeysArgs({
    this.customerId,
    this.includeValues,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerIdValue = customerId;
    if (customerIdValue != null) {
      map['customerId'] = customerIdValue;
    }
    final includeValuesValue = includeValues;
    if (includeValuesValue != null) {
      map['includeValues'] = includeValuesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetApiKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetApiKeysArgs(
      customerId: Input.asOptionalInput<String>(map['customerId']),
      includeValues: Input.asOptionalInput<bool>(map['includeValues']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
