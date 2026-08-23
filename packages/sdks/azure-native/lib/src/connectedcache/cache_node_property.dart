// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_cache_node_properties.dart';
import 'cache_node_entity.dart';

/// Model representing an Mcc cache node connectedCache resource
class CacheNodeProperty {
  /// Mcc cache node resource additional properties.
  final pulumi.Input<AdditionalCacheNodeProperties>? additionalCacheNodeProperties;
  /// Mcc cache node resource (cache node entity).
  final pulumi.Input<CacheNodeEntity>? cacheNode;
  /// Mcc response status code.
  final pulumi.Input<String>? statusCode;
  /// Mcc response status details for retrieving response inner details.
  final pulumi.Input<String>? statusDetails;
  /// Mcc response status text as string for retrieving status details.
  final pulumi.Input<String>? statusText;

  /// Creates a new [CacheNodeProperty].
  /// [additionalCacheNodeProperties] Mcc cache node resource additional properties.
  /// [cacheNode] Mcc cache node resource (cache node entity).
  /// [statusCode] Mcc response status code.
  /// [statusDetails] Mcc response status details for retrieving response inner details.
  /// [statusText] Mcc response status text as string for retrieving status details.
  const CacheNodeProperty({
    this.additionalCacheNodeProperties,
    this.cacheNode,
    this.statusCode,
    this.statusDetails,
    this.statusText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCacheNodeProperties': ?pulumi.Input.mapOptionalInputValue<AdditionalCacheNodeProperties, Map<String, dynamic>>(additionalCacheNodeProperties, (value) => value.toMap()),
      'cacheNode': ?pulumi.Input.mapOptionalInputValue<CacheNodeEntity, Map<String, dynamic>>(cacheNode, (value) => value.toMap()),
      'statusCode': ?statusCode,
      'statusDetails': ?statusDetails,
      'statusText': ?statusText,
    };
  }

  factory CacheNodeProperty.fromMap(Map<String, dynamic> map) {
    return CacheNodeProperty(
      additionalCacheNodeProperties: (() { final guardedValue = map['additionalCacheNodeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalCacheNodeProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheNode: (() { final guardedValue = map['cacheNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheNodeEntity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusText: (() { final guardedValue = map['statusText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
