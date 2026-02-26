// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_default_action_allow_custom_request_handling/web_acl_default_action_allow_custom_request_handling.dart';

class WebAclDefaultActionAllow {
  /// Defines custom handling for the web request. See <span pulumi-lang-nodejs="`customRequestHandling`" pulumi-lang-dotnet="`CustomRequestHandling`" pulumi-lang-go="`customRequestHandling`" pulumi-lang-python="`custom_request_handling`" pulumi-lang-yaml="`customRequestHandling`" pulumi-lang-java="`customRequestHandling`">`custom_request_handling`</span> below for details.
  final WebAclDefaultActionAllowCustomRequestHandling? customRequestHandling;

  WebAclDefaultActionAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRequestHandlingValue = customRequestHandling;
    if (customRequestHandlingValue != null) {
      map['customRequestHandling'] = customRequestHandlingValue.toMap();
    }
    return map;
  }

  factory WebAclDefaultActionAllow.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultActionAllow(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclDefaultActionAllowCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}
