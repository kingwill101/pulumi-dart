// ignore_for_file: unused_element, unnecessary_cast

import 'admin_user_response.dart';
import 'instance_config_response_contactcenteraiplatform_v1alpha1.dart';
import 'samlparams_response.dart';
import 'uris_response.dart';

/// Result data returned by getContactCenter.
class GetContactCenterResult {
  /// Optional. Info about the first admin user, such as given name and family name.
  final AdminUserResponse adminUser;

  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  final bool ccaipManagedUsers;

  /// [Output only] Create time stamp
  final String createTime;

  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  final String customerDomainPrefix;

  /// A user friendly name for the ContactCenter.
  final String displayName;

  /// The configuration of this instance, it is currently immutable once created.
  final InstanceConfigResponseContactcenteraiplatformV1alpha1 instanceConfig;

  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  final String kmsKey;

  /// Labels as key value pairs
  final Map<String, String> labels;

  /// name of resource
  final String name;

  /// Optional. Params that sets up Google as IdP.
  final SAMLParamsResponse samlParams;

  /// The state of this contact center.
  final String state;

  /// [Output only] Update time stamp
  final String updateTime;

  /// URIs to access the deployed ContactCenters.
  final URIsResponse uris;

  /// Optional. Email address of the first admin user.
  final String userEmail;

  GetContactCenterResult({
    required this.adminUser,
    required this.ccaipManagedUsers,
    required this.createTime,
    required this.customerDomainPrefix,
    required this.displayName,
    required this.instanceConfig,
    required this.kmsKey,
    required this.labels,
    required this.name,
    required this.samlParams,
    required this.state,
    required this.updateTime,
    required this.uris,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminUser'] = adminUser.toMap();
    map['ccaipManagedUsers'] = ccaipManagedUsers;
    map['createTime'] = createTime;
    map['customerDomainPrefix'] = customerDomainPrefix;
    map['displayName'] = displayName;
    map['instanceConfig'] = instanceConfig.toMap();
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['name'] = name;
    map['samlParams'] = samlParams.toMap();
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['uris'] = uris.toMap();
    map['userEmail'] = userEmail;
    return map;
  }

  factory GetContactCenterResult.fromMap(Map<String, dynamic> map) {
    return GetContactCenterResult(
      adminUser: AdminUserResponse.fromMap(
          (map['adminUser'] as Map).cast<String, dynamic>()),
      ccaipManagedUsers: map['ccaipManagedUsers'] as bool,
      createTime: map['createTime'] as String,
      customerDomainPrefix: map['customerDomainPrefix'] as String,
      displayName: map['displayName'] as String,
      instanceConfig:
          InstanceConfigResponseContactcenteraiplatformV1alpha1.fromMap(
              (map['instanceConfig'] as Map).cast<String, dynamic>()),
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      samlParams: SAMLParamsResponse.fromMap(
          (map['samlParams'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      uris: URIsResponse.fromMap((map['uris'] as Map).cast<String, dynamic>()),
      userEmail: map['userEmail'] as String,
    );
  }
}
