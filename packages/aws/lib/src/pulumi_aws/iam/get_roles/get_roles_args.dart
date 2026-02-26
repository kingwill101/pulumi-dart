// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRoles.
class GetRolesArgs {
  /// Regex string to apply to the IAM roles list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns.
  final Input<String>? nameRegex;

  /// Path prefix for filtering the results. For example, the prefix `/application_abc/component_xyz/` gets all roles whose path starts with `/application_abc/component_xyz/`. If it is not included, it defaults to a slash (`/`), listing all roles. For more details, check out [list-roles in the AWS CLI reference][1].
  final Input<String>? pathPrefix;

  GetRolesArgs({
    this.nameRegex,
    this.pathPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    final pathPrefixValue = pathPrefix;
    if (pathPrefixValue != null) {
      map['pathPrefix'] = pathPrefixValue;
    }
    return map;
  }

  factory GetRolesArgs.fromMap(Map<String, dynamic> map) {
    return GetRolesArgs(
      nameRegex: Input.asOptionalInput<String>(map['nameRegex']),
      pathPrefix: Input.asOptionalInput<String>(map['pathPrefix']),
    );
  }
}
