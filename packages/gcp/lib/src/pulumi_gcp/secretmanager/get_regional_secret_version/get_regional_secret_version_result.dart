// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_regional_secret_version_customer_managed_encryption/get_regional_secret_version_customer_managed_encryption.dart';

/// Result data returned by getRegionalSecretVersion.
class GetRegionalSecretVersionResult {
  /// The time at which the regional secret was created.
  final String createTime;

  /// The customer-managed encryption configuration of the regional secret. Structure is documented below.
  final List<GetRegionalSecretVersionCustomerManagedEncryption>
      customerManagedEncryptions;

  /// The time at which the regional secret was destroyed. Only present if state is DESTROYED.
  final String destroyTime;

  /// True if the current state of the regional SecretVersion is enabled.
  final bool enabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isSecretDataBase64;
  final String location;

  /// The resource name of the regional SecretVersion. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final String name;
  final String project;
  final String secret;

  /// The secret data. No larger than 64KiB.
  final String secretData;
  final String version;

  GetRegionalSecretVersionResult({
    required this.createTime,
    required this.customerManagedEncryptions,
    required this.destroyTime,
    required this.enabled,
    required this.id,
    this.isSecretDataBase64,
    required this.location,
    required this.name,
    required this.project,
    required this.secret,
    required this.secretData,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['customerManagedEncryptions'] = Input.encodeList<
            GetRegionalSecretVersionCustomerManagedEncryption,
            Map<String, dynamic>>(
        customerManagedEncryptions, (value) => value.toMap());
    map['destroyTime'] = destroyTime;
    map['enabled'] = enabled;
    map['id'] = id;
    final isSecretDataBase64Value = isSecretDataBase64;
    if (isSecretDataBase64Value != null) {
      map['isSecretDataBase64'] = isSecretDataBase64Value;
    }
    map['location'] = location;
    map['name'] = name;
    map['project'] = project;
    map['secret'] = secret;
    map['secretData'] = secretData;
    map['version'] = version;
    return map;
  }

  factory GetRegionalSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionResult(
      createTime: map['createTime'] as String,
      customerManagedEncryptions:
          Input.decodeList<GetRegionalSecretVersionCustomerManagedEncryption>(
              map['customerManagedEncryptions'],
              (value) =>
                  GetRegionalSecretVersionCustomerManagedEncryption.fromMap(
                      (value as Map).cast<String, dynamic>())),
      destroyTime: map['destroyTime'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      isSecretDataBase64: map['isSecretDataBase64'] == null
          ? null
          : map['isSecretDataBase64'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      secretData: map['secretData'] as String,
      version: map['version'] as String,
    );
  }
}
