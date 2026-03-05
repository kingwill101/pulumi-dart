// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The ARN of the connection.
  final pulumi.Input<String>? arn;
  /// The Direct Connect endpoint on which the physical connection terminates.
  final pulumi.Input<String>? awsDevice;
  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  final pulumi.Input<String>? bandwidth;
  /// The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are `no_encrypt`, `should_encrypt`, and `must_encrypt`.
  final pulumi.Input<String>? encryptionMode;
  /// Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  final pulumi.Input<String>? hasLogicalRedundancy;
  /// Boolean value representing if jumbo frames have been enabled for this connection.
  final pulumi.Input<bool>? jumboFrameCapable;
  /// The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  final pulumi.Input<String>? location;
  /// Boolean value indicating whether the connection supports MAC Security (MACsec).
  final pulumi.Input<bool>? macsecCapable;
  /// The name of the connection.
  final pulumi.Input<String>? name;
  /// The ID of the AWS account that owns the connection.
  final pulumi.Input<String>? ownerAccountId;
  /// The name of the AWS Direct Connect service provider associated with the connection.
  final pulumi.Input<String>? partnerName;
  /// The MAC Security (MACsec) port link status of the connection.
  final pulumi.Input<String>? portEncryptionStatus;
  /// The name of the service provider associated with the connection.
  final pulumi.Input<String>? providerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: `false`.
  ///
  /// &gt; **NOTE:** Changing the value of `request_macsec` will cause the resource to be destroyed and re-created.
  final pulumi.Input<bool>? requestMacsec;
  /// Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  final pulumi.Input<bool>? skipDestroy;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VLAN ID.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [ConnectionState].
  /// [arn] The ARN of the connection.
  /// [awsDevice] The Direct Connect endpoint on which the physical connection terminates.
  /// [bandwidth] The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  /// [encryptionMode] The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are `no_encrypt`, `should_encrypt`, and `must_encrypt`.
  /// [hasLogicalRedundancy] Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  /// [jumboFrameCapable] Boolean value representing if jumbo frames have been enabled for this connection.
  /// [location] The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  /// [macsecCapable] Boolean value indicating whether the connection supports MAC Security (MACsec).
  /// [name] The name of the connection.
  /// [ownerAccountId] The ID of the AWS account that owns the connection.
  /// [partnerName] The name of the AWS Direct Connect service provider associated with the connection.
  /// [portEncryptionStatus] The MAC Security (MACsec) port link status of the connection.
  /// [providerName] The name of the service provider associated with the connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestMacsec] Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: `false`.
  /// [skipDestroy] Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vlanId] The VLAN ID.
  ConnectionState({
    this.arn,
    this.awsDevice,
    this.bandwidth,
    this.encryptionMode,
    this.hasLogicalRedundancy,
    this.jumboFrameCapable,
    this.location,
    this.macsecCapable,
    this.name,
    this.ownerAccountId,
    this.partnerName,
    this.portEncryptionStatus,
    this.providerName,
    this.region,
    this.requestMacsec,
    this.skipDestroy,
    this.tags,
    this.tagsAll,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsDevice': ?awsDevice,
      'bandwidth': ?bandwidth,
      'encryptionMode': ?encryptionMode,
      'hasLogicalRedundancy': ?hasLogicalRedundancy,
      'jumboFrameCapable': ?jumboFrameCapable,
      'location': ?location,
      'macsecCapable': ?macsecCapable,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'partnerName': ?partnerName,
      'portEncryptionStatus': ?portEncryptionStatus,
      'providerName': ?providerName,
      'region': ?region,
      'requestMacsec': ?requestMacsec,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vlanId': ?vlanId,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsDevice: (() { final guardedValue = map['awsDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionMode: (() { final guardedValue = map['encryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasLogicalRedundancy: (() { final guardedValue = map['hasLogicalRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jumboFrameCapable: (() { final guardedValue = map['jumboFrameCapable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macsecCapable: (() { final guardedValue = map['macsecCapable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerName: (() { final guardedValue = map['partnerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portEncryptionStatus: (() { final guardedValue = map['portEncryptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMacsec: (() { final guardedValue = map['requestMacsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

