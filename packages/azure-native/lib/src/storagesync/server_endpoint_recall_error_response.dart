// ignore_for_file: unused_element, unnecessary_cast


/// Server endpoint recall error object
class ServerEndpointRecallErrorResponse {
  /// Count of occurences of the error
  final double count;
  /// Error code (HResult)
  final int errorCode;

  /// Creates a new [ServerEndpointRecallErrorResponse].
  /// [count] Count of occurences of the error
  /// [errorCode] Error code (HResult)
  ServerEndpointRecallErrorResponse({
    required this.count,
    required this.errorCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'errorCode': errorCode,
    };
  }

  factory ServerEndpointRecallErrorResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointRecallErrorResponse(
      count: map['count'] as double,
      errorCode: map['errorCode'] as int,
    );
  }
}

