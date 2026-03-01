// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID of an IPConfiguration resource
class IPConfigurationArmReference {
  /// The Azure Resource ID of an IPConfiguration resource
  final String? resourceId;

  /// Creates a new [IPConfigurationArmReference].
  /// [resourceId] The Azure Resource ID of an IPConfiguration resource
  IPConfigurationArmReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory IPConfigurationArmReference.fromMap(Map<String, dynamic> map) {
    return IPConfigurationArmReference(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

