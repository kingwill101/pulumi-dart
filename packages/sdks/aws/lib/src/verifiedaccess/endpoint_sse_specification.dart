// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointSseSpecification {
  final pulumi.Input<bool>? customerManagedKeyEnabled;
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [EndpointSseSpecification].
  /// [customerManagedKeyEnabled] Optional.
  /// [kmsKeyArn] Optional.
  EndpointSseSpecification({
    this.customerManagedKeyEnabled,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory EndpointSseSpecification.fromMap(Map<String, dynamic> map) {
    return EndpointSseSpecification(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null ? null : ((map['customerManagedKeyEnabled'] as bool).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
    );
  }
}

