// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_direct_connect_gateway_attachment_filter/get_direct_connect_gateway_attachment_filter.dart';

/// Arguments for getDirectConnectGatewayAttachment.
class GetDirectConnectGatewayAttachmentArgs {
  /// Identifier of the Direct Connect Gateway.
  final pulumi.Input<String>? dxGatewayId;

  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetDirectConnectGatewayAttachmentFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway Direct Connect Gateway Attachment.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of the EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  GetDirectConnectGatewayAttachmentArgs({
    this.dxGatewayId,
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dxGatewayIdValue = dxGatewayId;
    if (dxGatewayIdValue != null) {
      map['dxGatewayId'] = dxGatewayIdValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetDirectConnectGatewayAttachmentFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<
              GetDirectConnectGatewayAttachmentFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    return map;
  }

  factory GetDirectConnectGatewayAttachmentArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDirectConnectGatewayAttachmentArgs(
      dxGatewayId: pulumi.Input.asOptionalInput<String>(map['dxGatewayId']),
      filters: pulumi.Input.asOptionalInput<
          List<GetDirectConnectGatewayAttachmentFilter>>(map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId:
          pulumi.Input.asOptionalInput<String>(map['transitGatewayId']),
    );
  }
}
