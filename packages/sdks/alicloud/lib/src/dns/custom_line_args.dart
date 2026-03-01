// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_line_ip_segment_list.dart';

/// {@template pulumi_dns_custom_line_custom_line_args_doc}
/// The set of arguments for CustomLine.
/// {@endtemplate}
/// {@macro pulumi_dns_custom_line_custom_line_args_doc}
class CustomLineArgs {
  /// The name of the Custom Line.
  final pulumi.Input<String> customLineName;
  /// The Domain name.
  final pulumi.Input<String> domainName;
  /// The IP segment list. See `ip_segment_list` below for details.
  final pulumi.Input<List<CustomLineIpSegmentList>> ipSegmentLists;
  /// The lang.
  final pulumi.Input<String>? lang;

  /// Creates a new [CustomLineArgs].
  /// [customLineName] The name of the Custom Line.
  /// [domainName] The Domain name.
  /// [ipSegmentLists] The IP segment list. See `ip_segment_list` below for details.
  /// [lang] The lang.
  CustomLineArgs({
    required pulumi.Output<String> customLineName,
    required pulumi.Output<String> domainName,
    required pulumi.Output<List<CustomLineIpSegmentList>> ipSegmentLists,
    pulumi.Output<String>? lang,
  }) :
      customLineName = pulumi.Input.asInput<String>(customLineName),
      domainName = pulumi.Input.asInput<String>(domainName),
      ipSegmentLists = pulumi.Input.asInput<List<CustomLineIpSegmentList>>(ipSegmentLists),
      lang = pulumi.Input.asOptionalInput<String>(lang);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLineName': customLineName,
      'domainName': domainName,
      'ipSegmentLists': pulumi.Input.mapInputValue<List<CustomLineIpSegmentList>, List<Map<String, dynamic>>>(ipSegmentLists, (value) => pulumi.Input.encodeList<CustomLineIpSegmentList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lang': ?lang,
    };
  }

  factory CustomLineArgs.fromMap(Map<String, dynamic> map) {
    return CustomLineArgs(
      customLineName: pulumi.Output.create<String>(map['customLineName'] as String),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      ipSegmentLists: pulumi.Output.create<List<CustomLineIpSegmentList>>(pulumi.Input.decodeList<CustomLineIpSegmentList>(map['ipSegmentLists'], (value) => CustomLineIpSegmentList.fromMap((value as Map).cast<String, dynamic>()))),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
    );
  }
}

