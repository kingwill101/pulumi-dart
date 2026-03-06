// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirehoseDeliveryStream.
class GetFirehoseDeliveryStreamResult {
  /// ARN of the Kinesis Firehose Delivery Stream (same as `id`).
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetFirehoseDeliveryStreamResult].
  /// [arn] ARN of the Kinesis Firehose Delivery Stream (same as `id`).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  const GetFirehoseDeliveryStreamResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetFirehoseDeliveryStreamResult.fromMap(Map<String, dynamic> map) {
    return GetFirehoseDeliveryStreamResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

