// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcAttachmentOptions {
  /// Whether to enable appliance mode support. If enabled, traffic flow between a source and destination use the same Availability Zone for the VPC attachment for the lifetime of that flow. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  final pulumi.Input<bool>? applianceModeSupport;
  /// Whether to enable DNS support. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  final pulumi.Input<bool>? dnsSupport;
  /// Whether to enable IPv6 support. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  final pulumi.Input<bool>? ipv6Support;
  /// Whether to enable security group referencing support for this VPC attachment. The default is `true`. However, at the core network policy-level the default is set to `false`. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  final pulumi.Input<bool>? securityGroupReferencingSupport;

  /// Creates a new [VpcAttachmentOptions].
  /// [applianceModeSupport] Whether to enable appliance mode support. If enabled, traffic flow between a source and destination use the same Availability Zone for the VPC attachment for the lifetime of that flow. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  /// [dnsSupport] Whether to enable DNS support. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  /// [ipv6Support] Whether to enable IPv6 support. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  /// [securityGroupReferencingSupport] Whether to enable security group referencing support for this VPC attachment. The default is `true`. However, at the core network policy-level the default is set to `false`. If the VPC attachment is pending acceptance, changing this value will recreate the resource.
  VpcAttachmentOptions({
    this.applianceModeSupport,
    this.dnsSupport,
    this.ipv6Support,
    this.securityGroupReferencingSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceModeSupport': ?applianceModeSupport,
      'dnsSupport': ?dnsSupport,
      'ipv6Support': ?ipv6Support,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
    };
  }

  factory VpcAttachmentOptions.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentOptions(
      applianceModeSupport: map['applianceModeSupport'] == null ? null : ((map['applianceModeSupport'] as bool).input()).input(),
      dnsSupport: map['dnsSupport'] == null ? null : ((map['dnsSupport'] as bool).input()).input(),
      ipv6Support: map['ipv6Support'] == null ? null : ((map['ipv6Support'] as bool).input()).input(),
      securityGroupReferencingSupport: map['securityGroupReferencingSupport'] == null ? null : ((map['securityGroupReferencingSupport'] as bool).input()).input(),
    );
  }
}

