// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFirehoseDeliveryStream.
class GetFirehoseDeliveryStreamResult {
  /// ARN of the Kinesis Firehose Delivery Stream (same as <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>).
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  GetFirehoseDeliveryStreamResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    return map;
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
