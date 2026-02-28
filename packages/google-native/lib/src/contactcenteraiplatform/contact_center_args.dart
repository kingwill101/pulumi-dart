// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_user.dart';
import 'instance_config.dart';
import 'samlparams.dart';

/// {@template pulumi_contactcenteraiplatform_v1alpha1_contact_center_args_doc}
/// The set of arguments for ContactCenter.
/// {@endtemplate}
/// {@macro pulumi_contactcenteraiplatform_v1alpha1_contact_center_args_doc}
class ContactCenterArgs {
  /// Optional. Info about the first admin user, such as given name and family name.
  final pulumi.Input<AdminUser>? adminUser;
  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  final pulumi.Input<bool>? ccaipManagedUsers;
  /// Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from the method_signature of Create RPC
  final pulumi.Input<String> contactCenterId;
  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  final pulumi.Input<String> customerDomainPrefix;
  /// A user friendly name for the ContactCenter.
  final pulumi.Input<String> displayName;
  /// The configuration of this instance, it is currently immutable once created.
  final pulumi.Input<InstanceConfig>? instanceConfig;
  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  final pulumi.Input<String>? kmsKey;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// name of resource
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. Params that sets up Google as IdP.
  final pulumi.Input<SAMLParams>? samlParams;
  /// Optional. Email address of the first admin user.
  final pulumi.Input<String>? userEmail;

  /// Creates a new [ContactCenterArgs].
  /// [adminUser] Optional. Info about the first admin user, such as given name and family name.
  /// [ccaipManagedUsers] Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  /// [contactCenterId] Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from the method_signature of Create RPC
  /// [customerDomainPrefix] Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// [displayName] A user friendly name for the ContactCenter.
  /// [instanceConfig] The configuration of this instance, it is currently immutable once created.
  /// [kmsKey] Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [name] name of resource
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [samlParams] Optional. Params that sets up Google as IdP.
  /// [userEmail] Optional. Email address of the first admin user.
  ContactCenterArgs({
    AdminUser? adminUser,
    bool? ccaipManagedUsers,
    required String contactCenterId,
    required String customerDomainPrefix,
    required String displayName,
    InstanceConfig? instanceConfig,
    String? kmsKey,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? requestId,
    SAMLParams? samlParams,
    String? userEmail,
  }) :
      adminUser = pulumi.Input.asOptionalInput<AdminUser>(adminUser),
      ccaipManagedUsers = pulumi.Input.asOptionalInput<bool>(ccaipManagedUsers),
      contactCenterId = pulumi.Input.asInput<String>(contactCenterId),
      customerDomainPrefix = pulumi.Input.asInput<String>(customerDomainPrefix),
      displayName = pulumi.Input.asInput<String>(displayName),
      instanceConfig = pulumi.Input.asOptionalInput<InstanceConfig>(instanceConfig),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      samlParams = pulumi.Input.asOptionalInput<SAMLParams>(samlParams),
      userEmail = pulumi.Input.asOptionalInput<String>(userEmail);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUser': ?pulumi.Input.mapOptionalInputValue<AdminUser, Map<String, dynamic>>(adminUser, (value) => value.toMap()),
      'ccaipManagedUsers': ?ccaipManagedUsers,
      'contactCenterId': contactCenterId,
      'customerDomainPrefix': customerDomainPrefix,
      'displayName': displayName,
      'instanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConfig, Map<String, dynamic>>(instanceConfig, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'samlParams': ?pulumi.Input.mapOptionalInputValue<SAMLParams, Map<String, dynamic>>(samlParams, (value) => value.toMap()),
      'userEmail': ?userEmail,
    };
  }

  factory ContactCenterArgs.fromMap(Map<String, dynamic> map) {
    return ContactCenterArgs(
      adminUser: map['adminUser'] == null ? null : AdminUser.fromMap((map['adminUser'] as Map).cast<String, dynamic>()),
      ccaipManagedUsers: map['ccaipManagedUsers'] == null ? null : map['ccaipManagedUsers'] as bool,
      contactCenterId: map['contactCenterId'] as String,
      customerDomainPrefix: map['customerDomainPrefix'] as String,
      displayName: map['displayName'] as String,
      instanceConfig: map['instanceConfig'] == null ? null : InstanceConfig.fromMap((map['instanceConfig'] as Map).cast<String, dynamic>()),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      samlParams: map['samlParams'] == null ? null : SAMLParams.fromMap((map['samlParams'] as Map).cast<String, dynamic>()),
      userEmail: map['userEmail'] == null ? null : map['userEmail'] as String,
    );
  }
}

