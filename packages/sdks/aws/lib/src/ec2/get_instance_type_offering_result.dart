// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offering_filter.dart';

/// Result data returned by getInstanceTypeOffering.
class GetInstanceTypeOfferingResult {
  final List<GetInstanceTypeOfferingFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// EC2 Instance Type.
  final String? instanceType;
  /// Identifier for the location.
  final String? location;
  final String? locationType;
  final List<String>? preferredInstanceTypes;
  final String? region;

  /// Creates a new [GetInstanceTypeOfferingResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] EC2 Instance Type.
  /// [location] Identifier for the location.
  /// [locationType] Optional.
  /// [preferredInstanceTypes] Optional.
  /// [region] Optional.
  const GetInstanceTypeOfferingResult({
    this.filters,
    this.id,
    this.instanceType,
    this.location,
    this.locationType,
    this.preferredInstanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeOfferingFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceType': ?instanceType,
      'location': ?location,
      'locationType': ?locationType,
      'preferredInstanceTypes': ?preferredInstanceTypes,
      'region': ?region,
    };
  }

  factory GetInstanceTypeOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeOfferingFilter>(guardedValue, (value) => GetInstanceTypeOfferingFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationType: (() { final guardedValue = map['locationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredInstanceTypes: (() { final guardedValue = map['preferredInstanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
