// ignore_for_file: unused_element, unnecessary_cast


/// This is optional input that contains the authentication that should be used to generate the namespace.
class CustomLocationPropertiesAuthentication {
  /// The type of the Custom Locations authentication
  final String? type;
  /// The kubeconfig value.
  final String? value;

  /// Creates a new [CustomLocationPropertiesAuthentication].
  /// [type] The type of the Custom Locations authentication
  /// [value] The kubeconfig value.
  CustomLocationPropertiesAuthentication({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory CustomLocationPropertiesAuthentication.fromMap(Map<String, dynamic> map) {
    return CustomLocationPropertiesAuthentication(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

