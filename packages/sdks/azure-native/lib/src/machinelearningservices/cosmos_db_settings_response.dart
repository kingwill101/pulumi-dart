// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CosmosDbSettingsResponse {
  final pulumi.Input<int?>? collectionsThroughput;

  /// Creates a new [CosmosDbSettingsResponse].
  /// [collectionsThroughput] Optional.
  const CosmosDbSettingsResponse({
    this.collectionsThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionsThroughput': ?collectionsThroughput,
    };
  }

  factory CosmosDbSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CosmosDbSettingsResponse(
      collectionsThroughput: (() { final guardedValue = map['collectionsThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
