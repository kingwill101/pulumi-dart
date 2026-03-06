// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OutboundConnectionRemoteDomainInfo {
  /// The name of the remote domain.
  final pulumi.Input<String> domainName;
  /// The Account ID of the owner of the remote domain.
  final pulumi.Input<String> ownerId;
  /// The region of the remote domain.
  final pulumi.Input<String> region;

  /// Creates a new [OutboundConnectionRemoteDomainInfo].
  /// [domainName] The name of the remote domain.
  /// [ownerId] The Account ID of the owner of the remote domain.
  /// [region] The region of the remote domain.
  const OutboundConnectionRemoteDomainInfo({
    required this.domainName,
    required this.ownerId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ownerId': ownerId,
      'region': region,
    };
  }

  factory OutboundConnectionRemoteDomainInfo.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionRemoteDomainInfo(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      ownerId: pulumi.Input.fromValue(map['ownerId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

