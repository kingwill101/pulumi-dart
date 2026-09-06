// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TmpfsOptionsResponse {
  /// Mention the Tmpfs size
  final pulumi.Input<int?>? size;

  /// Creates a new [TmpfsOptionsResponse].
  /// [size] Mention the Tmpfs size
  const TmpfsOptionsResponse({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory TmpfsOptionsResponse.fromMap(Map<String, dynamic> map) {
    return TmpfsOptionsResponse(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
