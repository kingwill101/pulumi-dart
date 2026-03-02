// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response.dart';

/// Properties to configure capture description for eventhub
class CaptureDescriptionResponse {
  /// Properties of Destination where capture will be stored. (Storage Account, Blob Names)
  final pulumi.Input<DestinationResponse>? destination;
  /// A value that indicates whether capture description is enabled.
  final pulumi.Input<bool>? enabled;
  /// Enumerates the possible values for the encoding format of capture description. Note: 'AvroDeflate' will be deprecated in New API Version
  final pulumi.Input<String>? encoding;
  /// The time window allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds
  final pulumi.Input<int>? intervalInSeconds;
  /// The size window defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes
  final pulumi.Input<int>? sizeLimitInBytes;
  /// A value that indicates whether to Skip Empty Archives
  final pulumi.Input<bool>? skipEmptyArchives;

  /// Creates a new [CaptureDescriptionResponse].
  /// [destination] Properties of Destination where capture will be stored. (Storage Account, Blob Names)
  /// [enabled] A value that indicates whether capture description is enabled.
  /// [encoding] Enumerates the possible values for the encoding format of capture description. Note: 'AvroDeflate' will be deprecated in New API Version
  /// [intervalInSeconds] The time window allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds
  /// [sizeLimitInBytes] The size window defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes
  /// [skipEmptyArchives] A value that indicates whether to Skip Empty Archives
  CaptureDescriptionResponse({
    this.destination,
    this.enabled,
    this.encoding,
    this.intervalInSeconds,
    this.sizeLimitInBytes,
    this.skipEmptyArchives,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<DestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'enabled': ?enabled,
      'encoding': ?encoding,
      'intervalInSeconds': ?intervalInSeconds,
      'sizeLimitInBytes': ?sizeLimitInBytes,
      'skipEmptyArchives': ?skipEmptyArchives,
    };
  }

  factory CaptureDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return CaptureDescriptionResponse(
      destination: map['destination'] == null ? null : (DestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      encoding: map['encoding'] == null ? null : (map['encoding']! as String).input(),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : (map['intervalInSeconds']! as int).input(),
      sizeLimitInBytes: map['sizeLimitInBytes'] == null ? null : (map['sizeLimitInBytes']! as int).input(),
      skipEmptyArchives: map['skipEmptyArchives'] == null ? null : (map['skipEmptyArchives']! as bool).input(),
    );
  }
}

