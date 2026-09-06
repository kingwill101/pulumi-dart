// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlavorData {
  /// Model flavor-specific data.
  final pulumi.Input<Map<String, String>?>? data;

  /// Creates a new [FlavorData].
  /// [data] Model flavor-specific data.
  const FlavorData({
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
    };
  }

  factory FlavorData.fromMap(Map<String, dynamic> map) {
    return FlavorData(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
