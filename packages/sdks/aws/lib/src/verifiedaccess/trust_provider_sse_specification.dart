// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustProviderSseSpecification {
  final pulumi.Input<bool>? customerManagedKeyEnabled;
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [TrustProviderSseSpecification].
  /// [customerManagedKeyEnabled] Optional.
  /// [kmsKeyArn] Optional.
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
