// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_payload_info_format.dart';
import 'payload_file.dart';

/// A resource that represents the inline import job payload.
class InlinePayloadInfo {
  /// The import job format.
  final InlinePayloadInfoFormat? format;

  /// List of payload files.
  final List<PayloadFile>? payload;

  /// Creates a new [InlinePayloadInfo].
  /// [format] The import job format.
  /// [payload] List of payload files.
  InlinePayloadInfo({this.format, this.payload});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.value,
      'payload': ?payload == null
          ? null
          : pulumi.Input.encodeList<PayloadFile, Map<String, dynamic>>(
              payload!,
              (value) => value.toMap(),
            ),
    };
  }

  factory InlinePayloadInfo.fromMap(Map<String, dynamic> map) {
    return InlinePayloadInfo(
      format: map['format'] == null
          ? null
          : InlinePayloadInfoFormat.fromValue(map['format'] as String),
      payload: map['payload'] == null
          ? null
          : pulumi.Input.decodeList<PayloadFile>(
              map['payload'],
              (value) =>
                  PayloadFile.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
