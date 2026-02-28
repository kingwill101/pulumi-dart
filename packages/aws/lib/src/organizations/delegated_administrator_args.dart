// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_delegated_administrator_delegated_administrator_args_doc}
/// The set of arguments for DelegatedAdministrator.
/// {@endtemplate}
/// {@macro pulumi_organizations_delegated_administrator_delegated_administrator_args_doc}
class DelegatedAdministratorArgs {
  /// The account ID number of the member account in the organization to register as a delegated administrator.
  final pulumi.Input<String> accountId;

  /// The service principal of the AWS service for which you want to make the member account a delegated administrator.
  final pulumi.Input<String> servicePrincipal;

  /// Creates a new [DelegatedAdministratorArgs].
  /// [accountId] The account ID number of the member account in the organization to register as a delegated administrator.
  /// [servicePrincipal] The service principal of the AWS service for which you want to make the member account a delegated administrator.
  DelegatedAdministratorArgs({
    required String accountId,
    required String servicePrincipal,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        servicePrincipal = pulumi.Input.asInput<String>(servicePrincipal);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['servicePrincipal'] = servicePrincipal;
    return map;
  }

  factory DelegatedAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return DelegatedAdministratorArgs(
      accountId: map['accountId'] as String,
      servicePrincipal: map['servicePrincipal'] as String,
    );
  }
}
