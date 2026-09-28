// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAppWebAppUnit {
  /// Number of units of concurrent connections.
  final pulumi.Input<int> provisioned;

  /// Creates a new [WebAppWebAppUnit].
  /// [provisioned] Number of units of concurrent connections.
  const WebAppWebAppUnit({
    required this.provisioned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioned': provisioned,
    };
  }

  factory WebAppWebAppUnit.fromMap(Map<String, dynamic> map) {
    return WebAppWebAppUnit(
      provisioned: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['provisioned'])),
    );
  }
}
