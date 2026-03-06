// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationCustomHostAliasV2 {
  /// The domain name or hostname.
  final pulumi.Input<String>? hostName;
  /// The IP address.
  final pulumi.Input<String>? ip;

  /// Creates a new [ApplicationCustomHostAliasV2].
  /// [hostName] The domain name or hostname.
  /// [ip] The IP address.
  const ApplicationCustomHostAliasV2({
    this.hostName,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'ip': ?ip,
    };
  }

  factory ApplicationCustomHostAliasV2.fromMap(Map<String, dynamic> map) {
    return ApplicationCustomHostAliasV2(
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

