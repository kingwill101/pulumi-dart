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
  /// > **NOTE:** Changing the value of `request_macsec` will cause the resource to be destroyed and re-created.
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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsDevice,
    pulumi.Output<String>? bandwidth,
    pulumi.Output<String>? encryptionMode,
    pulumi.Output<String>? hasLogicalRedundancy,
    pulumi.Output<bool>? jumboFrameCapable,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? macsecCapable,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? partnerName,
    pulumi.Output<String>? portEncryptionStatus,
    pulumi.Output<String>? providerName,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? requestMacsec,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? vlanId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsDevice = pulumi.Input.asOptionalInput<String>(awsDevice),
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      encryptionMode = pulumi.Input.asOptionalInput<String>(encryptionMode),
      hasLogicalRedundancy = pulumi.Input.asOptionalInput<String>(hasLogicalRedundancy),
      jumboFrameCapable = pulumi.Input.asOptionalInput<bool>(jumboFrameCapable),
      location = pulumi.Input.asOptionalInput<String>(location),
      macsecCapable = pulumi.Input.asOptionalInput<bool>(macsecCapable),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      partnerName = pulumi.Input.asOptionalInput<String>(partnerName),
      portEncryptionStatus = pulumi.Input.asOptionalInput<String>(portEncryptionStatus),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestMacsec = pulumi.Input.asOptionalInput<bool>(requestMacsec),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsDevice: map['awsDevice'] == null ? null : pulumi.Output.create<String>(map['awsDevice'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      encryptionMode: map['encryptionMode'] == null ? null : pulumi.Output.create<String>(map['encryptionMode'] as String),
      hasLogicalRedundancy: map['hasLogicalRedundancy'] == null ? null : pulumi.Output.create<String>(map['hasLogicalRedundancy'] as String),
      jumboFrameCapable: map['jumboFrameCapable'] == null ? null : pulumi.Output.create<bool>(map['jumboFrameCapable'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      macsecCapable: map['macsecCapable'] == null ? null : pulumi.Output.create<bool>(map['macsecCapable'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      partnerName: map['partnerName'] == null ? null : pulumi.Output.create<String>(map['partnerName'] as String),
      portEncryptionStatus: map['portEncryptionStatus'] == null ? null : pulumi.Output.create<String>(map['portEncryptionStatus'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestMacsec: map['requestMacsec'] == null ? null : pulumi.Output.create<bool>(map['requestMacsec'] as bool),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vlanId: map['vlanId'] == null ? null : pulumi.Output.create<int>(map['vlanId'] as int),
    );
  }
}

