// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustProviderSseSpecification {
  final pulumi.Input<bool>? customerManagedKeyEnabled;
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [TrustProviderSseSpecification].
  /// [customerManagedKeyEnabled] Optional.
  /// [kmsKeyArn] Optional.
  TrustProviderSseSpecification({
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
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null ? null : (map['customerManagedKeyEnabled'] as bool).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
    );
  }
}

