// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifications on number of machines.
class ManualScaleProfileResponse {
  /// Number of nodes.
  final pulumi.Input<int?>? count;
  /// VM size that AKS will use when creating and scaling e.g. 'Standard_E4s_v3', 'Standard_E16s_v3' or 'Standard_D16s_v5'.
  final pulumi.Input<String?>? size;

  /// Creates a new [ManualScaleProfileResponse].
  /// [count] Number of nodes.
  /// [size] VM size that AKS will use when creating and scaling e.g. 'Standard_E4s_v3', 'Standard_E16s_v3' or 'Standard_D16s_v5'.
  const ManualScaleProfileResponse({
    this.count,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'size': ?size,
    };
  }

  factory ManualScaleProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManualScaleProfileResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
