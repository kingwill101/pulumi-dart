// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dx_gateway_attachment_timeouts.dart';

/// {@template pulumi_networkmanager_dx_gateway_attachment_dx_gateway_attachment_args_doc}
/// The set of arguments for DxGatewayAttachment.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_dx_gateway_attachment_dx_gateway_attachment_args_doc}
class DxGatewayAttachmentArgs {
  /// ID of the Cloud WAN core network to which the Direct Connect gateway attachment should be attached.
  final pulumi.Input<String> coreNetworkId;
  /// ARN of the Direct Connect gateway attachment.
  final pulumi.Input<String> directConnectGatewayArn;
  /// One or more core network edge locations to associate with the Direct Connect gateway attachment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> edgeLocations;
  /// The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DxGatewayAttachmentTimeouts>? timeouts;

  /// Creates a new [DxGatewayAttachmentArgs].
  /// [coreNetworkId] ID of the Cloud WAN core network to which the Direct Connect gateway attachment should be attached.
  /// [directConnectGatewayArn] ARN of the Direct Connect gateway attachment.
  /// [edgeLocations] One or more core network edge locations to associate with the Direct Connect gateway attachment.
  /// [routingPolicyLabel] The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const DxGatewayAttachmentArgs({
    required this.coreNetworkId,
    required this.directConnectGatewayArn,
    required this.edgeLocations,
    this.routingPolicyLabel,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
      'directConnectGatewayArn': directConnectGatewayArn,
      'edgeLocations': edgeLocations,
      'routingPolicyLabel': ?routingPolicyLabel,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DxGatewayAttachmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DxGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DxGatewayAttachmentArgs(
      coreNetworkId: pulumi.Input.fromValue(map['coreNetworkId'] as String),
      directConnectGatewayArn: pulumi.Input.fromValue(map['directConnectGatewayArn'] as String),
      edgeLocations: pulumi.Input.fromValue((map['edgeLocations'] as List).cast<String>()),
      routingPolicyLabel: (() { final guardedValue = map['routingPolicyLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DxGatewayAttachmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

