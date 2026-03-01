// ignore_for_file: unused_element, unnecessary_cast

class Destination {
  /// For publicly routable host.
  final String? host;

  /// The port is the target port number that is accepted by the destination.
  final int? port;

  /// PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
  final String? serviceAttachment;

  /// Creates a new [Destination].
  /// [host] For publicly routable host.
  /// [port] The port is the target port number that is accepted by the destination.
  /// [serviceAttachment] PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
  Destination({this.host, this.port, this.serviceAttachment});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory Destination.fromMap(Map<String, dynamic> map) {
    return Destination(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
