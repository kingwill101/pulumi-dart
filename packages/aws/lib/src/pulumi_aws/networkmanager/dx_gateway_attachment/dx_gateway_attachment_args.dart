// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dx_gateway_attachment_timeouts/dx_gateway_attachment_timeouts.dart';

/// The set of arguments for DxGatewayAttachment.
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

  DxGatewayAttachmentArgs({
    required this.coreNetworkId,
    required this.directConnectGatewayArn,
    required this.edgeLocations,
    this.routingPolicyLabel,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    map['directConnectGatewayArn'] = directConnectGatewayArn;
    map['edgeLocations'] = edgeLocations;
    final routingPolicyLabelValue = routingPolicyLabel;
    if (routingPolicyLabelValue != null) {
      map['routingPolicyLabel'] = routingPolicyLabelValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DxGatewayAttachmentTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DxGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DxGatewayAttachmentArgs(
      coreNetworkId: pulumi.Input.asInput<String>(map['coreNetworkId']),
      directConnectGatewayArn:
          pulumi.Input.asInput<String>(map['directConnectGatewayArn']),
      edgeLocations: pulumi.Input.asInput<List<String>>(map['edgeLocations']),
      routingPolicyLabel:
          pulumi.Input.asOptionalInput<String>(map['routingPolicyLabel']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<DxGatewayAttachmentTimeouts>(
          map['timeouts']),
    );
  }
}
