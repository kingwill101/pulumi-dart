// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_message_transform_javascript_udf.dart';

class SubscriptionMessageTransform {
  /// Controls whether or not to use this transform. If not set or `false`,
  /// the transform will be applied to messages. Default: `true`.
  final bool? disabled;
  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique `function_name`.
  /// Structure is documented below.
  final SubscriptionMessageTransformJavascriptUdf? javascriptUdf;

  /// Creates a new [SubscriptionMessageTransform].
  /// [disabled] Controls whether or not to use this transform. If not set or `false`,
  /// [javascriptUdf] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  SubscriptionMessageTransform({
    this.disabled,
    this.javascriptUdf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'javascriptUdf': ?javascriptUdf == null ? null : javascriptUdf!.toMap(),
    };
  }

  factory SubscriptionMessageTransform.fromMap(Map<String, dynamic> map) {
    return SubscriptionMessageTransform(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      javascriptUdf: map['javascriptUdf'] == null ? null : SubscriptionMessageTransformJavascriptUdf.fromMap((map['javascriptUdf'] as Map).cast<String, dynamic>()),
    );
  }
}

