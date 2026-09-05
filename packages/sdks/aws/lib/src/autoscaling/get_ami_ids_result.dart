// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_filter.dart';

/// Result data returned by getAmiIds.
class GetAmiIdsResult {
  /// List of the Autoscaling Groups Arns in the current region.
  final List<String>? arns;
  final List<GetAmiIdsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of the Autoscaling Groups in the current region.
  final List<String>? names;
  final String? region;

  /// Creates a new [GetAmiIdsResult].
  /// [arns] List of the Autoscaling Groups Arns in the current region.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] List of the Autoscaling Groups in the current region.
  /// [region] Optional.
  const GetAmiIdsResult({
    this.arns,
    this.filters,
    this.id,
    this.names,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'names': ?names,
      'region': ?region,
    };
  }

  factory GetAmiIdsResult.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAmiIdsFilter>(guardedValue, (value) => GetAmiIdsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
