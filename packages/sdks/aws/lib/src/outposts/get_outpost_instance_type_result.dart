// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutpostInstanceType.
class GetOutpostInstanceTypeResult {
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceType;
  final List<String>? preferredInstanceTypes;
  final String region;

  /// Creates a new [GetOutpostInstanceTypeResult].
  /// [arn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] Required.
  /// [preferredInstanceTypes] Optional.
  /// [region] Required.
  const GetOutpostInstanceTypeResult({
    required this.arn,
    required this.id,
    required this.instanceType,
    this.preferredInstanceTypes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'instanceType': instanceType,
      'preferredInstanceTypes': ?preferredInstanceTypes,
      'region': region,
    };
  }

  factory GetOutpostInstanceTypeResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypeResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      instanceType: map['instanceType'] as String,
      preferredInstanceTypes: (() { final guardedValue = map['preferredInstanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: map['region'] as String,
    );
  }
}
