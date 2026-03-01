// ignore_for_file: unused_element, unnecessary_cast


/// Cloud shell console properties.
class ConsolePropertiesResponse {
  /// The operating system type of the cloud shell.
  final String osType;
  /// Provisioning state of the console.
  final String provisioningState;
  /// Uri of the console.
  final String uri;

  /// Creates a new [ConsolePropertiesResponse].
  /// [osType] The operating system type of the cloud shell.
  /// [provisioningState] Provisioning state of the console.
  /// [uri] Uri of the console.
  ConsolePropertiesResponse({
    required this.osType,
    required this.provisioningState,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': osType,
      'provisioningState': provisioningState,
      'uri': uri,
    };
  }

  factory ConsolePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConsolePropertiesResponse(
      osType: map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
      uri: map['uri'] as String,
    );
  }
}

