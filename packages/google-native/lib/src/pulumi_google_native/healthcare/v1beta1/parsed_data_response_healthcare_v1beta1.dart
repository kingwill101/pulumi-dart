// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'segment_response_healthcare_v1beta1.dart';

/// The content of an HL7v2 message in a structured format.
class ParsedDataResponseHealthcareV1beta1 {
  final List<SegmentResponseHealthcareV1beta1> segments;

  ParsedDataResponseHealthcareV1beta1({
    required this.segments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['segments'] = pulumi.Input.encodeList<SegmentResponseHealthcareV1beta1,
        Map<String, dynamic>>(segments, (value) => value.toMap());
    return map;
  }

  factory ParsedDataResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ParsedDataResponseHealthcareV1beta1(
      segments: pulumi.Input.decodeList<SegmentResponseHealthcareV1beta1>(
          map['segments'],
          (value) => SegmentResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
