// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DelegatedAdministrator.
class DelegatedAdministratorArgs {
  /// The account ID number of the member account in the organization to register as a delegated administrator.
  final pulumi.Input<String> accountId;

  /// The service principal of the AWS service for which you want to make the member account a delegated administrator.
  final pulumi.Input<String> servicePrincipal;

  DelegatedAdministratorArgs({
    required this.accountId,
    required this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['servicePrincipal'] = servicePrincipal;
    return map;
  }

  factory DelegatedAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return DelegatedAdministratorArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      servicePrincipal: pulumi.Input.asInput<String>(map['servicePrincipal']),
    );
  }
}
