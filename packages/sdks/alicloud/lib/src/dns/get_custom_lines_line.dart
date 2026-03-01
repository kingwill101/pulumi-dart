// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_lines_line_ip_segment_list.dart';

class GetCustomLinesLine {
  /// The Custom line Code.
  final String code;
  /// The first ID of the resource.
  final String customLineId;
  /// Line name.
  final String customLineName;
  /// The Domain name.
  final String domainName;
  /// The ID of the Custom Line.
  final String id;
  /// The IP segment list.
  final List<GetCustomLinesLineIpSegmentList> ipSegmentLists;

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
      'ipSegmentLists': pulumi.Input.encodeList<GetCustomLinesLineIpSegmentList, Map<String, dynamic>>(ipSegmentLists, (value) => value.toMap()),
    };
  }

  factory GetCustomLinesLine.fromMap(Map<String, dynamic> map) {
    return GetCustomLinesLine(
      code: map['code'] as String,
      customLineId: map['customLineId'] as String,
      customLineName: map['customLineName'] as String,
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      ipSegmentLists: pulumi.Input.decodeList<GetCustomLinesLineIpSegmentList>(map['ipSegmentLists'], (value) => GetCustomLinesLineIpSegmentList.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

