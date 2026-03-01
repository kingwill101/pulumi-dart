// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProvisionedThroughput
class ProvisionedThroughput {
  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  final int? readCapacityUnits;
  /// The maximum number of writes consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  final int? writeCapacityUnits;

  /// Creates a new [ProvisionedThroughput].
  /// [readCapacityUnits] The maximum number of strongly consistent reads consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  /// [writeCapacityUnits] The maximum number of writes consumed per second before DynamoDB returns a ``ThrottlingException``. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the *Amazon DynamoDB Developer Guide*. If read/write capacity mode is ``PAY_PER_REQUEST`` the value is set to 0.
  ProvisionedThroughput({
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
      readCapacityUnits: map['readCapacityUnits'] == null ? null : map['readCapacityUnits'] as int,
      writeCapacityUnits: map['writeCapacityUnits'] == null ? null : map['writeCapacityUnits'] as int,
    );
  }
}

