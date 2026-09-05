// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_internet_gateway_attachment.dart';
import 'get_internet_gateway_filter.dart';

/// Result data returned by getInternetGateway.
class GetInternetGatewayResult {
  /// ARN of the Internet Gateway.
  final String? arn;
  final List<GetInternetGatewayAttachment>? attachments;
  final List<GetInternetGatewayFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? internetGatewayId;
  /// ID of the AWS account that owns the internet gateway.
  final String? ownerId;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetInternetGatewayResult].
  /// [arn] ARN of the Internet Gateway.
  /// [attachments] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetGatewayId] Optional.
  /// [ownerId] ID of the AWS account that owns the internet gateway.
  /// [region] Optional.
  /// [tags] Optional.
  const GetInternetGatewayResult({
    this.arn,
    this.attachments,
    this.filters,
    this.id,
    this.internetGatewayId,
    this.ownerId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachments': ?(() { final guardedValue = attachments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInternetGatewayAttachment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInternetGatewayFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'internetGatewayId': ?internetGatewayId,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetInternetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attachments: (() { final guardedValue = map['attachments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInternetGatewayAttachment>(guardedValue, (value) => GetInternetGatewayAttachment.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInternetGatewayFilter>(guardedValue, (value) => GetInternetGatewayFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internetGatewayId: (() { final guardedValue = map['internetGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
