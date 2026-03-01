// ignore_for_file: unused_element, unnecessary_cast

import 'destination.dart';
import 'encoding_capture_description.dart';

/// Properties to configure capture description for eventhub
class CaptureDescription {
  /// Properties of Destination where capture will be stored. (Storage Account, Blob Names)
  final Destination? destination;
  /// A value that indicates whether capture description is enabled.
  final bool? enabled;
  /// Enumerates the possible values for the encoding format of capture description. Note: 'AvroDeflate' will be deprecated in New API Version
  final EncodingCaptureDescription? encoding;
  /// The time window allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds
  final int? intervalInSeconds;
  /// The size window defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes
  final int? sizeLimitInBytes;
  /// A value that indicates whether to Skip Empty Archives
  final bool? skipEmptyArchives;

  /// Creates a new [CaptureDescription].
  /// [destination] Properties of Destination where capture will be stored. (Storage Account, Blob Names)
  /// [enabled] A value that indicates whether capture description is enabled.
  /// [encoding] Enumerates the possible values for the encoding format of capture description. Note: 'AvroDeflate' will be deprecated in New API Version
  /// [intervalInSeconds] The time window allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds
  /// [sizeLimitInBytes] The size window defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes
  /// [skipEmptyArchives] A value that indicates whether to Skip Empty Archives
  CaptureDescription({
    this.destination,
    this.enabled,
    this.encoding,
    this.intervalInSeconds,
    this.sizeLimitInBytes,
    this.skipEmptyArchives,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination == null ? null : destination!.toMap(),
      'enabled': ?enabled,
      'encoding': ?encoding == null ? null : encoding!.value,
      'intervalInSeconds': ?intervalInSeconds,
      'sizeLimitInBytes': ?sizeLimitInBytes,
      'skipEmptyArchives': ?skipEmptyArchives,
    };
  }

  factory CaptureDescription.fromMap(Map<String, dynamic> map) {
    return CaptureDescription(
      destination: map['destination'] == null ? null : Destination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encoding: map['encoding'] == null ? null : EncodingCaptureDescription.fromValue(map['encoding'] as String),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      sizeLimitInBytes: map['sizeLimitInBytes'] == null ? null : map['sizeLimitInBytes'] as int,
      skipEmptyArchives: map['skipEmptyArchives'] == null ? null : map['skipEmptyArchives'] as bool,
    );
  }
}

