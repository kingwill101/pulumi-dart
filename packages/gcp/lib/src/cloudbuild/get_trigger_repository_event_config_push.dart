// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerRepositoryEventConfigPush {
  /// Regex of branches to match.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String branch;

  /// If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final bool invertRegex;

  /// Regex of tags to match.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String tag;

  /// Creates a new [GetTriggerRepositoryEventConfigPush].
  /// [branch] Regex of branches to match.
  /// [invertRegex] If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  /// [tag] Regex of tags to match.
  GetTriggerRepositoryEventConfigPush({
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

  factory GetTriggerRepositoryEventConfigPush.fromMap(
      Map<String, dynamic> map) {
    return GetTriggerRepositoryEventConfigPush(
      branch: map['branch'] as String,
      invertRegex: map['invertRegex'] as bool,
      tag: map['tag'] as String,
    );
  }
}
