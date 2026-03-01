// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to Aks Resource
class AksProfileResponse {
  /// Resource Id of AKS Resource
  final String id;

  /// Creates a new [AksProfileResponse].
  /// [id] Resource Id of AKS Resource
  AksProfileResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AksProfileResponse.fromMap(Map<String, dynamic> map) {
    return AksProfileResponse(
      id: map['id'] as String,
    );
  }
}

