// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDelegatedServices.
class GetDelegatedServicesArgs {
  /// Account ID number of a delegated administrator account in the organization.
  final Input<String> accountId;

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
      accountId: Input.asInput<String>(map['accountId']),
    );
  }
}
