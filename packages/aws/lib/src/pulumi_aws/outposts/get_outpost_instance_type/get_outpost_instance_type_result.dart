// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOutpostInstanceType.
class GetOutpostInstanceTypeResult {
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceType;
  final List<String>? preferredInstanceTypes;
  final String region;

  GetOutpostInstanceTypeResult({
    required this.arn,
    required this.id,
    required this.instanceType,
    this.preferredInstanceTypes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['instanceType'] = instanceType;
    final preferredInstanceTypesValue = preferredInstanceTypes;
    if (preferredInstanceTypesValue != null) {
      map['preferredInstanceTypes'] = preferredInstanceTypesValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetOutpostInstanceTypeResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypeResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      instanceType: map['instanceType'] as String,
      preferredInstanceTypes: map['preferredInstanceTypes'] == null
          ? null
          : (map['preferredInstanceTypes'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
