// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CosmosDbSettings {
  final pulumi.Input<int?>? collectionsThroughput;

  /// Creates a new [CosmosDbSettings].
  /// [collectionsThroughput] Optional.
  const CosmosDbSettings({
    this.collectionsThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionsThroughput': ?collectionsThroughput,
    };
  }

  factory CosmosDbSettings.fromMap(Map<String, dynamic> map) {
    return CosmosDbSettings(
      collectionsThroughput: (() { final guardedValue = map['collectionsThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
