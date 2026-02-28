// ignore_for_file: unused_element, unnecessary_cast

class RepositoryUri {
  /// (Output)
  /// API is the URI for API access.
  final String? api;

  /// (Output)
  /// git_https is the git HTTPS URI for git operations.
  final String? gitHttps;

  /// (Output)
  /// HTML is the URI for the user to view the repository in a browser.
  final String? html;

  /// Creates a new [RepositoryUri].
  /// [api] (Output)
  /// [gitHttps] (Output)
  /// [html] (Output)
  RepositoryUri({
    this.api,
    this.gitHttps,
    this.html,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiValue = api;
    if (apiValue != null) {
      map['api'] = apiValue;
    }
    final gitHttpsValue = gitHttps;
    if (gitHttpsValue != null) {
      map['gitHttps'] = gitHttpsValue;
    }
    final htmlValue = html;
    if (htmlValue != null) {
      map['html'] = htmlValue;
    }
    return map;
  }

  factory RepositoryUri.fromMap(Map<String, dynamic> map) {
    return RepositoryUri(
      api: map['api'] == null ? null : map['api'] as String,
      gitHttps: map['gitHttps'] == null ? null : map['gitHttps'] as String,
      html: map['html'] == null ? null : map['html'] as String,
    );
  }
}
