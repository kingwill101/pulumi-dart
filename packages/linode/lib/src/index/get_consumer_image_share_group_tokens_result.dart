// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_image_share_group_tokens_filter.dart';
import 'get_consumer_image_share_group_tokens_token.dart';

/// Result data returned by getConsumerImageShareGroupTokens.
class GetConsumerImageShareGroupTokensResult {
  final List<GetConsumerImageShareGroupTokensFilter>? filters;
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetConsumerImageShareGroupTokensToken>? tokens;

  /// Creates a new [GetConsumerImageShareGroupTokensResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [tokens] Optional.
  GetConsumerImageShareGroupTokensResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetConsumerImageShareGroupTokensFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'tokens': ?tokens == null ? null : pulumi.Input.encodeList<GetConsumerImageShareGroupTokensToken, Map<String, dynamic>>(tokens!, (value) => value.toMap()),
    };
  }

  factory GetConsumerImageShareGroupTokensResult.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupTokensResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetConsumerImageShareGroupTokensFilter>(map['filters'], (value) => GetConsumerImageShareGroupTokensFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
      tokens: map['tokens'] == null ? null : pulumi.Input.decodeList<GetConsumerImageShareGroupTokensToken>(map['tokens'], (value) => GetConsumerImageShareGroupTokensToken.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

