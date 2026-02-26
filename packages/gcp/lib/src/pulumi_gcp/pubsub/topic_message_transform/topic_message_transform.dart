// ignore_for_file: unused_element, unnecessary_cast

import '../topic_message_transform_javascript_udf/topic_message_transform_javascript_udf.dart';

class TopicMessageTransform {
  /// Controls whether or not to use this transform. If not set or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>,
  /// the transform will be applied to messages. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? disabled;

  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique <span pulumi-lang-nodejs="`functionName`" pulumi-lang-dotnet="`FunctionName`" pulumi-lang-go="`functionName`" pulumi-lang-python="`function_name`" pulumi-lang-yaml="`functionName`" pulumi-lang-java="`functionName`">`function_name`</span>.
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
