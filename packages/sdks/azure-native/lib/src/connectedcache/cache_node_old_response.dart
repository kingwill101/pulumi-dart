// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing Cache Node for ConnectedCache resource
class CacheNodeOldResponse {
  /// statusCode used to get code details of Mcc response object
  final pulumi.Input<String>? statusCode;
  /// statusDetails used to get inner details of Mcc response object
  final pulumi.Input<String>? statusDetails;
  /// statusText used to get status details in string format of Mcc response object
  final pulumi.Input<String>? statusText;

  /// Creates a new [CacheNodeOldResponse].
  /// [statusCode] statusCode used to get code details of Mcc response object
  /// [statusDetails] statusDetails used to get inner details of Mcc response object
  /// [statusText] statusText used to get status details in string format of Mcc response object
  const CacheNodeOldResponse({
    this.statusCode,
    this.statusDetails,
    this.statusText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': ?statusCode,
      'statusDetails': ?statusDetails,
      'statusText': ?statusText,
    };
  }

  factory CacheNodeOldResponse.fromMap(Map<String, dynamic> map) {
    return CacheNodeOldResponse(
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusText: (() { final guardedValue = map['statusText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
