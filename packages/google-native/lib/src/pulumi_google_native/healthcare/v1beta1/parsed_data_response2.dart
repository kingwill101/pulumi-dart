// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'segment_response2.dart';

/// The content of an HL7v2 message in a structured format.
class ParsedDataResponse2 {
  final List<SegmentResponse2> segments;

  ParsedDataResponse2({
    required this.segments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['segments'] = Input.encodeList<SegmentResponse2, Map<String, dynamic>>(
        segments, (value) => value.toMap());
    return map;
  }

  factory ParsedDataResponse2.fromMap(Map<String, dynamic> map) {
    return ParsedDataResponse2(
      segments: Input.decodeList<SegmentResponse2>(
          map['segments'],
          (value) =>
              SegmentResponse2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
