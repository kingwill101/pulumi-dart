// ignore_for_file: unused_element, unnecessary_cast

import 'ca_pool_issuance_policy_baseline_values_additional_extension_object_id.dart';

class CaPoolIssuancePolicyBaselineValuesAdditionalExtension {
  /// Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// handle this extension, the client should consider this to be an error).
  final bool critical;

  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId objectId;

  /// The value of this X.509 extension. A base64-encoded string.
  final String value;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesAdditionalExtension].
  /// [critical] Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// [objectId] Describes values that are relevant in a CA certificate.
  /// [value] The value of this X.509 extension. A base64-encoded string.
  CaPoolIssuancePolicyBaselineValuesAdditionalExtension({
    required this.critical,
    required this.objectId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['critical'] = critical;
    map['objectId'] = objectId.toMap();
    map['value'] = value;
    return map;
  }

  factory CaPoolIssuancePolicyBaselineValuesAdditionalExtension.fromMap(
      Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesAdditionalExtension(
      critical: map['critical'] as bool,
      objectId:
          CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectId.fromMap(
              (map['objectId'] as Map).cast<String, dynamic>()),
      value: map['value'] as String,
    );
  }
}
