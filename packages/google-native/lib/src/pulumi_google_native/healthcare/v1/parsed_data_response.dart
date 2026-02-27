// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'segment_response.dart';

/// The content of a HL7v2 message in a structured format.
class ParsedDataResponse {
  final List<SegmentResponse> segments;

  ParsedDataResponse({
    required this.segments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['segments'] = Input.encodeList<SegmentResponse, Map<String, dynamic>>(
        segments, (value) => value.toMap());
    return map;
  }

  factory ParsedDataResponse.fromMap(Map<String, dynamic> map) {
    return ParsedDataResponse(
      segments: Input.decodeList<SegmentResponse>(
          map['segments'],
          (value) =>
              SegmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
