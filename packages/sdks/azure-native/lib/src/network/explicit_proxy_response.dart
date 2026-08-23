// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Explicit Proxy Settings in Firewall Policy.
class ExplicitProxyResponse {
  /// When set to true, explicit proxy mode is enabled.
  final pulumi.Input<bool>? enableExplicitProxy;
  /// When set to true, pac file port and url needs to be provided.
  final pulumi.Input<bool>? enablePacFile;
  /// Port number for explicit proxy http protocol, cannot be greater than 64000.
  final pulumi.Input<int>? httpPort;
  /// Port number for explicit proxy https protocol, cannot be greater than 64000.
  final pulumi.Input<int>? httpsPort;
  /// SAS URL for PAC file.
  final pulumi.Input<String>? pacFile;
  /// Port number for firewall to serve PAC file.
  final pulumi.Input<int>? pacFilePort;

  /// Creates a new [ExplicitProxyResponse].
  /// [enableExplicitProxy] When set to true, explicit proxy mode is enabled.
  /// [enablePacFile] When set to true, pac file port and url needs to be provided.
  /// [httpPort] Port number for explicit proxy http protocol, cannot be greater than 64000.
  /// [httpsPort] Port number for explicit proxy https protocol, cannot be greater than 64000.
  /// [pacFile] SAS URL for PAC file.
  /// [pacFilePort] Port number for firewall to serve PAC file.
  const ExplicitProxyResponse({
    this.enableExplicitProxy,
    this.enablePacFile,
    this.httpPort,
    this.httpsPort,
    this.pacFile,
    this.pacFilePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableExplicitProxy': ?enableExplicitProxy,
      'enablePacFile': ?enablePacFile,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'pacFile': ?pacFile,
      'pacFilePort': ?pacFilePort,
    };
  }

  factory ExplicitProxyResponse.fromMap(Map<String, dynamic> map) {
    return ExplicitProxyResponse(
      enableExplicitProxy: (() { final guardedValue = map['enableExplicitProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePacFile: (() { final guardedValue = map['enablePacFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pacFile: (() { final guardedValue = map['pacFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pacFilePort: (() { final guardedValue = map['pacFilePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
