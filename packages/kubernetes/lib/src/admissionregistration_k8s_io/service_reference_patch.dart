// ignore_for_file: unused_element, unnecessary_cast


/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReferencePatch {
  /// `name` is the name of the service. Required
  final String? name;
  /// `namespace` is the namespace of the service. Required
  final String? namespace;
  /// `path` is an optional URL path which will be sent in any request to this service.
  final String? path;
  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  final int? port;

  /// Creates a new [ServiceReferencePatch].
  /// [name] `name` is the name of the service. Required
  /// [namespace] `namespace` is the namespace of the service. Required
  /// [path] `path` is an optional URL path which will be sent in any request to this service.
  /// [port] If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  ServiceReferencePatch({
    this.name,
    this.namespace,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceReferencePatch.fromMap(Map<String, dynamic> map) {
    return ServiceReferencePatch(
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

