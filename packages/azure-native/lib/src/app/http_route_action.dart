// ignore_for_file: unused_element, unnecessary_cast


/// Action to perform once matching of routes is done
class HttpRouteAction {
  /// Rewrite prefix, default is no rewrites
  final String? prefixRewrite;

  /// Creates a new [HttpRouteAction].
  /// [prefixRewrite] Rewrite prefix, default is no rewrites
  HttpRouteAction({
    this.prefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixRewrite': ?prefixRewrite,
    };
  }

  factory HttpRouteAction.fromMap(Map<String, dynamic> map) {
    return HttpRouteAction(
      prefixRewrite: map['prefixRewrite'] == null ? null : map['prefixRewrite'] as String,
    );
  }
}

