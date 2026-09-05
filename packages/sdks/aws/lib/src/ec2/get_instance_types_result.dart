// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_filter.dart';

/// Result data returned by getInstanceTypes.
class GetInstanceTypesResult {
  final List<GetInstanceTypesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of EC2 Instance Types.
  final List<String>? instanceTypes;
  final String? region;

  /// Creates a new [GetInstanceTypesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] List of EC2 Instance Types.
  /// [region] Optional.
  const GetInstanceTypesResult({
    this.filters,
    this.id,
    this.instanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceTypes': ?instanceTypes,
      'region': ?region,
    };
  }

  factory GetInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypesFilter>(guardedValue, (value) => GetInstanceTypesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
