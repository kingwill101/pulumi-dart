// ignore_for_file: unused_element, unnecessary_cast

class GetClusterLogDeliveryConfiguration {
  final String destination;
  final String destinationType;
  final String logFormat;
  final String logType;

  /// Creates a new [GetClusterLogDeliveryConfiguration].
  /// [destination] Required.
  /// [destinationType] Required.
  /// [logFormat] Required.
  /// [logType] Required.
  GetClusterLogDeliveryConfiguration({
    required this.destination,
    required this.destinationType,
    required this.logFormat,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    map['destinationType'] = destinationType;
    map['logFormat'] = logFormat;
    map['logType'] = logType;
    return map;
  }

  factory GetClusterLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return GetClusterLogDeliveryConfiguration(
      destination: map['destination'] as String,
      destinationType: map['destinationType'] as String,
      logFormat: map['logFormat'] as String,
      logType: map['logType'] as String,
    );
  }
}
