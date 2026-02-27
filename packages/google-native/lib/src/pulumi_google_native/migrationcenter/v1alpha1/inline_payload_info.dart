// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'inline_payload_info_format.dart';
import 'payload_file.dart';

/// A resource that represents the inline import job payload.
class InlinePayloadInfo {
  /// The import job format.
  final InlinePayloadInfoFormat? format;

  /// List of payload files.
  final List<PayloadFile>? payload;

  InlinePayloadInfo({
    this.format,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue.value;
    }
    final payloadValue = payload;
    if (payloadValue != null) {
      map['payload'] = Input.encodeList<PayloadFile, Map<String, dynamic>>(
          payloadValue, (value) => value.toMap());
    }
    return map;
  }

  factory InlinePayloadInfo.fromMap(Map<String, dynamic> map) {
    return InlinePayloadInfo(
      format: map['format'] == null
          ? null
          : InlinePayloadInfoFormat.fromValue(map['format'] as String),
      payload: map['payload'] == null
          ? null
          : Input.decodeList<PayloadFile>(
              map['payload'],
              (value) =>
                  PayloadFile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
