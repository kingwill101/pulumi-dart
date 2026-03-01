// ignore_for_file: unused_element, unnecessary_cast


/// Describes the endpoint configuration for the container
class EndpointResponse {
  /// Host IP over which the application is exposed from the container
  final String? hostIp;
  /// Name of the Endpoint
  final String? name;
  /// Protocol over which communication will happen over this endpoint
  final String? protocol;
  /// Port over which the application is exposed from container.
  final int? published;
  /// Application port inside the container.
  final int? target;

  /// Creates a new [EndpointResponse].
  /// [hostIp] Host IP over which the application is exposed from the container
  /// [name] Name of the Endpoint
  /// [protocol] Protocol over which communication will happen over this endpoint
  /// [published] Port over which the application is exposed from container.
  /// [target] Application port inside the container.
  EndpointResponse({
    this.hostIp,
    this.name,
    this.protocol,
    this.published,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostIp': ?hostIp,
      'name': ?name,
      'protocol': ?protocol,
      'published': ?published,
      'target': ?target,
    };
  }

  factory EndpointResponse.fromMap(Map<String, dynamic> map) {
    return EndpointResponse(
      hostIp: map['hostIp'] == null ? null : map['hostIp'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      published: map['published'] == null ? null : map['published'] as int,
      target: map['target'] == null ? null : map['target'] as int,
    );
  }
}

