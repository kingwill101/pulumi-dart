// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP Proxy configuration for the VM.
class HttpProxyConfigurationResponse {
  /// Gets or sets httpsProxy url.
  final pulumi.Input<String>? httpsProxy;

  /// Creates a new [HttpProxyConfigurationResponse].
  /// [httpsProxy] Gets or sets httpsProxy url.
  const HttpProxyConfigurationResponse({
    this.httpsProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsProxy': ?httpsProxy,
    };
  }

  factory HttpProxyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return HttpProxyConfigurationResponse(
      httpsProxy: (() { final guardedValue = map['httpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
