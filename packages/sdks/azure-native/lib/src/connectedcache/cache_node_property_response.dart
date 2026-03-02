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
      additionalCacheNodeProperties: map['additionalCacheNodeProperties'] == null ? null : (AdditionalCacheNodePropertiesResponse.fromMap((map['additionalCacheNodeProperties']! as Map).cast<String, dynamic>())).input(),
      cacheNode: map['cacheNode'] == null ? null : (CacheNodeEntityResponse.fromMap((map['cacheNode']! as Map).cast<String, dynamic>())).input(),
      error: map['error'] == null ? null : (ErrorDetailResponse.fromMap((map['error']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: (map['status'] as String).input(),
      statusCode: map['statusCode'] == null ? null : (map['statusCode']! as String).input(),
      statusDetails: map['statusDetails'] == null ? null : (map['statusDetails']! as String).input(),
      statusText: map['statusText'] == null ? null : (map['statusText']! as String).input(),
    );
  }
}

