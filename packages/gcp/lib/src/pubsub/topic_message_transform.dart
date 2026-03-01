// ignore_for_file: unused_element, unnecessary_cast

import 'topic_message_transform_javascript_udf.dart';

class TopicMessageTransform {
  /// Controls whether or not to use this transform. If not set or `false`,
  /// the transform will be applied to messages. Default: `true`.
  final bool? disabled;
  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique `function_name`.
  /// Structure is documented below.
  final TopicMessageTransformJavascriptUdf? javascriptUdf;

  /// Creates a new [TopicMessageTransform].
  /// [disabled] Controls whether or not to use this transform. If not set or `false`,
  /// [javascriptUdf] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  TopicMessageTransform({
    this.disabled,
    this.javascriptUdf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'javascriptUdf': ?javascriptUdf == null ? null : javascriptUdf!.toMap(),
    };
  }

  factory TopicMessageTransform.fromMap(Map<String, dynamic> map) {
    return TopicMessageTransform(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      javascriptUdf: map['javascriptUdf'] == null ? null : TopicMessageTransformJavascriptUdf.fromMap((map['javascriptUdf'] as Map).cast<String, dynamic>()),
    );
  }
}

