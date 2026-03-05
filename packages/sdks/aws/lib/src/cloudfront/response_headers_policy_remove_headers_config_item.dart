// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicyRemoveHeadersConfigItem {
  final pulumi.Input<String> header;

  /// Creates a new [ResponseHeadersPolicyRemoveHeadersConfigItem].
  /// [header] Required.
  ResponseHeadersPolicyRemoveHeadersConfigItem({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
    };
  }

  factory ResponseHeadersPolicyRemoveHeadersConfigItem.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyRemoveHeadersConfigItem(
      header: pulumi.Input.fromValue(map['header'] as String),
    );
  }
}

