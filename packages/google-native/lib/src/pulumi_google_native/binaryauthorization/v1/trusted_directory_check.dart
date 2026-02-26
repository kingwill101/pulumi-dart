// ignore_for_file: unused_element, unnecessary_cast

/// A trusted directory check, which rejects images that do not come from the set of user-configured trusted directories.
class TrustedDirectoryCheck {
  /// List of trusted directory patterns. A pattern is in the form "registry/path/to/directory". The registry domain part is defined as two or more dot-separated words, e.g., `us.pkg.dev`, or `gcr.io`. Additionally, `*` can be used in three ways as wildcards: 1. leading `*` to match varying prefixes in registry subdomain (useful for location prefixes); 2. trailing `*` after registry/ to match varying endings; 3. trailing `**` after registry/ to match "/" as well. For example: -- `gcr.io/my-project/my-repo` is valid to match a single directory -- `*-docker.pkg.dev/my-project/my-repo` or `*.gcr.io/my-project` are valid to match varying prefixes -- `gcr.io/my-project/*` will match all direct directories in `my-project` -- `gcr.io/my-project/**` would match all directories in `my-project` -- `gcr.i*` is not allowed since the registry is not completely specified -- `sub*domain.gcr.io/nginx` is not valid because only leading `*` or trailing `*` are allowed. -- `*pkg.dev/my-project/my-repo` is not valid because leading `*` can only match subdomain -- `**-docker.pkg.dev` is not valid because one leading `*` is allowed, and that it cannot match `/`
  final List<String> trustedDirPatterns;

  TrustedDirectoryCheck({
    required this.trustedDirPatterns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['trustedDirPatterns'] = trustedDirPatterns;
    return map;
  }

  factory TrustedDirectoryCheck.fromMap(Map<String, dynamic> map) {
    return TrustedDirectoryCheck(
      trustedDirPatterns: (map['trustedDirPatterns'] as List).cast<String>(),
    );
  }
}
