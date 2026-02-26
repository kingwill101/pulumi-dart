// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getS.
class GetSArgs2 {
  /// A prefix for filtering. It's applied with the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span>.
  final Input<String>? prefix;

  /// The ID of the project. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A regular expression for filtering. It's applied with the <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>. Further information about the syntax can be found [here](https://github.com/google/re2/wiki/Syntax).
  final Input<String>? regex;

  GetSArgs2({
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

  factory GetSArgs2.fromMap(Map<String, dynamic> map) {
    return GetSArgs2(
      prefix: Input.asOptionalInput<String>(map['prefix']),
      project: Input.asOptionalInput<String>(map['project']),
      regex: Input.asOptionalInput<String>(map['regex']),
    );
  }
}
