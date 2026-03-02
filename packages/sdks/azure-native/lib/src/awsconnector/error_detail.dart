// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ErrorDetail
class ErrorDetail {
  /// <p>The name or code associated with the error.</p>
  final pulumi.Input<String>? errorCode;
  /// <p>A list of key value pairs that provides contextual information about why an error occured.</p>
  final pulumi.Input<List<dynamic>>? errorData;
  /// <p>A message that describes the error.</p>
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [ErrorDetail].
  /// [errorCode] <p>The name or code associated with the error.</p>
  /// [errorData] <p>A list of key value pairs that provides contextual information about why an error occured.</p>
  /// [errorMessage] <p>A message that describes the error.</p>
  ErrorDetail({
    this.errorCode,
    this.errorData,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorData': ?errorData,
      'errorMessage': ?errorMessage,
    };
  }

  factory ErrorDetail.fromMap(Map<String, dynamic> map) {
    return ErrorDetail(
      errorCode: map['errorCode'] == null ? null : (map['errorCode']! as String).input(),
      errorData: map['errorData'] == null ? null : ((map['errorData']! as List).cast<dynamic>()).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
    );
  }
}

