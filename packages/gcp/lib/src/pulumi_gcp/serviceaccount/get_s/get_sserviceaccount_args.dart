// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getS.
class GetSServiceaccountArgs {
  /// A prefix for filtering. It's applied with the `account_id`.
  final pulumi.Input<String>? prefix;

  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A regular expression for filtering. It's applied with the `email`. Further information about the syntax can be found [here](https://github.com/google/re2/wiki/Syntax).
  final pulumi.Input<String>? regex;

  GetSServiceaccountArgs({
    this.prefix,
    this.project,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    return map;
  }

  factory GetSServiceaccountArgs.fromMap(Map<String, dynamic> map) {
    return GetSServiceaccountArgs(
      prefix: pulumi.Input.asOptionalInput<String>(map['prefix']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regex: pulumi.Input.asOptionalInput<String>(map['regex']),
    );
  }
}
