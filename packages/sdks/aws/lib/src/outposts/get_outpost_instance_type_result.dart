// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutpostInstanceType.
class GetOutpostInstanceTypeResult {
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceType;
  final List<String>? preferredInstanceTypes;
  final String? region;

  /// Creates a new [GetOutpostInstanceTypeResult].
  /// [arn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] Optional.
  /// [preferredInstanceTypes] Optional.
  /// [region] Optional.
  const GetOutpostInstanceTypeResult({
    this.arn,
    this.id,
    this.instanceType,
    this.preferredInstanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'instanceType': ?instanceType,
      'preferredInstanceTypes': ?preferredInstanceTypes,
      'region': ?region,
    };
  }

  factory GetOutpostInstanceTypeResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypeResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredInstanceTypes: (() { final guardedValue = map['preferredInstanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
