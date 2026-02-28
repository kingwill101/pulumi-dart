// ignore_for_file: unused_element, unnecessary_cast

/// A [`Redirect`](https://firebase.google.com/docs/hosting/full-config#redirects) specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond with a redirect to the specified destination path.
class Redirect {
  /// The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  final String? glob;

  /// The value to put in the HTTP location header of the response. The location can contain capture group values from the pattern using a `:` prefix to identify the segment and an optional `*` to capture the rest of the URL. For example: "glob": "/:capture*", "statusCode": 301, "location": "https://example.com/foo/:capture"
  final String location;

  /// The user-supplied RE2 regular expression to match against the request URL path.
  final String? regex;

  /// The status HTTP code to return in the response. It must be a valid 3xx status code.
  final int statusCode;

  /// Creates a new [Redirect].
  /// [glob] The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  /// [location] The value to put in the HTTP location header of the response. The location can contain capture group values from the pattern using a `:` prefix to identify the segment and an optional `*` to capture the rest of the URL. For example: "glob": "/:capture*", "statusCode": 301, "location": "https://example.com/foo/:capture"
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  /// [statusCode] The status HTTP code to return in the response. It must be a valid 3xx status code.
  Redirect({
    this.glob,
    required this.location,
    this.regex,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final globValue = glob;
    if (globValue != null) {
      map['glob'] = globValue;
    }
    map['location'] = location;
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    map['statusCode'] = statusCode;
    return map;
  }

  factory Redirect.fromMap(Map<String, dynamic> map) {
    return Redirect(
      glob: map['glob'] == null ? null : map['glob'] as String,
      location: map['location'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
      statusCode: map['statusCode'] as int,
    );
  }
}
