// ignore_for_file: unused_element, unnecessary_cast

class PlaceIndexDataSourceConfiguration {
  /// Specifies how the results of an operation will be stored by the caller. Valid values: `SingleUse`, `Storage`. Default: `SingleUse`.
  final String? intendedUse;

  PlaceIndexDataSourceConfiguration({
    this.intendedUse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intendedUseValue = intendedUse;
    if (intendedUseValue != null) {
      map['intendedUse'] = intendedUseValue;
    }
    return map;
  }

  factory PlaceIndexDataSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return PlaceIndexDataSourceConfiguration(
      intendedUse:
          map['intendedUse'] == null ? null : map['intendedUse'] as String,
    );
  }
}
