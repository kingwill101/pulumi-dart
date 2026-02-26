// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secrets_filter/get_secrets_filter.dart';

/// Arguments for getSecrets.
class GetSecretsArgs2 {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetSecretsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetSecretsArgs2({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetSecretsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetSecretsFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetSecretsArgs2.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs2(
      filters: Input.asOptionalInput<List<GetSecretsFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
