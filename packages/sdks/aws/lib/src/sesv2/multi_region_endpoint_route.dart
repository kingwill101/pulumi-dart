// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiRegionEndpointRoute {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Creates a new [MultiRegionEndpointRoute].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const MultiRegionEndpointRoute({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
    };
  }

  factory MultiRegionEndpointRoute.fromMap(Map<String, dynamic> map) {
    return MultiRegionEndpointRoute(
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
