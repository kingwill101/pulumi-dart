// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream {
  final pulumi.Input<String> streamName;

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
      streamName: (map['streamName'] as String).input(),
    );
  }
}

