// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Action to perform once matching of routes is done
class HttpRouteActionResponse {
  /// Rewrite prefix, default is no rewrites
  final pulumi.Input<String?>? prefixRewrite;

  /// Creates a new [HttpRouteActionResponse].
  /// [prefixRewrite] Rewrite prefix, default is no rewrites
  const HttpRouteActionResponse({
    this.prefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixRewrite': ?prefixRewrite,
    };
  }

  factory HttpRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteActionResponse(
      prefixRewrite: (() { final guardedValue = map['prefixRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
