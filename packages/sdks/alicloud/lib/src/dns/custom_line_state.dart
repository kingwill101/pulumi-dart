// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_line_ip_segment_list.dart';

/// Input properties used for looking up and filtering CustomLine resources.
class CustomLineState {
  /// The name of the Custom Line.
  final pulumi.Input<String>? customLineName;
  /// The Domain name.
  final pulumi.Input<String>? domainName;
  /// The IP segment list. See `ip_segment_list` below for details.
  final pulumi.Input<List<CustomLineIpSegmentList>>? ipSegmentLists;
  /// The lang.
  final pulumi.Input<String>? lang;

  /// Creates a new [CustomLineState].
  /// [customLineName] The name of the Custom Line.
  /// [domainName] The Domain name.
  /// [ipSegmentLists] The IP segment list. See `ip_segment_list` below for details.
  /// [lang] The lang.
  CustomLineState({
    this.customLineName,
    this.domainName,
    this.ipSegmentLists,
    this.lang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLineName': ?customLineName,
      'domainName': ?domainName,
      'ipSegmentLists': ?pulumi.Input.mapOptionalInputValue<List<CustomLineIpSegmentList>, List<Map<String, dynamic>>>(ipSegmentLists, (value) => pulumi.Input.encodeList<CustomLineIpSegmentList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lang': ?lang,
    };
  }

  factory CustomLineState.fromMap(Map<String, dynamic> map) {
    return CustomLineState(
      customLineName: map['customLineName'] == null ? null : (map['customLineName']! as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      ipSegmentLists: map['ipSegmentLists'] == null ? null : (pulumi.Input.decodeList<CustomLineIpSegmentList>(map['ipSegmentLists']!, (value) => CustomLineIpSegmentList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
    );
  }
}

