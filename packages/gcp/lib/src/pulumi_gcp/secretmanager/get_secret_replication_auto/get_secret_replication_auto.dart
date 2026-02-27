// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_secret_replication_auto_customer_managed_encryption/get_secret_replication_auto_customer_managed_encryption.dart';

class GetSecretReplicationAuto {
  /// The customer-managed encryption configuration of the Secret.
  /// If no configuration is provided, Google-managed default
  /// encryption is used.
  final List<GetSecretReplicationAutoCustomerManagedEncryption>
      customerManagedEncryptions;

  GetSecretReplicationAuto({
    required this.customerManagedEncryptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerManagedEncryptions'] = pulumi.Input.encodeList<
            GetSecretReplicationAutoCustomerManagedEncryption,
            Map<String, dynamic>>(
        customerManagedEncryptions, (value) => value.toMap());
    return map;
  }

  factory GetSecretReplicationAuto.fromMap(Map<String, dynamic> map) {
    return GetSecretReplicationAuto(
      customerManagedEncryptions: pulumi.Input.decodeList<
              GetSecretReplicationAutoCustomerManagedEncryption>(
          map['customerManagedEncryptions'],
          (value) => GetSecretReplicationAutoCustomerManagedEncryption.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
