// ignore_for_file: unused_element, unnecessary_cast


class IngressRule {
  /// Target application ID.
  final String appId;
  /// Target application name.
  final String appName;
  /// The backend protocol.
  final String? backendProtocol;
  /// Application backend port.
  final int containerPort;
  /// Application domain name.
  final String domain;
  /// URL path.
  final String path;
  /// The rewrite path.
  final String? rewritePath;

  /// Creates a new [IngressRule].
  /// [appId] Target application ID.
  /// [appName] Target application name.
  /// [backendProtocol] The backend protocol.
  /// [containerPort] Application backend port.
  /// [domain] Application domain name.
  /// [path] URL path.
  /// [rewritePath] The rewrite path.
  IngressRule({
    required this.appId,
    required this.appName,
    this.backendProtocol,
    required this.containerPort,
    required this.domain,
    required this.path,
    this.rewritePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appName': appName,
      'backendProtocol': ?backendProtocol,
      'containerPort': containerPort,
      'domain': domain,
      'path': path,
      'rewritePath': ?rewritePath,
    };
  }

  factory IngressRule.fromMap(Map<String, dynamic> map) {
    return IngressRule(
      appId: map['appId'] as String,
      appName: map['appName'] as String,
      backendProtocol: map['backendProtocol'] == null ? null : map['backendProtocol'] as String,
      containerPort: map['containerPort'] as int,
      domain: map['domain'] as String,
      path: map['path'] as String,
      rewritePath: map['rewritePath'] == null ? null : map['rewritePath'] as String,
    );
  }
}

