// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLogShipper.
class GetLogShipperResult {
  /// Log Analysis Service authorization status.
  final String authStatus;

  /// Cloud Security Center purchase status.
  final String buyStatus;
  final String? enable;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Log analysis shipping activation status.
  final String openStatus;

  /// Log analysis project status.
  final String slsProjectStatus;

  /// Log Analysis Service is activated.
  final String slsServiceStatus;

  /// The current service enable status.
  final String status;

  /// Creates a new [GetLogShipperResult].
  /// [authStatus] Log Analysis Service authorization status.
  /// [buyStatus] Cloud Security Center purchase status.
  /// [enable] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [openStatus] Log analysis shipping activation status.
  /// [slsProjectStatus] Log analysis project status.
  /// [slsServiceStatus] Log Analysis Service is activated.
  /// [status] The current service enable status.
  GetLogShipperResult({
    required this.authStatus,
    required this.buyStatus,
    this.enable,
    required this.id,
    required this.openStatus,
    required this.slsProjectStatus,
    required this.slsServiceStatus,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authStatus': authStatus,
      'buyStatus': buyStatus,
      'enable': ?enable,
      'id': id,
      'openStatus': openStatus,
      'slsProjectStatus': slsProjectStatus,
      'slsServiceStatus': slsServiceStatus,
      'status': status,
    };
  }

  factory GetLogShipperResult.fromMap(Map<String, dynamic> map) {
    return GetLogShipperResult(
      authStatus: map['authStatus'] as String,
      buyStatus: map['buyStatus'] as String,
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      openStatus: map['openStatus'] as String,
      slsProjectStatus: map['slsProjectStatus'] as String,
      slsServiceStatus: map['slsServiceStatus'] as String,
      status: map['status'] as String,
    );
  }
}
