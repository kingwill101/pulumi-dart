// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedPrivateVirtualInterfaceAccepter resources.
class HostedPrivateVirtualInterfaceAccepterState {
  /// The ARN of the virtual interface.
  final pulumi.Input<String>? arn;
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String>? dxGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String>? virtualInterfaceId;
  /// The ID of the virtual private gateway to which to connect the virtual interface.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [HostedPrivateVirtualInterfaceAccepterState].
  /// [arn] The ARN of the virtual interface.
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  /// [vpnGatewayId] The ID of the virtual private gateway to which to connect the virtual interface.
  HostedPrivateVirtualInterfaceAccepterState({
    this.arn,
    this.dxGatewayId,
    this.region,
    this.tags,
    this.tagsAll,
    this.virtualInterfaceId,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dxGatewayId': ?dxGatewayId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'virtualInterfaceId': ?virtualInterfaceId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory HostedPrivateVirtualInterfaceAccepterState.fromMap(Map<String, dynamic> map) {
    return HostedPrivateVirtualInterfaceAccepterState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      dxGatewayId: map['dxGatewayId'] == null ? null : ((map['dxGatewayId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      virtualInterfaceId: map['virtualInterfaceId'] == null ? null : ((map['virtualInterfaceId'] as String).input()).input(),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : ((map['vpnGatewayId'] as String).input()).input(),
    );
  }
}

