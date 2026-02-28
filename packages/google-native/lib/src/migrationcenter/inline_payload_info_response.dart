// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'payload_file_response.dart';

/// A resource that represents the inline import job payload.
class InlinePayloadInfoResponse {
  /// The import job format.
  final String format;

  /// List of payload files.
  final List<PayloadFileResponse> payload;

  /// Creates a new [InlinePayloadInfoResponse].
  /// [format] The import job format.
  /// [payload] List of payload files.
  InlinePayloadInfoResponse({
    required this.format,
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['payload'] =
        pulumi.Input.encodeList<PayloadFileResponse, Map<String, dynamic>>(
            payload, (value) => value.toMap());
    return map;
  }

  factory InlinePayloadInfoResponse.fromMap(Map<String, dynamic> map) {
    return InlinePayloadInfoResponse(
      format: map['format'] as String,
      payload: pulumi.Input.decodeList<PayloadFileResponse>(
          map['payload'],
          (value) => PayloadFileResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
