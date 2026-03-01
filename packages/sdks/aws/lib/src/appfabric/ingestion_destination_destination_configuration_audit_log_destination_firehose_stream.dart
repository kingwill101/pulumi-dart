// ignore_for_file: unused_element, unnecessary_cast


class IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream {
  final String streamName;

  /// Creates a new [IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream].
  /// [streamName] Required.
  IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream({
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamName': streamName,
    };
  }

  factory IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream(
      streamName: map['streamName'] as String,
    );
  }
}

