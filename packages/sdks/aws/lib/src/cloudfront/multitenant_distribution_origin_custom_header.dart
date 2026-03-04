// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionOriginCustomHeader {
  /// Name of the header.
  final pulumi.Input<String> headerName;

  /// Value for the header.
  final pulumi.Input<String> headerValue;

  /// Creates a new [MultitenantDistributionOriginCustomHeader].
  /// [headerName] Name of the header.
  /// [headerValue] Value for the header.
  MultitenantDistributionOriginCustomHeader({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory MultitenantDistributionOriginCustomHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionOriginCustomHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
    );
  }
}
