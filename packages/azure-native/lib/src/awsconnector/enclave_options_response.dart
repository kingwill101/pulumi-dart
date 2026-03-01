// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EnclaveOptions
class EnclaveOptionsResponse {
  /// <p>If this parameter is set to <code>true</code>, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.</p>
  final bool? enabled;

  /// Creates a new [EnclaveOptionsResponse].
  /// [enabled] <p>If this parameter is set to <code>true</code>, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.</p>
  EnclaveOptionsResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory EnclaveOptionsResponse.fromMap(Map<String, dynamic> map) {
    return EnclaveOptionsResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

