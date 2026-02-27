// ignore_for_file: unused_element, unnecessary_cast

import '../topic_message_transform_javascript_udf/topic_message_transform_javascript_udf.dart';

class TopicMessageTransform {
  /// Controls whether or not to use this transform. If not set or `false`,
  /// the transform will be applied to messages. Default: `true`.
  final bool? disabled;

  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique `function_name`.
  /// Structure is documented below.
  final TopicMessageTransformJavascriptUdf? javascriptUdf;

  TopicMessageTransform({
    this.disabled,
    this.javascriptUdf,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final javascriptUdfValue = javascriptUdf;
    if (javascriptUdfValue != null) {
      map['javascriptUdf'] = javascriptUdfValue.toMap();
    }
    return map;
  }

  factory TopicMessageTransform.fromMap(Map<String, dynamic> map) {
    return TopicMessageTransform(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      javascriptUdf: map['javascriptUdf'] == null
          ? null
          : TopicMessageTransformJavascriptUdf.fromMap(
              (map['javascriptUdf'] as Map).cast<String, dynamic>()),
    );
  }
}
