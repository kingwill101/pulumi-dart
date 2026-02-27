// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ServiceSpecificCredential.
class ServiceSpecificCredentialArgs {
  /// The number of days until the service specific credential expires. This field is only valid for Bedrock API keys and must be between 1 and 36600 (approximately 100 years). When not specified, the credential will not expire.
  final pulumi.Input<int>? credentialAgeDays;

  /// The name of the AWS service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials. Supported services are `codecommit.amazonaws.com`, `bedrock.amazonaws.com`, and `cassandra.amazonaws.com`.
  final pulumi.Input<String> serviceName;

  /// The status to be assigned to the service-specific credential. Valid values are `Active`, `Inactive`, and `Expired`. Default value is `Active`. Note that `Expired` is only used for read operations and cannot be set manually.
  final pulumi.Input<String>? status;

  /// The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.
  final pulumi.Input<String> userName;

  ServiceSpecificCredentialArgs({
    this.credentialAgeDays,
    required this.serviceName,
    this.status,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialAgeDaysValue = credentialAgeDays;
    if (credentialAgeDaysValue != null) {
      map['credentialAgeDays'] = credentialAgeDaysValue;
    }
    map['serviceName'] = serviceName;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory ServiceSpecificCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ServiceSpecificCredentialArgs(
      credentialAgeDays:
          pulumi.Input.asOptionalInput<int>(map['credentialAgeDays']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
