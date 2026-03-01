// ignore_for_file: unused_element, unnecessary_cast


/// The type of placement policy for a service fabric service. Following are the possible values.
class ServicePlacementNonPartiallyPlaceServicePolicyResponse {
  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'NonPartiallyPlaceService'.
  final String type;

  /// Creates a new [ServicePlacementNonPartiallyPlaceServicePolicyResponse].
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementNonPartiallyPlaceServicePolicyResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServicePlacementNonPartiallyPlaceServicePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ServicePlacementNonPartiallyPlaceServicePolicyResponse(
      type: map['type'] as String,
    );
  }
}

