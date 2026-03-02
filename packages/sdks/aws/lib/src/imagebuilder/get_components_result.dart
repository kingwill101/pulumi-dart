// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_components_filter.dart';

/// Result data returned by getComponents.
class GetComponentsResult {
  /// Set of ARNs of the matched Image Builder Components.
  final List<String> arns;
  final List<GetComponentsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of names of the matched Image Builder Components.
  final List<String> names;
  final String? owner;
  final String region;

  /// Creates a new [GetComponentsResult].
  /// [arns] Set of ARNs of the matched Image Builder Components.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of names of the matched Image Builder Components.
  /// [owner] Optional.
  /// [region] Required.
  GetComponentsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    this.owner,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetComponentsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'names': names,
      'owner': ?owner,
      'region': region,
    };
  }

  factory GetComponentsResult.fromMap(Map<String, dynamic> map) {
    return GetComponentsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetComponentsFilter>(map['filters']!, (value) => GetComponentsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      owner: map['owner'] == null ? null : map['owner'] as String,
      region: map['region'] as String,
    );
  }
}

