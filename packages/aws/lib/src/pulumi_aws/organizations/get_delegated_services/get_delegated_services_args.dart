// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDelegatedServices.
class GetDelegatedServicesArgs {
  /// Account ID number of a delegated administrator account in the organization.
  final pulumi.Input<String> accountId;

  GetDelegatedServicesArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    return map;
  }

  factory GetDelegatedServicesArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegatedServicesArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
    );
  }
}
