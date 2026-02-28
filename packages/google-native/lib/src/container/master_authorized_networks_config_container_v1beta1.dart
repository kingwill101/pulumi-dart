// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block_container_v1beta1.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigContainerV1beta1 {
  /// cidr_blocks define up to 10 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockContainerV1beta1>? cidrBlocks;
  /// Whether or not master authorized networks is enabled.
  final bool? enabled;
  /// Whether master is accessbile via Google Compute Engine Public IP addresses.
  final bool? gcpPublicCidrsAccessEnabled;

  /// Creates a new [MasterAuthorizedNetworksConfigContainerV1beta1].
  /// [cidrBlocks] cidr_blocks define up to 10 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks is enabled.
  /// [gcpPublicCidrsAccessEnabled] Whether master is accessbile via Google Compute Engine Public IP addresses.
  MasterAuthorizedNetworksConfigContainerV1beta1({
    this.cidrBlocks,
    this.enabled,
    this.gcpPublicCidrsAccessEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks == null ? null : pulumi.Input.encodeList<CidrBlockContainerV1beta1, Map<String, dynamic>>(cidrBlocks!, (value) => value.toMap()),
      'enabled': ?enabled,
      'gcpPublicCidrsAccessEnabled': ?gcpPublicCidrsAccessEnabled,
    };
  }

  factory MasterAuthorizedNetworksConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigContainerV1beta1(
      cidrBlocks: map['cidrBlocks'] == null ? null : pulumi.Input.decodeList<CidrBlockContainerV1beta1>(map['cidrBlocks'], (value) => CidrBlockContainerV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] == null ? null : map['gcpPublicCidrsAccessEnabled'] as bool,
    );
  }
}

