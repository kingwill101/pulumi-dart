// ignore_for_file: unused_element, unnecessary_cast

class TriggerBitbucketServerTriggerConfigPush {
  /// Regex of branches to match.
  final String? branch;

  /// If true, only trigger a build if the revision regex does NOT match the<span pulumi-lang-nodejs=" gitRef " pulumi-lang-dotnet=" GitRef " pulumi-lang-go=" gitRef " pulumi-lang-python=" git_ref " pulumi-lang-yaml=" gitRef " pulumi-lang-java=" gitRef "> git_ref </span>regex.
  final bool? invertRegex;

  /// Regex of tags to match.
  final String? tag;

  TriggerBitbucketServerTriggerConfigPush({
    this.branch,
    this.invertRegex,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchValue = branch;
    if (branchValue != null) {
      map['branch'] = branchValue;
    }
    final invertRegexValue = invertRegex;
    if (invertRegexValue != null) {
      map['invertRegex'] = invertRegexValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory TriggerBitbucketServerTriggerConfigPush.fromMap(
      Map<String, dynamic> map) {
    return TriggerBitbucketServerTriggerConfigPush(
      branch: map['branch'] == null ? null : map['branch'] as String,
      invertRegex:
          map['invertRegex'] == null ? null : map['invertRegex'] as bool,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
