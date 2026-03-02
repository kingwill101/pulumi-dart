// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OutboundConnectionLocalDomainInfo {
  /// The name of the local domain.
  final pulumi.Input<String> domainName;
  /// The Account ID of the owner of the local domain.
  final pulumi.Input<String> ownerId;
  /// The region of the local domain.
  final pulumi.Input<String> region;

  /// Creates a new [OutboundConnectionLocalDomainInfo].
  /// [domainName] The name of the local domain.
  /// [ownerId] The Account ID of the owner of the local domain.
  /// [region] The region of the local domain.
  OutboundConnectionLocalDomainInfo({
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

  factory OutboundConnectionLocalDomainInfo.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionLocalDomainInfo(
      domainName: (map['domainName'] as String).input(),
      ownerId: (map['ownerId'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

