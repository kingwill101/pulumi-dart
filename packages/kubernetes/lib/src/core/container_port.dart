// ignore_for_file: unused_element, unnecessary_cast


/// ContainerPort represents a network port in a single container.
class ContainerPort {
  /// Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
  final int containerPort;
  /// What host IP to bind the external port to.
  final String? hostIP;
  /// Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  final int? hostPort;
  /// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  final String? name;
  /// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
  final String? protocol;

  /// Creates a new [ContainerPort].
  /// [containerPort] Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
  /// [hostIP] What host IP to bind the external port to.
  /// [hostPort] Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  /// [name] If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  /// [protocol] Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
  ContainerPort({
    required this.containerPort,
    this.hostIP,
    this.hostPort,
    this.name,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
      'hostIP': ?hostIP,
      'hostPort': ?hostPort,
      'name': ?name,
      'protocol': ?protocol,
    };
  }

  factory ContainerPort.fromMap(Map<String, dynamic> map) {
    return ContainerPort(
      containerPort: map['containerPort'] as int,
      hostIP: map['hostIP'] == null ? null : map['hostIP'] as String,
      hostPort: map['hostPort'] == null ? null : map['hostPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

