// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecWorkerLogDestinationLogtail {
  /// Logtail token.
  final String token;

  /// Creates a new [GetAppSpecWorkerLogDestinationLogtail].
  /// [token] Logtail token.
  GetAppSpecWorkerLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory GetAppSpecWorkerLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerLogDestinationLogtail(
      token: map['token'] as String,
    );
  }
}

