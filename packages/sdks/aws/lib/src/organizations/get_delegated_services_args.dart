// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_delegated_services_get_delegated_services_args_doc}
/// Arguments for getDelegatedServices.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_delegated_services_get_delegated_services_args_doc}
class GetDelegatedServicesArgs {
  /// Account ID number of a delegated administrator account in the organization.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetDelegatedServicesArgs].
  /// [accountId] Account ID number of a delegated administrator account in the organization.
  GetDelegatedServicesArgs({
    required pulumi.Output<String> accountId,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetDelegatedServicesArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegatedServicesArgs(
      accountId: pulumi.Output.create<String>(map['accountId'] as String),
    );
  }
}

