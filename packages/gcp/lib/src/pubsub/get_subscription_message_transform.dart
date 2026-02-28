// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_message_transform_javascript_udf.dart';

class GetSubscriptionMessageTransform {
  /// Controls whether or not to use this transform. If not set or 'false',
  /// the transform will be applied to messages. Default: 'true'.
  final bool disabled;

  /// Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  /// each one must have a unique 'function_name'.
  final List<GetSubscriptionMessageTransformJavascriptUdf> javascriptUdfs;

  /// Creates a new [GetSubscriptionMessageTransform].
  /// [disabled] Controls whether or not to use this transform. If not set or 'false',
  /// [javascriptUdfs] Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,
  GetSubscriptionMessageTransform({
    required this.disabled,
    required this.javascriptUdfs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['javascriptUdfs'] = pulumi.Input.encodeList<
        GetSubscriptionMessageTransformJavascriptUdf,
        Map<String, dynamic>>(javascriptUdfs, (value) => value.toMap());
    return map;
  }

  factory GetSubscriptionMessageTransform.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionMessageTransform(
      disabled: map['disabled'] as bool,
      javascriptUdfs:
          pulumi.Input.decodeList<GetSubscriptionMessageTransformJavascriptUdf>(
              map['javascriptUdfs'],
              (value) => GetSubscriptionMessageTransformJavascriptUdf.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
