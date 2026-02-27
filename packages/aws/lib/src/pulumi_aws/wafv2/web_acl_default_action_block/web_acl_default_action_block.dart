// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_default_action_block_custom_response/web_acl_default_action_block_custom_response.dart';

class WebAclDefaultActionBlock {
  /// Defines a custom response for the web request. See `custom_response` below for details.
  final WebAclDefaultActionBlockCustomResponse? customResponse;

  WebAclDefaultActionBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customResponseValue = customResponse;
    if (customResponseValue != null) {
      map['customResponse'] = customResponseValue.toMap();
    }
    return map;
  }

  factory WebAclDefaultActionBlock.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultActionBlock(
      customResponse: map['customResponse'] == null
          ? null
          : WebAclDefaultActionBlockCustomResponse.fromMap(
              (map['customResponse'] as Map).cast<String, dynamic>()),
    );
  }
}
