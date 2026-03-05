// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSource {
  /// The address of the origin server. You can specify an IP address or a domain name.
  final pulumi.Input<String> sourceContent;
  /// The port number. You can specify port 443 or 80. **Default value: 80**. If you specify port 443, Alibaba Cloud CDN communicates with the origin server over HTTPS. You can also customize a port.
  final pulumi.Input<String> sourcePort;
  /// The priority of the origin server if multiple origin servers are specified. Valid values: `20` and `30`. **Default value: 20**. A value of 20 indicates that the origin server is the primary origin server. A value of 30 indicates that the origin server is a secondary origin server.
  final pulumi.Input<String>? sourcePriority;
  /// The type of the origin server. Valid values:
  final pulumi.Input<String> sourceType;

  /// Creates a new [DomainSource].
  /// [sourceContent] The address of the origin server. You can specify an IP address or a domain name.
  /// [sourcePort] The port number. You can specify port 443 or 80. **Default value: 80**. If you specify port 443, Alibaba Cloud CDN communicates with the origin server over HTTPS. You can also customize a port.
  /// [sourcePriority] The priority of the origin server if multiple origin servers are specified. Valid values: `20` and `30`. **Default value: 20**. A value of 20 indicates that the origin server is the primary origin server. A value of 30 indicates that the origin server is a secondary origin server.
  /// [sourceType] The type of the origin server. Valid values:
  DomainSource({
    required this.sourceContent,
    required this.sourcePort,
    this.sourcePriority,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceContent': sourceContent,
      'sourcePort': sourcePort,
      'sourcePriority': ?sourcePriority,
      'sourceType': sourceType,
    };
  }

  factory DomainSource.fromMap(Map<String, dynamic> map) {
    return DomainSource(
      sourceContent: pulumi.Input.fromValue(map['sourceContent'] as String),
      sourcePort: pulumi.Input.fromValue(map['sourcePort'] as String),
      sourcePriority: (() { final guardedValue = map['sourcePriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}

