// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_rewrite_response.dart';

/// A [`Rewrite`](https://firebase.google.com/docs/hosting/full-config#rewrites) specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
class RewriteResponse {
  /// The request will be forwarded to Firebase Dynamic Links.
  final bool dynamicLinks;

  /// The function to proxy requests to. Must match the exported function name exactly.
  final String function;

  /// Optional. Specify a Cloud region for rewritten Functions invocations. If not provided, defaults to us-central1.
  final String functionRegion;

  /// The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  final String glob;

  /// The URL path to rewrite the request to.
  final String path;

  /// The user-supplied RE2 regular expression to match against the request URL path.
  final String regex;

  /// The request will be forwarded to Cloud Run.
  final CloudRunRewriteResponse run;

  /// Creates a new [RewriteResponse].
  /// [dynamicLinks] The request will be forwarded to Firebase Dynamic Links.
  /// [function] The function to proxy requests to. Must match the exported function name exactly.
  /// [functionRegion] Optional. Specify a Cloud region for rewritten Functions invocations. If not provided, defaults to us-central1.
  /// [glob] The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  /// [path] The URL path to rewrite the request to.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  /// [run] The request will be forwarded to Cloud Run.
  RewriteResponse({
    required this.dynamicLinks,
    required this.function,
    required this.functionRegion,
    required this.glob,
    required this.path,
    required this.regex,
    required this.run,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicLinks': dynamicLinks,
      'function': function,
      'functionRegion': functionRegion,
      'glob': glob,
      'path': path,
      'regex': regex,
      'run': run.toMap(),
    };
  }

  factory RewriteResponse.fromMap(Map<String, dynamic> map) {
    return RewriteResponse(
      dynamicLinks: map['dynamicLinks'] as bool,
      function: map['function'] as String,
      functionRegion: map['functionRegion'] as String,
      glob: map['glob'] as String,
      path: map['path'] as String,
      regex: map['regex'] as String,
      run: CloudRunRewriteResponse.fromMap(
        (map['run'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
