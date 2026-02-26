// ignore_for_file: unused_element, unnecessary_cast

class IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream {
  final String streamName;

  IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream({
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['streamName'] = streamName;
    return map;
  }

  factory IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream.fromMap(
      Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream(
      streamName: map['streamName'] as String,
    );
  }
}
