// ignore_for_file: unused_element, unnecessary_cast

class IntentFulfillmentActivityCodeHook {
  /// The version of the request-response that you want Amazon Lex to use
  /// to invoke your Lambda function. For more information, see
  /// [Using Lambda Functions](https://docs.aws.amazon.com/lex/latest/dg/using-lambda.html). Must be less than or equal to 5 characters in length.
  final String messageVersion;

  /// The Amazon Resource Name (ARN) of the Lambda function.
  final String uri;

  IntentFulfillmentActivityCodeHook({
    required this.messageVersion,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messageVersion'] = messageVersion;
    map['uri'] = uri;
    return map;
  }

  factory IntentFulfillmentActivityCodeHook.fromMap(Map<String, dynamic> map) {
    return IntentFulfillmentActivityCodeHook(
      messageVersion: map['messageVersion'] as String,
      uri: map['uri'] as String,
    );
  }
}
