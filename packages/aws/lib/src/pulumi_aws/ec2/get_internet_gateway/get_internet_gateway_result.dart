// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_internet_gateway_attachment/get_internet_gateway_attachment.dart';
import '../get_internet_gateway_filter/get_internet_gateway_filter.dart';

/// Result data returned by getInternetGateway.
class GetInternetGatewayResult {
  /// ARN of the Internet Gateway.
  final String arn;
  final List<GetInternetGatewayAttachment> attachments;
  final List<GetInternetGatewayFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String internetGatewayId;

  /// ID of the AWS account that owns the internet gateway.
  final String ownerId;
  final String region;
  final Map<String, String> tags;

  GetInternetGatewayResult({
    required this.arn,
    required this.attachments,
    this.filters,
    required this.id,
    required this.internetGatewayId,
    required this.ownerId,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['attachments'] = pulumi.Input.encodeList<GetInternetGatewayAttachment,
        Map<String, dynamic>>(attachments, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetInternetGatewayFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['internetGatewayId'] = internetGatewayId;
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetInternetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayResult(
      arn: map['arn'] as String,
      attachments: pulumi.Input.decodeList<GetInternetGatewayAttachment>(
          map['attachments'],
          (value) => GetInternetGatewayAttachment.fromMap(
              (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetInternetGatewayFilter>(
              map['filters'],
              (value) => GetInternetGatewayFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      internetGatewayId: map['internetGatewayId'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
