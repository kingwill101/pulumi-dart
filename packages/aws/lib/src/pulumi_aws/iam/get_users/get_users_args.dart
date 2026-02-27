// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUsers.
class GetUsersArgs {
  /// Regex string to apply to the IAM users list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns.
  final pulumi.Input<String>? nameRegex;

  /// Path prefix for filtering the results. For example, the prefix `/division_abc/subdivision_xyz/` gets all users whose path starts with `/division_abc/subdivision_xyz/`. If it is not included, it defaults to a slash (`/`), listing all users. For more details, check out [list-users in the AWS CLI reference][1].
  final pulumi.Input<String>? pathPrefix;

  GetUsersArgs({
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

  factory GetUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs(
      nameRegex: pulumi.Input.asOptionalInput<String>(map['nameRegex']),
      pathPrefix: pulumi.Input.asOptionalInput<String>(map['pathPrefix']),
    );
  }
}
