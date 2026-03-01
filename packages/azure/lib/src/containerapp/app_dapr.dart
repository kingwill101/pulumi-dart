// ignore_for_file: unused_element, unnecessary_cast


class AppDapr {
  /// The Dapr Application Identifier.
  final String appId;
  /// The port which the application is listening on. This is the same as the `ingress` port.
  final int? appPort;
  /// The protocol for the app. Possible values include `http` and `grpc`. Defaults to `http`.
  final String? appProtocol;

  /// Creates a new [AppDapr].
  /// [appId] The Dapr Application Identifier.
  /// [appPort] The port which the application is listening on. This is the same as the `ingress` port.
  /// [appProtocol] The protocol for the app. Possible values include `http` and `grpc`. Defaults to `http`.
  AppDapr({
    required this.appId,
    this.appPort,
    this.appProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appPort': ?appPort,
      'appProtocol': ?appProtocol,
    };
  }

  factory AppDapr.fromMap(Map<String, dynamic> map) {
    return AppDapr(
      appId: map['appId'] as String,
      appPort: map['appPort'] == null ? null : map['appPort'] as int,
      appProtocol: map['appProtocol'] == null ? null : map['appProtocol'] as String,
    );
  }
}

