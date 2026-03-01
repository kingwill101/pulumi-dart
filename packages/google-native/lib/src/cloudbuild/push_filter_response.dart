// ignore_for_file: unused_element, unnecessary_cast

/// Push contains filter properties for matching GitHub git pushes.
class PushFilterResponse {
  /// Regexes matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String branch;

  /// When true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final bool invertRegex;

  /// Regexes matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String tag;

  /// Creates a new [PushFilterResponse].
  /// [branch] Regexes matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [invertRegex] When true, only trigger a build if the revision regex does NOT match the git_ref regex.
  /// [tag] Regexes matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  PushFilterResponse({
    required this.branch,
    required this.invertRegex,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'invertRegex': invertRegex,
      'tag': tag,
    };
  }

  factory PushFilterResponse.fromMap(Map<String, dynamic> map) {
    return PushFilterResponse(
      branch: map['branch'] as String,
      invertRegex: map['invertRegex'] as bool,
      tag: map['tag'] as String,
    );
  }
}
