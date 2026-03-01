// ignore_for_file: unused_element, unnecessary_cast

import 'additional_cache_node_properties.dart';
import 'cache_node_entity.dart';

/// Model representing an Mcc cache node connectedCache resource
class CacheNodeProperty {
  /// Mcc cache node resource additional properties.
  final AdditionalCacheNodeProperties? additionalCacheNodeProperties;
  /// Mcc cache node resource (cache node entity).
  final CacheNodeEntity? cacheNode;
  /// Mcc response status code.
  final String? statusCode;
  /// Mcc response status details for retrieving response inner details.
  final String? statusDetails;
  /// Mcc response status text as string for retrieving status details.
  final String? statusText;

  /// Creates a new [CacheNodeProperty].
  /// [additionalCacheNodeProperties] Mcc cache node resource additional properties.
  /// [cacheNode] Mcc cache node resource (cache node entity).
  /// [statusCode] Mcc response status code.
  /// [statusDetails] Mcc response status details for retrieving response inner details.
  /// [statusText] Mcc response status text as string for retrieving status details.
  CacheNodeProperty({
    this.additionalCacheNodeProperties,
    this.cacheNode,
    this.statusCode,
    this.statusDetails,
    this.statusText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCacheNodeProperties': ?additionalCacheNodeProperties == null ? null : additionalCacheNodeProperties!.toMap(),
      'cacheNode': ?cacheNode == null ? null : cacheNode!.toMap(),
      'statusCode': ?statusCode,
      'statusDetails': ?statusDetails,
      'statusText': ?statusText,
    };
  }

  factory CacheNodeProperty.fromMap(Map<String, dynamic> map) {
    return CacheNodeProperty(
      additionalCacheNodeProperties: map['additionalCacheNodeProperties'] == null ? null : AdditionalCacheNodeProperties.fromMap((map['additionalCacheNodeProperties'] as Map).cast<String, dynamic>()),
      cacheNode: map['cacheNode'] == null ? null : CacheNodeEntity.fromMap((map['cacheNode'] as Map).cast<String, dynamic>()),
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as String,
      statusDetails: map['statusDetails'] == null ? null : map['statusDetails'] as String,
      statusText: map['statusText'] == null ? null : map['statusText'] as String,
    );
  }
}

