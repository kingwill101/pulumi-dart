// ignore_for_file: unused_element, unnecessary_cast

class PlaceIndexDataSourceConfiguration {
  /// Specifies how the results of an operation will be stored by the caller. Valid values: `SingleUse`, `Storage`. Default: `SingleUse`.
  final String? intendedUse;

  /// Creates a new [PlaceIndexDataSourceConfiguration].
  /// [intendedUse] Specifies how the results of an operation will be stored by the caller. Valid values: `SingleUse`, `Storage`. Default: `SingleUse`.
  PlaceIndexDataSourceConfiguration({this.intendedUse});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'intendedUse': ?intendedUse};
  }

  factory PlaceIndexDataSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return PlaceIndexDataSourceConfiguration(
      intendedUse: map['intendedUse'] == null
          ? null
          : map['intendedUse'] as String,
    );
  }
}
