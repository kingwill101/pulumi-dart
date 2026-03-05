// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_filter.dart';

/// Result data returned by getInstanceTypes.
class GetInstanceTypesResult {
  final List<GetInstanceTypesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of EC2 Instance Types.
  final List<String> instanceTypes;
  final String region;

  /// Creates a new [GetInstanceTypesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] List of EC2 Instance Types.
  /// [region] Required.
  GetInstanceTypesResult({
    this.filters,
    required this.id,
    required this.instanceTypes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'instanceTypes': instanceTypes,
      'region': region,
    };
  }

  factory GetInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypesFilter>(guardedValue, (value) => GetInstanceTypesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      instanceTypes: (map['instanceTypes'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

