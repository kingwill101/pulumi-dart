// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Action to perform once matching of routes is done
class HttpRouteAction {
  /// Rewrite prefix, default is no rewrites
  final pulumi.Input<String>? prefixRewrite;

  /// Creates a new [HttpRouteAction].
  /// [prefixRewrite] Rewrite prefix, default is no rewrites
  const HttpRouteAction({
    this.prefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixRewrite': ?prefixRewrite,
    };
  }

  factory HttpRouteAction.fromMap(Map<String, dynamic> map) {
    return HttpRouteAction(
      prefixRewrite: (() { final guardedValue = map['prefixRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

