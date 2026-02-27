// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionFixedResponseVpclattice {
  /// Custom HTTP status code to return, e.g. a 404 response code. See [Listeners](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in the AWS documentation for a list of supported codes.
  final int statusCode;

  ListenerDefaultActionFixedResponseVpclattice({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    return map;
  }

  factory ListenerDefaultActionFixedResponseVpclattice.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionFixedResponseVpclattice(
      statusCode: map['statusCode'] as int,
    );
  }
}
