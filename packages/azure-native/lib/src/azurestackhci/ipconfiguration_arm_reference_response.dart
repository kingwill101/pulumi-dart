// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID of an IPConfiguration resource
class IPConfigurationArmReferenceResponse {
  /// The Azure Resource ID of an IPConfiguration resource
  final String? resourceId;

  /// Creates a new [IPConfigurationArmReferenceResponse].
  /// [resourceId] The Azure Resource ID of an IPConfiguration resource
  IPConfigurationArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory IPConfigurationArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationArmReferenceResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

