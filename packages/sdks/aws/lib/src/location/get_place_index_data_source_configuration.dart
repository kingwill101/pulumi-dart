// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlaceIndexDataSourceConfiguration {
  final pulumi.Input<String> intendedUse;

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
      intendedUse: pulumi.Input.fromValue(map['intendedUse'] as String),
    );
  }
}
