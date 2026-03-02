// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoomMessageReviewHandler {
  /// The fallback behavior (whether the message
  /// is allowed or denied) if the handler does not return a valid response,
  /// encounters an error, or times out. Valid values: `ALLOW`, `DENY`.
  final pulumi.Input<String>? fallbackResult;
  /// ARN of the lambda message review handler function.
  final pulumi.Input<String>? uri;

  /// Creates a new [RoomMessageReviewHandler].
  /// [fallbackResult] The fallback behavior (whether the message
  /// [uri] ARN of the lambda message review handler function.
  RoomMessageReviewHandler({
    this.fallbackResult,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackResult': ?fallbackResult,
      'uri': ?uri,
    };
  }

  factory RoomMessageReviewHandler.fromMap(Map<String, dynamic> map) {
    return RoomMessageReviewHandler(
      fallbackResult: map['fallbackResult'] == null ? null : ((map['fallbackResult'] as String).input()).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
    );
  }
}

