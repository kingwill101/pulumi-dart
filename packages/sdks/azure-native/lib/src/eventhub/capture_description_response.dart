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
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sizeLimitInBytes: (() { final guardedValue = map['sizeLimitInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      skipEmptyArchives: (() { final guardedValue = map['skipEmptyArchives']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

