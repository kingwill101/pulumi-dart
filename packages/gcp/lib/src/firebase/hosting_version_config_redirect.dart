// ignore_for_file: unused_element, unnecessary_cast

class HostingVersionConfigRedirect {
  /// The user-supplied glob to match against the request URL path.
  final String? glob;

  /// The value to put in the HTTP location header of the response.
  /// The location can contain capture group values from the pattern using a : prefix to identify
  /// the segment and an optional * to capture the rest of the URL. For example:
  final String location;

  /// The user-supplied RE2 regular expression to match against the request URL path.
  final String? regex;

  /// The status HTTP code to return in the response. It must be a valid 3xx status code.
  final int statusCode;

  /// Creates a new [HostingVersionConfigRedirect].
  /// [glob] The user-supplied glob to match against the request URL path.
  /// [location] The value to put in the HTTP location header of the response.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  /// [statusCode] The status HTTP code to return in the response. It must be a valid 3xx status code.
  HostingVersionConfigRedirect({
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

  factory HostingVersionConfigRedirect.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfigRedirect(
      glob: map['glob'] == null ? null : map['glob'] as String,
      location: map['location'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
      statusCode: map['statusCode'] as int,
    );
  }
}
