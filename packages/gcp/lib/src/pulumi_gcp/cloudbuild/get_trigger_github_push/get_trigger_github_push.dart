// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerGithubPush {
  /// Regex of branches to match.  Specify only one of branch or tag.
  final String branch;

  /// When true, only trigger a build if the revision regex does NOT match the<span pulumi-lang-nodejs=" gitRef " pulumi-lang-dotnet=" GitRef " pulumi-lang-go=" gitRef " pulumi-lang-python=" git_ref " pulumi-lang-yaml=" gitRef " pulumi-lang-java=" gitRef "> git_ref </span>regex.
  final bool invertRegex;

  /// Regex of tags to match.  Specify only one of branch or tag.
  final String tag;

  GetTriggerGithubPush({
    required this.branch,
    required this.invertRegex,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branch'] = branch;
    map['invertRegex'] = invertRegex;
    map['tag'] = tag;
    return map;
  }

  factory GetTriggerGithubPush.fromMap(Map<String, dynamic> map) {
    return GetTriggerGithubPush(
      branch: map['branch'] as String,
      invertRegex: map['invertRegex'] as bool,
      tag: map['tag'] as String,
    );
  }
}
