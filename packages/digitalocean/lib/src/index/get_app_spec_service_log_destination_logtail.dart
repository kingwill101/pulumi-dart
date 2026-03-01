// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecServiceLogDestinationLogtail {
  /// Logtail token.
  final String token;

  /// Creates a new [GetAppSpecServiceLogDestinationLogtail].
  /// [token] Logtail token.
  GetAppSpecServiceLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory GetAppSpecServiceLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestinationLogtail(
      token: map['token'] as String,
    );
  }
}

