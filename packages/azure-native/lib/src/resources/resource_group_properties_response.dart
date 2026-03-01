// ignore_for_file: unused_element, unnecessary_cast


/// The resource group properties.
class ResourceGroupPropertiesResponse {
  /// The provisioning state.
  final String provisioningState;

  /// Creates a new [ResourceGroupPropertiesResponse].
  /// [provisioningState] The provisioning state.
  ResourceGroupPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory ResourceGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
    );
  }
}

