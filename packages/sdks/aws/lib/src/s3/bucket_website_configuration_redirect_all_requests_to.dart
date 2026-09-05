// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteConfigurationRedirectAllRequestsTo {
  /// Name of the host where requests are redirected.
  final pulumi.Input<String> hostName;
  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  final pulumi.Input<String?>? protocol;

  /// Creates a new [BucketWebsiteConfigurationRedirectAllRequestsTo].
  /// [hostName] Name of the host where requests are redirected.
  /// [protocol] Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  const BucketWebsiteConfigurationRedirectAllRequestsTo({
    required this.hostName,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'protocol': ?protocol,
    };
  }

  factory BucketWebsiteConfigurationRedirectAllRequestsTo.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationRedirectAllRequestsTo(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
