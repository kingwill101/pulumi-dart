// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustProviderSseSpecification {
  /// Whether a customer managed key is in use.
  final pulumi.Input<bool?>? customerManagedKeyEnabled;
  /// ARN of the KMS key.
  final pulumi.Input<String?>? kmsKeyArn;

  /// Creates a new [TrustProviderSseSpecification].
  /// [customerManagedKeyEnabled] Whether a customer managed key is in use.
  /// [kmsKeyArn] ARN of the KMS key.
  const TrustProviderSseSpecification({
    this.customerManagedKeyEnabled,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory TrustProviderSseSpecification.fromMap(Map<String, dynamic> map) {
    return TrustProviderSseSpecification(
      customerManagedKeyEnabled: (() { final guardedValue = map['customerManagedKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
