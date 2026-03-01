// ignore_for_file: unused_element, unnecessary_cast

class EndpointSseSpecification {
  final bool? customerManagedKeyEnabled;
  final String? kmsKeyArn;

  /// Creates a new [EndpointSseSpecification].
  /// [customerManagedKeyEnabled] Optional.
  /// [kmsKeyArn] Optional.
  EndpointSseSpecification({this.customerManagedKeyEnabled, this.kmsKeyArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory EndpointSseSpecification.fromMap(Map<String, dynamic> map) {
    return EndpointSseSpecification(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null
          ? null
          : map['customerManagedKeyEnabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
