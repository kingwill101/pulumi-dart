// ignore_for_file: unused_element, unnecessary_cast


/// AML token compute identity definition.
class AmlTokenComputeIdentityResponse {
  /// Monitor compute identity type enum.
  /// Expected value is 'AmlToken'.
  final String computeIdentityType;

  /// Creates a new [AmlTokenComputeIdentityResponse].
  /// [computeIdentityType] Monitor compute identity type enum.
  AmlTokenComputeIdentityResponse({
    required this.computeIdentityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentityType': computeIdentityType,
    };
  }

  factory AmlTokenComputeIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AmlTokenComputeIdentityResponse(
      computeIdentityType: map['computeIdentityType'] as String,
    );
  }
}

