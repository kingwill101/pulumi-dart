// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntentDialogCodeHook {
  /// The version of the request-response that you want Amazon Lex to use
  /// to invoke your Lambda function. For more information, see
  /// [Using Lambda Functions](https://docs.aws.amazon.com/lex/latest/dg/using-lambda.html). Must be less than or equal to 5 characters in length.
  final pulumi.Input<String> messageVersion;
  /// The Amazon Resource Name (ARN) of the Lambda function.
  final pulumi.Input<String> uri;

  /// Creates a new [IntentDialogCodeHook].
  /// [messageVersion] The version of the request-response that you want Amazon Lex to use
  /// [uri] The Amazon Resource Name (ARN) of the Lambda function.
  IntentDialogCodeHook({
    required this.messageVersion,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageVersion': messageVersion,
      'uri': uri,
    };
  }

  factory IntentDialogCodeHook.fromMap(Map<String, dynamic> map) {
    return IntentDialogCodeHook(
      messageVersion: pulumi.Input.fromValue(map['messageVersion'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

