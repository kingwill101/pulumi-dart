// ignore_for_file: unused_element, unnecessary_cast

class GetMapConfiguration {
  /// The map style selected from an available data provider.
  final String style;

  /// Creates a new [GetMapConfiguration].
  /// [style] The map style selected from an available data provider.
  GetMapConfiguration({
    required this.style,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['style'] = style;
    return map;
  }

  factory GetMapConfiguration.fromMap(Map<String, dynamic> map) {
    return GetMapConfiguration(
      style: map['style'] as String,
    );
  }
}
