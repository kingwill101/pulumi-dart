// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalSecondaryIndexOnDemandThroughput {
  /// Maximum number of read request units for this index.
  final pulumi.Input<int>? maxReadRequestUnits;
  /// Maximum number of write request units for this index.
  final pulumi.Input<int>? maxWriteRequestUnits;

  /// Creates a new [GlobalSecondaryIndexOnDemandThroughput].
  /// [maxReadRequestUnits] Maximum number of read request units for this index.
  /// [maxWriteRequestUnits] Maximum number of write request units for this index.
  const GlobalSecondaryIndexOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadRequestUnits': ?maxReadRequestUnits,
      'maxWriteRequestUnits': ?maxWriteRequestUnits,
    };
  }

  factory GlobalSecondaryIndexOnDemandThroughput.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexOnDemandThroughput(
      maxReadRequestUnits: (() { final guardedValue = map['maxReadRequestUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxWriteRequestUnits: (() { final guardedValue = map['maxWriteRequestUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

