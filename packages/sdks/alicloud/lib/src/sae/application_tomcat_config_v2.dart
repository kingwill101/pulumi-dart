// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationTomcatConfigV2 {
  /// The path.
  final pulumi.Input<String>? contextPath;
  /// The maximum number of connections in the connection pool.
  final pulumi.Input<int>? maxThreads;
  /// The port.
  final pulumi.Input<int>? port;
  /// The URI encoding scheme in the Tomcat container.
  final pulumi.Input<String>? uriEncoding;
  /// Specifies whether to use the encoding scheme that is specified by BodyEncoding for URL.
  final pulumi.Input<String>? useBodyEncodingForUri;

  /// Creates a new [ApplicationTomcatConfigV2].
  /// [contextPath] The path.
  /// [maxThreads] The maximum number of connections in the connection pool.
  /// [port] The port.
  /// [uriEncoding] The URI encoding scheme in the Tomcat container.
  /// [useBodyEncodingForUri] Specifies whether to use the encoding scheme that is specified by BodyEncoding for URL.
  const ApplicationTomcatConfigV2({
    this.contextPath,
    this.maxThreads,
    this.port,
    this.uriEncoding,
    this.useBodyEncodingForUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextPath': ?contextPath,
      'maxThreads': ?maxThreads,
      'port': ?port,
      'uriEncoding': ?uriEncoding,
      'useBodyEncodingForUri': ?useBodyEncodingForUri,
    };
  }

  factory ApplicationTomcatConfigV2.fromMap(Map<String, dynamic> map) {
    return ApplicationTomcatConfigV2(
      contextPath: (() { final guardedValue = map['contextPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxThreads: (() { final guardedValue = map['maxThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uriEncoding: (() { final guardedValue = map['uriEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useBodyEncodingForUri: (() { final guardedValue = map['useBodyEncodingForUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

