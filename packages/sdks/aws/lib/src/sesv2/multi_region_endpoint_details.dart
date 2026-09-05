// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_endpoint_details_routes_details.dart';

class MultiRegionEndpointDetails {
  /// Secondary region route configuration. See `routesDetails` Block below.
  final pulumi.Input<MultiRegionEndpointDetailsRoutesDetails?>? routesDetails;

  /// Creates a new [MultiRegionEndpointDetails].
  /// [routesDetails] Secondary region route configuration. See `routesDetails` Block below.
  const MultiRegionEndpointDetails({
    this.routesDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routesDetails': ?pulumi.Input.mapOptionalInputValue<MultiRegionEndpointDetailsRoutesDetails, Map<String, dynamic>>(routesDetails, (value) => value.toMap()),
    };
  }

  factory MultiRegionEndpointDetails.fromMap(Map<String, dynamic> map) {
    return MultiRegionEndpointDetails(
      routesDetails: (() { final guardedValue = map['routesDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionEndpointDetailsRoutesDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
