// ignore_for_file: unused_element, unnecessary_cast


/// A set header action sets a header and forwards the request to the backend. This can be used to trigger custom protection implemented on the backend.
class GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction {
  /// Optional. The header key to set in the request to the backend server.
  final String? key;
  /// Optional. The header value to set in the request to the backend server.
  final String? value;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction].
  /// [key] Optional. The header key to set in the request to the backend server.
  /// [value] Optional. The header value to set in the request to the backend server.
  GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

