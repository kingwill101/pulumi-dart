// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionFixedResponse {
  /// Custom HTTP status code to return, e.g. a 404 response code. See [Listeners](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in the AWS documentation for a list of supported codes.
  final pulumi.Input<int> statusCode;

  /// Creates a new [ListenerDefaultActionFixedResponse].
  /// [statusCode] Custom HTTP status code to return, e.g. a 404 response code. See [Listeners](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in the AWS documentation for a list of supported codes.
  const ListenerDefaultActionFixedResponse({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
    };
  }

  factory ListenerDefaultActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionFixedResponse(
      statusCode: pulumi.Input.fromValue(map['statusCode'] as int),
    );
  }
}

