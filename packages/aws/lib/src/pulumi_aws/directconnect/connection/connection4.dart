import 'package:pulumi/pulumi.dart';
import 'connection_args4.dart';

/// Provides a Connection of Direct Connect.
///
/// ## Example Usage
///
/// ### Create a connection
///
///
///
/// ### Request a MACsec-capable connection
///
///
///
/// ### Configure encryption mode for MACsec-capable connections
///
/// > **NOTE:** You can only specify the `encryption_mode` argument once the connection is in an `Available` state.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect connections using the connection `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/connection:Connection test_connection dxcon-ffre0ec3
/// ```
class Connection4 extends CustomResource {
  /// The ARN of the connection.
  late final Output<String> arn;

  /// The Direct Connect endpoint on which the physical connection terminates.
  late final Output<String> awsDevice;

  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  late final Output<String> bandwidth;

  /// The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are `no_encrypt`, `should_encrypt`, and `must_encrypt`.
  late final Output<String> encryptionMode;

  /// Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  late final Output<String> hasLogicalRedundancy;

  /// Boolean value representing if jumbo frames have been enabled for this connection.
  late final Output<bool> jumboFrameCapable;

  /// The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  late final Output<String> location;

  /// Boolean value indicating whether the connection supports MAC Security (MACsec).
  late final Output<bool> macsecCapable;

  /// The name of the connection.
  late final Output<String> name;

  /// The ID of the AWS account that owns the connection.
  late final Output<String> ownerAccountId;

  /// The name of the AWS Direct Connect service provider associated with the connection.
  late final Output<String> partnerName;

  /// The MAC Security (MACsec) port link status of the connection.
  late final Output<String> portEncryptionStatus;

  /// The name of the service provider associated with the connection.
  late final Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: `false`.
  ///
  /// > **NOTE:** Changing the value of `request_macsec` will cause the resource to be destroyed and re-created.
  late final Output<bool?> requestMacsec;

  /// Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  late final Output<bool?> skipDestroy;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VLAN ID.
  late final Output<int> vlanId;

  Connection4(
    String name, {
    ConnectionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsDevice = registerOutput<String>('awsDevice');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.encryptionMode = registerOutput<String>('encryptionMode');
    this.hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.location = registerOutput<String>('location');
    this.macsecCapable = registerOutput<bool>('macsecCapable');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.partnerName = registerOutput<String>('partnerName');
    this.portEncryptionStatus = registerOutput<String>('portEncryptionStatus');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.requestMacsec = registerOutput<bool?>('requestMacsec');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlanId = registerOutput<int>('vlanId');
  }
}
