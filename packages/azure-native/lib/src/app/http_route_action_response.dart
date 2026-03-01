// ignore_for_file: unused_element, unnecessary_cast


/// Action to perform once matching of routes is done
class HttpRouteActionResponse {
  /// Rewrite prefix, default is no rewrites
  final String? prefixRewrite;

  /// Creates a new [HttpRouteActionResponse].
  /// [prefixRewrite] Rewrite prefix, default is no rewrites
  HttpRouteActionResponse({
    this.prefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixRewrite': ?prefixRewrite,
    };
  }

  factory HttpRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteActionResponse(
      prefixRewrite: map['prefixRewrite'] == null ? null : map['prefixRewrite'] as String,
    );
  }
}

