// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MapConfiguration {
  /// Specifies the map style selected from an available data provider. Valid values can be found in the [Location Service CreateMap API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_CreateMap.html).
  final pulumi.Input<String> style;

  /// Creates a new [MapConfiguration].
  /// [style] Specifies the map style selected from an available data provider. Valid values can be found in the [Location Service CreateMap API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_CreateMap.html).
  MapConfiguration({required this.style});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'style': style};
  }

  factory MapConfiguration.fromMap(Map<String, dynamic> map) {
    return MapConfiguration(
      style: pulumi.Input.fromValue(map['style'] as String),
    );
  }
}
