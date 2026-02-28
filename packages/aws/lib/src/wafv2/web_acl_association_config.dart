// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_config_request_body.dart';

class WebAclAssociationConfig {
  /// Customizes the request body that your protected resource forward to AWS WAF for inspection. See `request_body` below for details.
  final List<WebAclAssociationConfigRequestBody>? requestBodies;

  /// Creates a new [WebAclAssociationConfig].
  /// [requestBodies] Customizes the request body that your protected resource forward to AWS WAF for inspection. See `request_body` below for details.
  WebAclAssociationConfig({
    this.requestBodies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestBodiesValue = requestBodies;
    if (requestBodiesValue != null) {
      map['requestBodies'] = pulumi.Input.encodeList<
          WebAclAssociationConfigRequestBody,
          Map<String, dynamic>>(requestBodiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclAssociationConfig.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfig(
      requestBodies: map['requestBodies'] == null
          ? null
          : pulumi.Input.decodeList<WebAclAssociationConfigRequestBody>(
              map['requestBodies'],
              (value) => WebAclAssociationConfigRequestBody.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
