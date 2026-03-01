// ignore_for_file: unused_element, unnecessary_cast


class GetAppDapr {
  /// The Dapr Application Identifier.
  final String appId;
  /// The port which the application is listening on. This is the same as the `ingress` port.
  final int appPort;
  /// The protocol for the app.
  final String appProtocol;

  /// Creates a new [GetAppDapr].
  /// [appId] The Dapr Application Identifier.
  /// [appPort] The port which the application is listening on. This is the same as the `ingress` port.
  /// [appProtocol] The protocol for the app.
  GetAppDapr({
    required this.appId,
    required this.appPort,
    required this.appProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appPort': appPort,
      'appProtocol': appProtocol,
    };
  }

  factory GetAppDapr.fromMap(Map<String, dynamic> map) {
    return GetAppDapr(
      appId: map['appId'] as String,
      appPort: map['appPort'] as int,
      appProtocol: map['appProtocol'] as String,
    );
  }
}

