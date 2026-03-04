// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ErrorDetail
class ErrorDetail {
  /// &lt;p&gt;The name or code associated with the error.&lt;/p&gt;
  final pulumi.Input<String>? errorCode;

  /// &lt;p&gt;A list of key value pairs that provides contextual information about why an error occured.&lt;/p&gt;
  final pulumi.Input<List<dynamic>>? errorData;

  /// &lt;p&gt;A message that describes the error.&lt;/p&gt;
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [ErrorDetail].
  /// [errorCode] &lt;p&gt;The name or code associated with the error.&lt;/p&gt;
  /// [errorData] &lt;p&gt;A list of key value pairs that provides contextual information about why an error occured.&lt;/p&gt;
  /// [errorMessage] &lt;p&gt;A message that describes the error.&lt;/p&gt;
  ErrorDetail({this.errorCode, this.errorData, this.errorMessage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorData': ?errorData,
      'errorMessage': ?errorMessage,
    };
  }

  factory ErrorDetail.fromMap(Map<String, dynamic> map) {
    return ErrorDetail(
      errorCode: (() {
        final guardedValue = map['errorCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorData: (() {
        final guardedValue = map['errorData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      errorMessage: (() {
        final guardedValue = map['errorMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
