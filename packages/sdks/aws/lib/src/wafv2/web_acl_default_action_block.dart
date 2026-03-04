// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action_block_custom_response.dart';

class WebAclDefaultActionBlock {
  /// Defines a custom response for the web request. See `custom_response` below for details.
  final pulumi.Input<WebAclDefaultActionBlockCustomResponse>? customResponse;

  /// Creates a new [WebAclDefaultActionBlock].
  /// [customResponse] Defines a custom response for the web request. See `custom_response` below for details.
  WebAclDefaultActionBlock({this.customResponse});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclDefaultActionBlockCustomResponse,
            Map<String, dynamic>
          >(customResponse, (value) => value.toMap()),
    };
  }

  factory WebAclDefaultActionBlock.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultActionBlock(
      customResponse: (() {
        final guardedValue = map['customResponse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclDefaultActionBlockCustomResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
