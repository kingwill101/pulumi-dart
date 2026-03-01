// ignore_for_file: unused_element, unnecessary_cast


class AppSpecJobLogDestinationLogtail {
  /// Logtail token.
  final String token;

  /// Creates a new [AppSpecJobLogDestinationLogtail].
  /// [token] Logtail token.
  AppSpecJobLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory AppSpecJobLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return AppSpecJobLogDestinationLogtail(
      token: map['token'] as String,
    );
  }
}

