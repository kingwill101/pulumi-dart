// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_lines_line_ip_segment_list.dart';

class GetCustomLinesLine {
  /// The Custom line Code.
  final pulumi.Input<String> code;
  /// The first ID of the resource.
  final pulumi.Input<String> customLineId;
  /// Line name.
  final pulumi.Input<String> customLineName;
  /// The Domain name.
  final pulumi.Input<String> domainName;
  /// The ID of the Custom Line.
  final pulumi.Input<String> id;
  /// The IP segment list.
  final pulumi.Input<List<GetCustomLinesLineIpSegmentList>> ipSegmentLists;

  /// Creates a new [GetCustomLinesLine].
  /// [code] The Custom line Code.
  /// [customLineId] The first ID of the resource.
  /// [customLineName] Line name.
  /// [domainName] The Domain name.
  /// [id] The ID of the Custom Line.
  /// [ipSegmentLists] The IP segment list.
  GetCustomLinesLine({
    required this.code,
    required this.customLineId,
    required this.customLineName,
    required this.domainName,
    required this.id,
    required this.ipSegmentLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'customLineId': customLineId,
      'customLineName': customLineName,
      'domainName': domainName,
      'id': id,
      'ipSegmentLists': pulumi.Input.mapInputValue<List<GetCustomLinesLineIpSegmentList>, List<Map<String, dynamic>>>(ipSegmentLists, (value) => pulumi.Input.encodeList<GetCustomLinesLineIpSegmentList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCustomLinesLine.fromMap(Map<String, dynamic> map) {
    return GetCustomLinesLine(
      code: pulumi.Input.fromValue(map['code'] as String),
      customLineId: pulumi.Input.fromValue(map['customLineId'] as String),
      customLineName: pulumi.Input.fromValue(map['customLineName'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipSegmentLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomLinesLineIpSegmentList>(map['ipSegmentLists']!, (value) => GetCustomLinesLineIpSegmentList.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

