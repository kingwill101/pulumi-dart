// ignore_for_file: unused_element, unnecessary_cast


class GetReplicationGroupLogDeliveryConfiguration {
  final String destination;
  final String destinationType;
  final String logFormat;
  final String logType;

  /// Creates a new [GetReplicationGroupLogDeliveryConfiguration].
  /// [destination] Required.
  /// [destinationType] Required.
  /// [logFormat] Required.
  /// [logType] Required.
  GetReplicationGroupLogDeliveryConfiguration({
    required this.destination,
    required this.destinationType,
    required this.logFormat,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'destinationType': destinationType,
      'logFormat': logFormat,
      'logType': logType,
    };
  }

  factory GetReplicationGroupLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return GetReplicationGroupLogDeliveryConfiguration(
      destination: map['destination'] as String,
      destinationType: map['destinationType'] as String,
      logFormat: map['logFormat'] as String,
      logType: map['logType'] as String,
    );
  }
}

