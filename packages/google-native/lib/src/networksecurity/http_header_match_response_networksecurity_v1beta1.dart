// ignore_for_file: unused_element, unnecessary_cast


/// Specification of HTTP header match attributes.
class HttpHeaderMatchResponseNetworksecurityV1beta1 {
  /// The name of the HTTP header to match. For matching against the HTTP request's authority, use a headerMatch with the header name ":authority". For matching a request's method, use the headerName ":method".
  final String headerName;
  /// The value of the header must match the regular expression specified in regexMatch. For regular expression grammar, please see: en.cppreference.com/w/cpp/regex/ecmascript For matching against a port specified in the HTTP request, use a headerMatch with headerName set to Host and a regular expression that satisfies the RFC2616 Host header's port specifier.
  final String regexMatch;

  /// Creates a new [HttpHeaderMatchResponseNetworksecurityV1beta1].
  /// [headerName] The name of the HTTP header to match. For matching against the HTTP request's authority, use a headerMatch with the header name ":authority". For matching a request's method, use the headerName ":method".
  /// [regexMatch] The value of the header must match the regular expression specified in regexMatch. For regular expression grammar, please see: en.cppreference.com/w/cpp/regex/ecmascript For matching against a port specified in the HTTP request, use a headerMatch with headerName set to Host and a regular expression that satisfies the RFC2616 Host header's port specifier.
  HttpHeaderMatchResponseNetworksecurityV1beta1({
    required this.headerName,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'regexMatch': regexMatch,
    };
  }

  factory HttpHeaderMatchResponseNetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpHeaderMatchResponseNetworksecurityV1beta1(
      headerName: map['headerName'] as String,
      regexMatch: map['regexMatch'] as String,
    );
  }
}

