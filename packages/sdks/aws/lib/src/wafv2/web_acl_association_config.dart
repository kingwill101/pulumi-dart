// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_config_request_body.dart';

class WebAclAssociationConfig {
  /// Customizes the request body that your protected resource forward to AWS WAF for inspection. See `request_body` below for details.
  final pulumi.Input<List<WebAclAssociationConfigRequestBody>>? requestBodies;

  /// Creates a new [WebAclAssociationConfig].
  /// [requestBodies] Customizes the request body that your protected resource forward to AWS WAF for inspection. See `request_body` below for details.
  WebAclAssociationConfig({
    this.requestBodies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestBodies': ?pulumi.Input.mapOptionalInputValue<List<WebAclAssociationConfigRequestBody>, List<Map<String, dynamic>>>(requestBodies, (value) => pulumi.Input.encodeList<WebAclAssociationConfigRequestBody, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclAssociationConfig.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfig(
      requestBodies: map['requestBodies'] == null ? null : ((pulumi.Input.decodeList<WebAclAssociationConfigRequestBody>(map['requestBodies']!, (value) => WebAclAssociationConfigRequestBody.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

