// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action_allow_custom_request_handling.dart';

class WebAclDefaultActionAllow {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final pulumi.Input<WebAclDefaultActionAllowCustomRequestHandling>? customRequestHandling;

  /// Creates a new [WebAclDefaultActionAllow].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclDefaultActionAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclDefaultActionAllowCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclDefaultActionAllow.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultActionAllow(
      customRequestHandling: map['customRequestHandling'] == null ? null : ((WebAclDefaultActionAllowCustomRequestHandling.fromMap((map['customRequestHandling']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

