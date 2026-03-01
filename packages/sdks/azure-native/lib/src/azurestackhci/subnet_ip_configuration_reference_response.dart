// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Network Interface.
class SubnetIpConfigurationReferenceResponse {
  /// The Azure Resource ID for a Network Interface.
  final String? id;

  /// Creates a new [SubnetIpConfigurationReferenceResponse].
  /// [id] The Azure Resource ID for a Network Interface.
  SubnetIpConfigurationReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubnetIpConfigurationReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SubnetIpConfigurationReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

