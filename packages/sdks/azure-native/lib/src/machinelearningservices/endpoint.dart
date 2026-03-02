// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the endpoint configuration for the container
class Endpoint {
  /// Host IP over which the application is exposed from the container
  final pulumi.Input<String>? hostIp;
  /// Name of the Endpoint
  final pulumi.Input<String>? name;
  /// Protocol over which communication will happen over this endpoint
  final pulumi.Input<String>? protocol;
  /// Port over which the application is exposed from container.
  final pulumi.Input<int>? published;
  /// Application port inside the container.
  final pulumi.Input<int>? target;

  /// Creates a new [Endpoint].
  /// [hostIp] Host IP over which the application is exposed from the container
  /// [name] Name of the Endpoint
  /// [protocol] Protocol over which communication will happen over this endpoint
  /// [published] Port over which the application is exposed from container.
  /// [target] Application port inside the container.
  Endpoint({
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

  factory Endpoint.fromMap(Map<String, dynamic> map) {
    return Endpoint(
      hostIp: map['hostIp'] == null ? null : (map['hostIp'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      published: map['published'] == null ? null : (map['published'] as int).input(),
      target: map['target'] == null ? null : (map['target'] as int).input(),
    );
  }
}

