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
  CacheNodeOldResponse({
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
      statusCode: map['statusCode'] == null ? null : (map['statusCode']! as String).input(),
      statusDetails: map['statusDetails'] == null ? null : (map['statusDetails']! as String).input(),
      statusText: map['statusText'] == null ? null : (map['statusText']! as String).input(),
    );
  }
}

