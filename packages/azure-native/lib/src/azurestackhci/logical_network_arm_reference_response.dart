// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Logical Network.
class LogicalNetworkArmReferenceResponse {
  /// The Azure Resource ID for a Logical Network.
  final String? id;

  /// Creates a new [LogicalNetworkArmReferenceResponse].
  /// [id] The Azure Resource ID for a Logical Network.
  LogicalNetworkArmReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory LogicalNetworkArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkArmReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

