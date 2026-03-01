// ignore_for_file: unused_element, unnecessary_cast


class NetworkDnsSrV {
  /// Defines the domain name used for the SRV record.
  final String? domain;
  /// Specifies the port number associated with the SRV record.
  final double? port;
  /// Sets the priority of the SRV record, influencing the selection order for clients.
  final double? priority;
  /// Defines the protocol (e.g., TCP or UDP) used for the SRV record.
  final String? protocol;
  /// Specifies the service name associated with the SRV record.
  final String? service;
  /// Indicates the target host name to contact for the specified service.
  final String? target;
  /// Sets the weight for load balancing among SRV records.
  final double? weight;

  /// Creates a new [NetworkDnsSrV].
  /// [domain] Defines the domain name used for the SRV record.
  /// [port] Specifies the port number associated with the SRV record.
  /// [priority] Sets the priority of the SRV record, influencing the selection order for clients.
  /// [protocol] Defines the protocol (e.g., TCP or UDP) used for the SRV record.
  /// [service] Specifies the service name associated with the SRV record.
  /// [target] Indicates the target host name to contact for the specified service.
  /// [weight] Sets the weight for load balancing among SRV records.
  NetworkDnsSrV({
    this.domain,
    this.port,
    this.priority,
    this.protocol,
    this.service,
    this.target,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'port': ?port,
      'priority': ?priority,
      'protocol': ?protocol,
      'service': ?service,
      'target': ?target,
      'weight': ?weight,
    };
  }

  factory NetworkDnsSrV.fromMap(Map<String, dynamic> map) {
    return NetworkDnsSrV(
      domain: map['domain'] == null ? null : map['domain'] as String,
      port: map['port'] == null ? null : map['port'] as double,
      priority: map['priority'] == null ? null : map['priority'] as double,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      weight: map['weight'] == null ? null : map['weight'] as double,
    );
  }
}

