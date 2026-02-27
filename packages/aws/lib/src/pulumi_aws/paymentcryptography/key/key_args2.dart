// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../key_key_attribute/key_key_attribute.dart';
import '../key_timeouts/key_timeouts.dart';

/// The set of arguments for Key.
class KeyArgs2 {
  final Input<int>? deletionWindowInDays;

  /// Whether to enable the key.
  final Input<bool>? enabled;

  /// Whether the key is exportable from the service.
  final Input<bool> exportable;

  /// Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  ///
  /// The following arguments are optional:
  final Input<List<KeyKeyAttribute>>? keyAttributes;

  /// Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  final Input<String>? keyCheckValueAlgorithm;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<KeyTimeouts>? timeouts;

  KeyArgs2({
    this.deletionWindowInDays,
    this.enabled,
    required this.exportable,
    this.keyAttributes,
    this.keyCheckValueAlgorithm,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionWindowInDaysValue = deletionWindowInDays;
    if (deletionWindowInDaysValue != null) {
      map['deletionWindowInDays'] = deletionWindowInDaysValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['exportable'] = exportable;
    final keyAttributesValue = keyAttributes;
    if (keyAttributesValue != null) {
      map['keyAttributes'] = Input.mapOptionalInputValue<List<KeyKeyAttribute>,
              List<Map<String, dynamic>>>(
          keyAttributesValue,
          (value) => Input.encodeList<KeyKeyAttribute, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final keyCheckValueAlgorithmValue = keyCheckValueAlgorithm;
    if (keyCheckValueAlgorithmValue != null) {
      map['keyCheckValueAlgorithm'] = keyCheckValueAlgorithmValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<KeyTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeyArgs2.fromMap(Map<String, dynamic> map) {
    return KeyArgs2(
      deletionWindowInDays:
          Input.asOptionalInput<int>(map['deletionWindowInDays']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      exportable: Input.asInput<bool>(map['exportable']),
      keyAttributes:
          Input.asOptionalInput<List<KeyKeyAttribute>>(map['keyAttributes']),
      keyCheckValueAlgorithm:
          Input.asOptionalInput<String>(map['keyCheckValueAlgorithm']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<KeyTimeouts>(map['timeouts']),
    );
  }
}
