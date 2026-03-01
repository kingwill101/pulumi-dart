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
    pulumi.Output<String>? customLineName,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<CustomLineIpSegmentList>>? ipSegmentLists,
    pulumi.Output<String>? lang,
  }) :
      customLineName = pulumi.Input.asOptionalInput<String>(customLineName),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      ipSegmentLists = pulumi.Input.asOptionalInput<List<CustomLineIpSegmentList>>(ipSegmentLists),
      lang = pulumi.Input.asOptionalInput<String>(lang);

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
      customLineName: map['customLineName'] == null ? null : pulumi.Output.create<String>(map['customLineName'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      ipSegmentLists: map['ipSegmentLists'] == null ? null : pulumi.Output.create<List<CustomLineIpSegmentList>>(pulumi.Input.decodeList<CustomLineIpSegmentList>(map['ipSegmentLists'], (value) => CustomLineIpSegmentList.fromMap((value as Map).cast<String, dynamic>()))),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
    );
  }
}

