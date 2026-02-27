// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_key_pair_filter/get_key_pair_filter.dart';

/// Arguments for getKeyPair.
class GetKeyPairArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Key Pairs. The given filters must match exactly one Key Pair
  /// whose data will be exported as attributes.
  final pulumi.Input<List<GetKeyPairFilter>>? filters;

  /// Whether to include the public key material in the response.
  final pulumi.Input<bool>? includePublicKey;

  /// Key Pair name.
  final pulumi.Input<String>? keyName;

  /// Key Pair ID.
  final pulumi.Input<String>? keyPairId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Any tags assigned to the Key Pair.
  final pulumi.Input<Map<String, String>>? tags;

  GetKeyPairArgs({
    this.filters,
    this.includePublicKey,
    this.keyName,
    this.keyPairId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetKeyPairFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetKeyPairFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final includePublicKeyValue = includePublicKey;
    if (includePublicKeyValue != null) {
      map['includePublicKey'] = includePublicKeyValue;
    }
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final keyPairIdValue = keyPairId;
    if (keyPairIdValue != null) {
      map['keyPairId'] = keyPairIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetKeyPairArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyPairArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetKeyPairFilter>>(map['filters']),
      includePublicKey:
          pulumi.Input.asOptionalInput<bool>(map['includePublicKey']),
      keyName: pulumi.Input.asOptionalInput<String>(map['keyName']),
      keyPairId: pulumi.Input.asOptionalInput<String>(map['keyPairId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
