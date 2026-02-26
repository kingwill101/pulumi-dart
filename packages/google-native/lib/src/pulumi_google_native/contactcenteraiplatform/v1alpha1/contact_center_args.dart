// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'admin_user.dart';
import 'instance_config2.dart';
import 'samlparams.dart';

/// The set of arguments for ContactCenter.
class ContactCenterArgs {
  /// Optional. Info about the first admin user, such as given name and family name.
  final Input<AdminUser>? adminUser;

  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  final Input<bool>? ccaipManagedUsers;

  /// Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from the method_signature of Create RPC
  final Input<String> contactCenterId;

  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  final Input<String> customerDomainPrefix;

  /// A user friendly name for the ContactCenter.
  final Input<String> displayName;

  /// The configuration of this instance, it is currently immutable once created.
  final Input<InstanceConfig2>? instanceConfig;

  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  final Input<String>? kmsKey;

  /// Labels as key value pairs
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// name of resource
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. Params that sets up Google as IdP.
  final Input<SAMLParams>? samlParams;

  /// Optional. Email address of the first admin user.
  final Input<String>? userEmail;

  ContactCenterArgs({
    this.adminUser,
    this.ccaipManagedUsers,
    required this.contactCenterId,
    required this.customerDomainPrefix,
    required this.displayName,
    this.instanceConfig,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.samlParams,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminUserValue = adminUser;
    if (adminUserValue != null) {
      map['adminUser'] =
          Input.mapOptionalInputValue<AdminUser, Map<String, dynamic>>(
              adminUserValue, (value) => value.toMap());
    }
    final ccaipManagedUsersValue = ccaipManagedUsers;
    if (ccaipManagedUsersValue != null) {
      map['ccaipManagedUsers'] = ccaipManagedUsersValue;
    }
    map['contactCenterId'] = contactCenterId;
    map['customerDomainPrefix'] = customerDomainPrefix;
    map['displayName'] = displayName;
    final instanceConfigValue = instanceConfig;
    if (instanceConfigValue != null) {
      map['instanceConfig'] =
          Input.mapOptionalInputValue<InstanceConfig2, Map<String, dynamic>>(
              instanceConfigValue, (value) => value.toMap());
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final samlParamsValue = samlParams;
    if (samlParamsValue != null) {
      map['samlParams'] =
          Input.mapOptionalInputValue<SAMLParams, Map<String, dynamic>>(
              samlParamsValue, (value) => value.toMap());
    }
    final userEmailValue = userEmail;
    if (userEmailValue != null) {
      map['userEmail'] = userEmailValue;
    }
    return map;
  }

  factory ContactCenterArgs.fromMap(Map<String, dynamic> map) {
    return ContactCenterArgs(
      adminUser: Input.asOptionalInput<AdminUser>(map['adminUser']),
      ccaipManagedUsers: Input.asOptionalInput<bool>(map['ccaipManagedUsers']),
      contactCenterId: Input.asInput<String>(map['contactCenterId']),
      customerDomainPrefix: Input.asInput<String>(map['customerDomainPrefix']),
      displayName: Input.asInput<String>(map['displayName']),
      instanceConfig:
          Input.asOptionalInput<InstanceConfig2>(map['instanceConfig']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      samlParams: Input.asOptionalInput<SAMLParams>(map['samlParams']),
      userEmail: Input.asOptionalInput<String>(map['userEmail']),
    );
  }
}
