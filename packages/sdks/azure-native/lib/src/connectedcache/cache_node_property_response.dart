// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_cache_node_properties_response.dart';
import 'cache_node_entity_response.dart';
import 'error_detail_response.dart';

/// Model representing an Mcc cache node connectedCache resource
class CacheNodePropertyResponse {
  /// Mcc cache node resource additional properties.
  final pulumi.Input<AdditionalCacheNodePropertiesResponse>? additionalCacheNodeProperties;
  /// Mcc cache node resource (cache node entity).
  final pulumi.Input<CacheNodeEntityResponse>? cacheNode;
  /// Mcc response error details.
  final pulumi.Input<ErrorDetailResponse>? error;
  /// The provisioned state of the resource
  final pulumi.Input<String> provisioningState;
  /// HTTP error status code.
  final pulumi.Input<String> status;
  /// Mcc response status code.
  final pulumi.Input<String>? statusCode;
  /// Mcc response status details for retrieving response inner details.
  final pulumi.Input<String>? statusDetails;
  /// Mcc response status text as string for retrieving status details.
  final pulumi.Input<String>? statusText;

  /// Creates a new [CacheNodePropertyResponse].
  /// [additionalCacheNodeProperties] Mcc cache node resource additional properties.
  /// [cacheNode] Mcc cache node resource (cache node entity).
  /// [error] Mcc response error details.
  /// [provisioningState] The provisioned state of the resource
  /// [status] HTTP error status code.
  /// [statusCode] Mcc response status code.
  /// [statusDetails] Mcc response status details for retrieving response inner details.
  /// [statusText] Mcc response status text as string for retrieving status details.
  const CacheNodePropertyResponse({
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
      'additionalCacheNodeProperties': ?pulumi.Input.mapOptionalInputValue<AdditionalCacheNodePropertiesResponse, Map<String, dynamic>>(additionalCacheNodeProperties, (value) => value.toMap()),
      'cacheNode': ?pulumi.Input.mapOptionalInputValue<CacheNodeEntityResponse, Map<String, dynamic>>(cacheNode, (value) => value.toMap()),
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': status,
      'statusCode': ?statusCode,
      'statusDetails': ?statusDetails,
      'statusText': ?statusText,
    };
  }

  factory CacheNodePropertyResponse.fromMap(Map<String, dynamic> map) {
    return CacheNodePropertyResponse(
      additionalCacheNodeProperties: (() { final guardedValue = map['additionalCacheNodeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalCacheNodePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheNode: (() { final guardedValue = map['cacheNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheNodeEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusText: (() { final guardedValue = map['statusText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

