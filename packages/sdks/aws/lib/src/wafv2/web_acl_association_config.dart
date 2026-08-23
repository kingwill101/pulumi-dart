// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_config_request_body.dart';

class WebAclAssociationConfig {
  /// Customizes the request body that your protected resource forward to AWS WAF for inspection. See `requestBody` below for details.
  final pulumi.Input<List<WebAclAssociationConfigRequestBody>>? requestBodies;

  /// Creates a new [WebAclAssociationConfig].
  /// [requestBodies] Customizes the request body that your protected resource forward to AWS WAF for inspection. See `requestBody` below for details.
  const WebAclAssociationConfig({
    this.requestBodies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestBodies': ?pulumi.Input.mapOptionalInputValue<List<WebAclAssociationConfigRequestBody>, List<Map<String, dynamic>>>(requestBodies, (value) => pulumi.Input.encodeList<WebAclAssociationConfigRequestBody, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclAssociationConfig.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfig(
      requestBodies: (() { final guardedValue = map['requestBodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclAssociationConfigRequestBody>(guardedValue, (value) => WebAclAssociationConfigRequestBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
