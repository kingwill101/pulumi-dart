// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_association_config_request_body/web_acl_association_config_request_body.dart';

class WebAclAssociationConfig {
  /// Customizes the request body that your protected resource forward to AWS WAF for inspection. See <span pulumi-lang-nodejs="`requestBody`" pulumi-lang-dotnet="`RequestBody`" pulumi-lang-go="`requestBody`" pulumi-lang-python="`request_body`" pulumi-lang-yaml="`requestBody`" pulumi-lang-java="`requestBody`">`request_body`</span> below for details.
  final List<WebAclAssociationConfigRequestBody>? requestBodies;

  WebAclAssociationConfig({
    this.requestBodies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestBodiesValue = requestBodies;
    if (requestBodiesValue != null) {
      map['requestBodies'] = Input.encodeList<
          WebAclAssociationConfigRequestBody,
          Map<String, dynamic>>(requestBodiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclAssociationConfig.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfig(
      requestBodies: map['requestBodies'] == null
          ? null
          : Input.decodeList<WebAclAssociationConfigRequestBody>(
              map['requestBodies'],
              (value) => WebAclAssociationConfigRequestBody.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
