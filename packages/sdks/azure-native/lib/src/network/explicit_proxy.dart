// ignore_for_file: unused_element, unnecessary_cast


/// Explicit Proxy Settings in Firewall Policy.
class ExplicitProxy {
  /// When set to true, explicit proxy mode is enabled.
  final bool? enableExplicitProxy;
  /// When set to true, pac file port and url needs to be provided.
  final bool? enablePacFile;
  /// Port number for explicit proxy http protocol, cannot be greater than 64000.
  final int? httpPort;
  /// Port number for explicit proxy https protocol, cannot be greater than 64000.
  final int? httpsPort;
  /// SAS URL for PAC file.
  final String? pacFile;
  /// Port number for firewall to serve PAC file.
  final int? pacFilePort;

  /// Creates a new [ExplicitProxy].
  /// [enableExplicitProxy] When set to true, explicit proxy mode is enabled.
  /// [enablePacFile] When set to true, pac file port and url needs to be provided.
  /// [httpPort] Port number for explicit proxy http protocol, cannot be greater than 64000.
  /// [httpsPort] Port number for explicit proxy https protocol, cannot be greater than 64000.
  /// [pacFile] SAS URL for PAC file.
  /// [pacFilePort] Port number for firewall to serve PAC file.
  ExplicitProxy({
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

  factory ExplicitProxy.fromMap(Map<String, dynamic> map) {
    return ExplicitProxy(
      enableExplicitProxy: map['enableExplicitProxy'] == null ? null : map['enableExplicitProxy'] as bool,
      enablePacFile: map['enablePacFile'] == null ? null : map['enablePacFile'] as bool,
      httpPort: map['httpPort'] == null ? null : map['httpPort'] as int,
      httpsPort: map['httpsPort'] == null ? null : map['httpsPort'] as int,
      pacFile: map['pacFile'] == null ? null : map['pacFile'] as String,
      pacFilePort: map['pacFilePort'] == null ? null : map['pacFilePort'] as int,
    );
  }
}

