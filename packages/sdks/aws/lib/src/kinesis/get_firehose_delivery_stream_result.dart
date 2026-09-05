// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirehoseDeliveryStream.
class GetFirehoseDeliveryStreamResult {
  /// ARN of the Kinesis Firehose Delivery Stream (same as `id`).
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetFirehoseDeliveryStreamResult].
  /// [arn] ARN of the Kinesis Firehose Delivery Stream (same as `id`).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetFirehoseDeliveryStreamResult({
    this.arn,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetFirehoseDeliveryStreamResult.fromMap(Map<String, dynamic> map) {
    return GetFirehoseDeliveryStreamResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
