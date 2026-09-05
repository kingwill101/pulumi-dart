// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedTransitVirtualInterfaceAcceptor resources.
class HostedTransitVirtualInterfaceAcceptorState {
  /// The ARN of the virtual interface.
  final pulumi.Input<String?>? arn;
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String?>? dxGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String?>? virtualInterfaceId;

  /// Creates a new [HostedTransitVirtualInterfaceAcceptorState].
  /// [arn] The ARN of the virtual interface.
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  const HostedTransitVirtualInterfaceAcceptorState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dxGatewayId: (() { final guardedValue = map['dxGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualInterfaceId: (() { final guardedValue = map['virtualInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
