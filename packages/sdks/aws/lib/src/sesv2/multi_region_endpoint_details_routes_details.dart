// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiRegionEndpointDetailsRoutesDetails {
  /// Name of the secondary AWS region.
  final pulumi.Input<String> region;

  /// Creates a new [MultiRegionEndpointDetailsRoutesDetails].
  /// [region] Name of the secondary AWS region.
  const MultiRegionEndpointDetailsRoutesDetails({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
    };
  }

  factory MultiRegionEndpointDetailsRoutesDetails.fromMap(Map<String, dynamic> map) {
    return MultiRegionEndpointDetailsRoutesDetails(
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
