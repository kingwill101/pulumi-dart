// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wraps data-residency related information for edge-resource and this should be used with ARM layer.
class DataResidencyResponse {
  /// DataResidencyType enum
  final pulumi.Input<String>? type;

  /// Creates a new [DataResidencyResponse].
  /// [type] DataResidencyType enum
  DataResidencyResponse({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory DataResidencyResponse.fromMap(Map<String, dynamic> map) {
    return DataResidencyResponse(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
