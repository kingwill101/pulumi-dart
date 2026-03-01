// ignore_for_file: unused_element, unnecessary_cast

class GetPlaceIndexDataSourceConfiguration {
  final String intendedUse;

  /// Creates a new [GetPlaceIndexDataSourceConfiguration].
  /// [intendedUse] Required.
  GetPlaceIndexDataSourceConfiguration({required this.intendedUse});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'intendedUse': intendedUse};
  }

  factory GetPlaceIndexDataSourceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPlaceIndexDataSourceConfiguration(
      intendedUse: map['intendedUse'] as String,
    );
  }
}
