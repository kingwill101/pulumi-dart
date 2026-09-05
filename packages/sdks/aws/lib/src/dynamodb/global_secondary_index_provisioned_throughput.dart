// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalSecondaryIndexProvisionedThroughput {
  /// Number of read capacity units for this index.
  final pulumi.Input<int?>? readCapacityUnits;
  /// Number of write capacity units for this index.
  final pulumi.Input<int?>? writeCapacityUnits;

  /// Creates a new [GlobalSecondaryIndexProvisionedThroughput].
  /// [readCapacityUnits] Number of read capacity units for this index.
  /// [writeCapacityUnits] Number of write capacity units for this index.
  const GlobalSecondaryIndexProvisionedThroughput({
    this.readCapacityUnits,
    this.writeCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readCapacityUnits': ?readCapacityUnits,
      'writeCapacityUnits': ?writeCapacityUnits,
    };
  }

  factory GlobalSecondaryIndexProvisionedThroughput.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexProvisionedThroughput(
      readCapacityUnits: (() { final guardedValue = map['readCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      writeCapacityUnits: (() { final guardedValue = map['writeCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
