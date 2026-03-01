// ignore_for_file: unused_element, unnecessary_cast


/// publisher properties.
class PublisherPropertiesFormatResponse {
  /// The provisioning state of the publisher resource.
  final String provisioningState;
  /// The publisher scope.
  final String? scope;

  /// Creates a new [PublisherPropertiesFormatResponse].
  /// [provisioningState] The provisioning state of the publisher resource.
  /// [scope] The publisher scope.
  PublisherPropertiesFormatResponse({
    required this.provisioningState,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'scope': ?scope,
    };
  }

  factory PublisherPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return PublisherPropertiesFormatResponse(
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

