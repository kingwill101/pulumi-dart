// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secrets_filter/get_secrets_filter.dart';

/// Result data returned by getSecrets.
class GetSecretsResult2 {
  /// Set of ARNs of the matched Secrets Manager secrets.
  final List<String> arns;
  final List<GetSecretsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of names of the matched Secrets Manager secrets.
  final List<String> names;
  final String region;

  GetSecretsResult2({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<GetSecretsFilter, Map<String, dynamic>>(
          filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['names'] = names;
    map['region'] = region;
    return map;
  }

  factory GetSecretsResult2.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult2(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetSecretsFilter>(
              map['filters'],
              (value) => GetSecretsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
