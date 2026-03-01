// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecJobLogDestinationLogtail {
  /// Logtail token.
  final String token;

  /// Creates a new [GetAppSpecJobLogDestinationLogtail].
  /// [token] Logtail token.
  GetAppSpecJobLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory GetAppSpecJobLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestinationLogtail(
      token: map['token'] as String,
    );
  }
}

