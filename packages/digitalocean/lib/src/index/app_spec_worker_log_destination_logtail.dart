// ignore_for_file: unused_element, unnecessary_cast


class AppSpecWorkerLogDestinationLogtail {
  /// Logtail token.
  final String token;

  /// Creates a new [AppSpecWorkerLogDestinationLogtail].
  /// [token] Logtail token.
  AppSpecWorkerLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory AppSpecWorkerLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestinationLogtail(
      token: map['token'] as String,
    );
  }
}

