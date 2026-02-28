// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_rewrite.dart';

/// A [`Rewrite`](https://firebase.google.com/docs/hosting/full-config#rewrites) specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
class Rewrite {
  /// The request will be forwarded to Firebase Dynamic Links.
  final bool? dynamicLinks;

  /// The function to proxy requests to. Must match the exported function name exactly.
  final String? function;

  /// Optional. Specify a Cloud region for rewritten Functions invocations. If not provided, defaults to us-central1.
  final String? functionRegion;

  /// The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  final String? glob;

  /// The URL path to rewrite the request to.
  final String? path;

  /// The user-supplied RE2 regular expression to match against the request URL path.
  final String? regex;

  /// The request will be forwarded to Cloud Run.
  final CloudRunRewrite? run;

  /// Creates a new [Rewrite].
  /// [dynamicLinks] The request will be forwarded to Firebase Dynamic Links.
  /// [function] The function to proxy requests to. Must match the exported function name exactly.
  /// [functionRegion] Optional. Specify a Cloud region for rewritten Functions invocations. If not provided, defaults to us-central1.
  /// [glob] The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  /// [path] The URL path to rewrite the request to.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  /// [run] The request will be forwarded to Cloud Run.
  Rewrite({
    this.dynamicLinks,
    this.function,
    this.functionRegion,
    this.glob,
    this.path,
    this.regex,
    this.run,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dynamicLinksValue = dynamicLinks;
    if (dynamicLinksValue != null) {
      map['dynamicLinks'] = dynamicLinksValue;
    }
    final functionValue = function;
    if (functionValue != null) {
      map['function'] = functionValue;
    }
    final functionRegionValue = functionRegion;
    if (functionRegionValue != null) {
      map['functionRegion'] = functionRegionValue;
    }
    final globValue = glob;
    if (globValue != null) {
      map['glob'] = globValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    final runValue = run;
    if (runValue != null) {
      map['run'] = runValue.toMap();
    }
    return map;
  }

  factory Rewrite.fromMap(Map<String, dynamic> map) {
    return Rewrite(
      dynamicLinks:
          map['dynamicLinks'] == null ? null : map['dynamicLinks'] as bool,
      function: map['function'] == null ? null : map['function'] as String,
      functionRegion: map['functionRegion'] == null
          ? null
          : map['functionRegion'] as String,
      glob: map['glob'] == null ? null : map['glob'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
      run: map['run'] == null
          ? null
          : CloudRunRewrite.fromMap(
              (map['run'] as Map).cast<String, dynamic>()),
    );
  }
}
