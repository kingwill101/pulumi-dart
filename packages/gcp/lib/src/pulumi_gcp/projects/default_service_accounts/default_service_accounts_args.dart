// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DefaultServiceAccounts.
class DefaultServiceAccountsArgs {
  /// The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  final Input<String> action;

  /// The project ID where service accounts are created.
  final Input<String> project;

  /// The action to be performed in the default service accounts on the resource destroy.
  /// Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE.
  /// If set to REVERT it attempts to restore all default SAs but the DEPRIVILEGE action.
  /// If set to REVERT_AND_IGNORE_FAILURE it is the same behavior as REVERT but ignores errors returned by the API.
  final Input<String>? restorePolicy;

  DefaultServiceAccountsArgs({
    required this.action,
    required this.project,
    this.restorePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['project'] = project;
    final restorePolicyValue = restorePolicy;
    if (restorePolicyValue != null) {
      map['restorePolicy'] = restorePolicyValue;
    }
    return map;
  }

  factory DefaultServiceAccountsArgs.fromMap(Map<String, dynamic> map) {
    return DefaultServiceAccountsArgs(
      action: Input.asInput<String>(map['action']),
      project: Input.asInput<String>(map['project']),
      restorePolicy: Input.asOptionalInput<String>(map['restorePolicy']),
    );
  }
}
