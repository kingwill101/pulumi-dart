// ignore_for_file: unused_element, unnecessary_cast


/// Specifies Windows operating system settings on the virtual machine.
class WindowsConfigurationResponse {
  /// The OS Type
  /// Expected value is 'Windows'.
  final String osType;

  /// Creates a new [WindowsConfigurationResponse].
  /// [osType] The OS Type
  WindowsConfigurationResponse({
    required this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': osType,
    };
  }

  factory WindowsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WindowsConfigurationResponse(
      osType: map['osType'] as String,
    );
  }
}

