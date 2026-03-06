// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlaceIndexDataSourceConfiguration {
  /// Specifies how the results of an operation will be stored by the caller. Valid values: `SingleUse`, `Storage`. Default: `SingleUse`.
  final pulumi.Input<String>? intendedUse;

  /// Creates a new [PlaceIndexDataSourceConfiguration].
  /// [intendedUse] Specifies how the results of an operation will be stored by the caller. Valid values: `SingleUse`, `Storage`. Default: `SingleUse`.
  const PlaceIndexDataSourceConfiguration({
    this.intendedUse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intendedUse': ?intendedUse,
    };
  }

  factory PlaceIndexDataSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return PlaceIndexDataSourceConfiguration(
      intendedUse: (() { final guardedValue = map['intendedUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

