// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicyRemoveHeadersConfigItem {
  /// The HTTP header name.
  final pulumi.Input<String> header;

  /// Creates a new [GetResponseHeadersPolicyRemoveHeadersConfigItem].
  /// [header] The HTTP header name.
  const GetResponseHeadersPolicyRemoveHeadersConfigItem({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
    };
  }

  factory GetResponseHeadersPolicyRemoveHeadersConfigItem.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyRemoveHeadersConfigItem(
      header: pulumi.Input.fromValue(map['header'] as String),
    );
  }
}

