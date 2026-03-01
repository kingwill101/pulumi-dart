// ignore_for_file: unused_element, unnecessary_cast


class ListenerDefaultActionFixedResponse {
  /// Custom HTTP status code to return, e.g. a 404 response code. See [Listeners](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in the AWS documentation for a list of supported codes.
  final int statusCode;

  /// Creates a new [ListenerDefaultActionFixedResponse].
  /// [statusCode] Custom HTTP status code to return, e.g. a 404 response code. See [Listeners](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in the AWS documentation for a list of supported codes.
  ListenerDefaultActionFixedResponse({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
    };
  }

  factory ListenerDefaultActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionFixedResponse(
      statusCode: map['statusCode'] as int,
    );
  }
}

