// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_filter.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  /// Set of ARNs of the matched Secrets Manager secrets.
  final List<String> arns;
  final List<GetSecretsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of names of the matched Secrets Manager secrets.
  final List<String> names;
  final String region;

  /// Creates a new [GetSecretsResult].
  /// [arns] Set of ARNs of the matched Secrets Manager secrets.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of names of the matched Secrets Manager secrets.
  /// [region] Required.
  GetSecretsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetSecretsFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSecretsFilter>(
              map['filters'],
              (value) => GetSecretsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
