// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProvisionedThroughput
class ProvisionedThroughputResponse {
  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  final pulumi.Input<int>? readCapacityUnits;
  /// The maximum number of writes consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  final pulumi.Input<int>? writeCapacityUnits;

  /// Creates a new [ProvisionedThroughputResponse].
  /// [readCapacityUnits] The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  /// [writeCapacityUnits] The maximum number of writes consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  ProvisionedThroughputResponse({
    this.readCapacityUnits,
    this.writeCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readCapacityUnits': ?readCapacityUnits,
      'writeCapacityUnits': ?writeCapacityUnits,
    };
  }

  factory ProvisionedThroughputResponse.fromMap(Map<String, dynamic> map) {
    return ProvisionedThroughputResponse(
      readCapacityUnits: map['readCapacityUnits'] == null ? null : (map['readCapacityUnits']! as int).input(),
      writeCapacityUnits: map['writeCapacityUnits'] == null ? null : (map['writeCapacityUnits']! as int).input(),
    );
  }
}

