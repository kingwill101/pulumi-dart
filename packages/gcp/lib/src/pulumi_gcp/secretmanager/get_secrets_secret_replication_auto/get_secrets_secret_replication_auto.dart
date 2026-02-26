// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secrets_secret_replication_auto_customer_managed_encryption/get_secrets_secret_replication_auto_customer_managed_encryption.dart';

class GetSecretsSecretReplicationAuto {
  /// Customer Managed Encryption for the secret.
  /// Structure is documented below.
  final List<GetSecretsSecretReplicationAutoCustomerManagedEncryption>
      customerManagedEncryptions;

  GetSecretsSecretReplicationAuto({
    required this.customerManagedEncryptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerManagedEncryptions'] = Input.encodeList<
            GetSecretsSecretReplicationAutoCustomerManagedEncryption,
            Map<String, dynamic>>(
        customerManagedEncryptions, (value) => value.toMap());
    return map;
  }

  factory GetSecretsSecretReplicationAuto.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretReplicationAuto(
      customerManagedEncryptions: Input.decodeList<
              GetSecretsSecretReplicationAutoCustomerManagedEncryption>(
          map['customerManagedEncryptions'],
          (value) =>
              GetSecretsSecretReplicationAutoCustomerManagedEncryption.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
