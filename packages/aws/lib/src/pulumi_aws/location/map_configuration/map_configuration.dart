// ignore_for_file: unused_element, unnecessary_cast

class MapConfiguration {
  /// Specifies the map style selected from an available data provider. Valid values can be found in the [Location Service CreateMap API Reference](https://docs.aws.amazon.com/location/latest/APIReference/API_CreateMap.html).
  final String style;

  MapConfiguration({
    required this.style,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['style'] = style;
    return map;
  }

  factory MapConfiguration.fromMap(Map<String, dynamic> map) {
    return MapConfiguration(
      style: map['style'] as String,
    );
  }
}
