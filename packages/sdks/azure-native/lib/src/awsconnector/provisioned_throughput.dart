// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProvisionedThroughput
class ProvisionedThroughput {
  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  final pulumi.Input<int?>? readCapacityUnits;
  /// The maximum number of writes consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  final pulumi.Input<int?>? writeCapacityUnits;

  /// Creates a new [ProvisionedThroughput].
  /// [readCapacityUnits] The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  /// [writeCapacityUnits] The maximum number of writes consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  const ProvisionedThroughput({
    this.readCapacityUnits,
    this.writeCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readCapacityUnits': ?readCapacityUnits,
      'writeCapacityUnits': ?writeCapacityUnits,
    };
  }

  factory ProvisionedThroughput.fromMap(Map<String, dynamic> map) {
    return ProvisionedThroughput(
      readCapacityUnits: (() { final guardedValue = map['readCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      writeCapacityUnits: (() { final guardedValue = map['writeCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
