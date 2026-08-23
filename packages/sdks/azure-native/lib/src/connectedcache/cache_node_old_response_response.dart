// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Model representing Cache Node for ConnectedCache resource
class CacheNodeOldResponseResponse {
  /// The error details
  final pulumi.Input<ErrorDetailResponse>? error;
  /// The provisioned state of the resource
  final pulumi.Input<String> provisioningState;
  /// status of the HTTP error code
  final pulumi.Input<String> status;
  /// statusCode used to get code details of Mcc response object
  final pulumi.Input<String>? statusCode;
  /// statusDetails used to get inner details of Mcc response object
  final pulumi.Input<String>? statusDetails;
  /// statusText used to get status details in string format of Mcc response object
  final pulumi.Input<String>? statusText;

  /// Creates a new [CacheNodeOldResponseResponse].
  /// [error] The error details
  /// [provisioningState] The provisioned state of the resource
  /// [status] status of the HTTP error code
  /// [statusCode] statusCode used to get code details of Mcc response object
  /// [statusDetails] statusDetails used to get inner details of Mcc response object
  /// [statusText] statusText used to get status details in string format of Mcc response object
  const CacheNodeOldResponseResponse({
    this.error,
    required this.provisioningState,
    required this.status,
    this.statusCode,
    this.statusDetails,
    this.statusText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': status,
      'statusCode': ?statusCode,
      'statusDetails': ?statusDetails,
      'statusText': ?statusText,
    };
  }

  factory CacheNodeOldResponseResponse.fromMap(Map<String, dynamic> map) {
    return CacheNodeOldResponseResponse(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusText: (() { final guardedValue = map['statusText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
