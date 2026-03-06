// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_filter.dart';

/// Result data returned by getAmiIds.
class GetAmiIdsResult {
  /// List of the Autoscaling Groups Arns in the current region.
  final List<String> arns;
  final List<GetAmiIdsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of the Autoscaling Groups in the current region.
  final List<String> names;
  final String region;

  /// Creates a new [GetAmiIdsResult].
  /// [arns] List of the Autoscaling Groups Arns in the current region.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] List of the Autoscaling Groups in the current region.
  /// [region] Required.
  const GetAmiIdsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetAmiIdsResult.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAmiIdsFilter>(guardedValue, (value) => GetAmiIdsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

