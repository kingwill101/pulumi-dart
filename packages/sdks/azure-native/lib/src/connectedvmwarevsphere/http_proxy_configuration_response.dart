// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP Proxy configuration for the VM.
class HttpProxyConfigurationResponse {
  /// Gets or sets httpsProxy url.
  final pulumi.Input<String>? httpsProxy;

  /// Creates a new [HttpProxyConfigurationResponse].
  /// [httpsProxy] Gets or sets httpsProxy url.
  HttpProxyConfigurationResponse({
    this.httpsProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsProxy': ?httpsProxy,
    };
  }

  factory HttpProxyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return HttpProxyConfigurationResponse(
      httpsProxy: map['httpsProxy'] == null ? null : (map['httpsProxy'] as String).input(),
    );
  }
}

