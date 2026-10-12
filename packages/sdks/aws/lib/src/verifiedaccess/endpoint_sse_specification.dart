// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointSseSpecification {
  /// Whether to encrypt the policy using a customer managed key.
  final pulumi.Input<bool?>? customerManagedKeyEnabled;
  /// ARN of the KMS key.
  final pulumi.Input<String?>? kmsKeyArn;

  /// Creates a new [EndpointSseSpecification].
  /// [customerManagedKeyEnabled] Whether to encrypt the policy using a customer managed key.
  /// [kmsKeyArn] ARN of the KMS key.
  const EndpointSseSpecification({
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
      customerManagedKeyEnabled: (() { final guardedValue = map['customerManagedKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
