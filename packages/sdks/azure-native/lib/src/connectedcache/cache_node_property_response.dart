// ignore_for_file: unused_element, unnecessary_cast

import 'additional_cache_node_properties_response.dart';
import 'cache_node_entity_response.dart';
import 'error_detail_response.dart';

/// Model representing an Mcc cache node connectedCache resource
class CacheNodePropertyResponse {
  /// Mcc cache node resource additional properties.
  final AdditionalCacheNodePropertiesResponse? additionalCacheNodeProperties;
  /// Mcc cache node resource (cache node entity).
  final CacheNodeEntityResponse? cacheNode;
  /// Mcc response error details.
  final ErrorDetailResponse? error;
  /// The provisioned state of the resource
  final String provisioningState;
  /// HTTP error status code.
  final String status;
  /// Mcc response status code.
  final String? statusCode;
  /// Mcc response status details for retrieving response inner details.
  final String? statusDetails;
  /// Mcc response status text as string for retrieving status details.
  final String? statusText;

  /// Creates a new [CacheNodePropertyResponse].
  /// [additionalCacheNodeProperties] Mcc cache node resource additional properties.
  /// [cacheNode] Mcc cache node resource (cache node entity).
  /// [error] Mcc response error details.
  /// [provisioningState] The provisioned state of the resource
  /// [status] HTTP error status code.
  /// [statusCode] Mcc response status code.
  /// [statusDetails] Mcc response status details for retrieving response inner details.
  /// [statusText] Mcc response status text as string for retrieving status details.
  CacheNodePropertyResponse({
    this.additionalCacheNodeProperties,
    this.cacheNode,
    this.error,
    required this.provisioningState,
    required this.status,
    this.statusCode,
    this.statusDetails,
    this.statusText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCacheNodeProperties': ?additionalCacheNodeProperties == null ? null : additionalCacheNodeProperties!.toMap(),
      'cacheNode': ?cacheNode == null ? null : cacheNode!.toMap(),
      'error': ?error == null ? null : error!.toMap(),
      'provisioningState': provisioningState,
      'status': status,
      'statusCode': ?statusCode,
      'statusDetails': ?statusDetails,
      'statusText': ?statusText,
    };
  }

  factory CacheNodePropertyResponse.fromMap(Map<String, dynamic> map) {
    return CacheNodePropertyResponse(
      additionalCacheNodeProperties: map['additionalCacheNodeProperties'] == null ? null : AdditionalCacheNodePropertiesResponse.fromMap((map['additionalCacheNodeProperties'] as Map).cast<String, dynamic>()),
      cacheNode: map['cacheNode'] == null ? null : CacheNodeEntityResponse.fromMap((map['cacheNode'] as Map).cast<String, dynamic>()),
      error: map['error'] == null ? null : ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as String,
      statusDetails: map['statusDetails'] == null ? null : map['statusDetails'] as String,
      statusText: map['statusText'] == null ? null : map['statusText'] as String,
    );
  }
}

