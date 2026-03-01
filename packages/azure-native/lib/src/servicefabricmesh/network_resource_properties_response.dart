// ignore_for_file: unused_element, unnecessary_cast


/// Describes properties of a network resource.
class NetworkResourcePropertiesResponse {
  /// User readable description of the network.
  final String? description;
  /// The type of a Service Fabric container network.
  /// Expected value is 'NetworkResourceProperties'.
  final String kind;
  /// State of the resource.
  final String provisioningState;
  /// Status of the network.
  final String status;
  /// Gives additional information about the current status of the network.
  final String statusDetails;

  /// Creates a new [NetworkResourcePropertiesResponse].
  /// [description] User readable description of the network.
  /// [kind] The type of a Service Fabric container network.
  /// [provisioningState] State of the resource.
  /// [status] Status of the network.
  /// [statusDetails] Gives additional information about the current status of the network.
  NetworkResourcePropertiesResponse({
    this.description,
    required this.kind,
    required this.provisioningState,
    required this.status,
    required this.statusDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kind': kind,
      'provisioningState': provisioningState,
      'status': status,
      'statusDetails': statusDetails,
    };
  }

  factory NetworkResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResourcePropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      kind: map['kind'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
    );
  }
}

