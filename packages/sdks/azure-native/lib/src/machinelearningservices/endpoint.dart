// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Endpoint {
  /// Host IP over which the application is exposed from the container
  final pulumi.Input<String?>? hostIp;
  /// Name of the Endpoint
  final pulumi.Input<String?>? name;
  /// Protocol over which communication will happen over this endpoint
  final pulumi.Input<dynamic>? protocol;
  /// Port over which the application is exposed from container.
  final pulumi.Input<int?>? published;
  /// Application port inside the container.
  final pulumi.Input<int?>? target;

  /// Creates a new [Endpoint].
  /// [hostIp] Host IP over which the application is exposed from the container
  /// [name] Name of the Endpoint
  /// [protocol] Protocol over which communication will happen over this endpoint
  /// [published] Port over which the application is exposed from container.
  /// [target] Application port inside the container.
  Endpoint({
    this.hostIp,
    this.name,
    pulumi.Input<dynamic>? protocol,
    this.published,
    this.target,
  }) : protocol = protocol ?? pulumi.Input.fromValue('tcp');

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
      hostIp: (() { final guardedValue = map['hostIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      published: (() { final guardedValue = map['published']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
