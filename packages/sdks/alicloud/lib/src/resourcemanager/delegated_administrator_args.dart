// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_delegated_administrator_delegated_administrator_args_doc}
/// The set of arguments for DelegatedAdministrator.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_delegated_administrator_delegated_administrator_args_doc}
class DelegatedAdministratorArgs {
  /// The Alibaba Cloud account ID of the member in the resource directory.
  final pulumi.Input<String> accountId;
  /// The identifier of the trusted service.
  final pulumi.Input<String> servicePrincipal;

  /// Creates a new [DelegatedAdministratorArgs].
  /// [accountId] The Alibaba Cloud account ID of the member in the resource directory.
  /// [servicePrincipal] The identifier of the trusted service.
  DelegatedAdministratorArgs({
    required this.accountId,
    required this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'servicePrincipal': servicePrincipal,
    };
  }

  factory DelegatedAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return DelegatedAdministratorArgs(
      accountId: (map['accountId'] as String).input(),
      servicePrincipal: (map['servicePrincipal'] as String).input(),
    );
  }
}

