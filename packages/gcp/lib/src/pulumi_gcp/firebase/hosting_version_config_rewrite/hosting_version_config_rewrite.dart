// ignore_for_file: unused_element, unnecessary_cast

import '../hosting_version_config_rewrite_run/hosting_version_config_rewrite_run.dart';

class HostingVersionConfigRewrite {
  /// The function to proxy requests to. Must match the exported function name exactly.
  final String? function;

  /// The user-supplied glob to match against the request URL path.
  final String? glob;

  /// The URL path to rewrite the request to.
  final String? path;

  /// The user-supplied RE2 regular expression to match against the request URL path.
  final String? regex;

  /// The request will be forwarded to Cloud Run.
  /// Structure is documented below.
  final HostingVersionConfigRewriteRun? run;

  HostingVersionConfigRewrite({
    this.function,
    this.glob,
    this.path,
    this.regex,
    this.run,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final functionValue = function;
    if (functionValue != null) {
      map['function'] = functionValue;
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

  factory HostingVersionConfigRewrite.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfigRewrite(
      function: map['function'] == null ? null : map['function'] as String,
      glob: map['glob'] == null ? null : map['glob'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
      run: map['run'] == null
          ? null
          : HostingVersionConfigRewriteRun.fromMap(
              (map['run'] as Map).cast<String, dynamic>()),
    );
  }
}
