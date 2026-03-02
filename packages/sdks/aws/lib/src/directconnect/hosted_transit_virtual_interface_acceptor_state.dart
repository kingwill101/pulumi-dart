// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedTransitVirtualInterfaceAcceptor resources.
class HostedTransitVirtualInterfaceAcceptorState {
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

  /// Creates a new [HostedTransitVirtualInterfaceAcceptorState].
  /// [arn] The ARN of the virtual interface.
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  HostedTransitVirtualInterfaceAcceptorState({
    this.arn,
    this.dxGatewayId,
    this.region,
    this.tags,
    this.tagsAll,
    this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dxGatewayId': ?dxGatewayId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'virtualInterfaceId': ?virtualInterfaceId,
    };
  }

  factory HostedTransitVirtualInterfaceAcceptorState.fromMap(Map<String, dynamic> map) {
    return HostedTransitVirtualInterfaceAcceptorState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      dxGatewayId: map['dxGatewayId'] == null ? null : (map['dxGatewayId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      virtualInterfaceId: map['virtualInterfaceId'] == null ? null : (map['virtualInterfaceId'] as String).input(),
    );
  }
}

