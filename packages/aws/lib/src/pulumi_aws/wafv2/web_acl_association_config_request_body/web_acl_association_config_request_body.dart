// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_association_config_request_body_api_gateway/web_acl_association_config_request_body_api_gateway.dart';
import '../web_acl_association_config_request_body_app_runner_service/web_acl_association_config_request_body_app_runner_service.dart';
import '../web_acl_association_config_request_body_cloudfront/web_acl_association_config_request_body_cloudfront.dart';
import '../web_acl_association_config_request_body_cognito_user_pool/web_acl_association_config_request_body_cognito_user_pool.dart';
import '../web_acl_association_config_request_body_verified_access_instance/web_acl_association_config_request_body_verified_access_instance.dart';

class WebAclAssociationConfigRequestBody {
  /// Customizes the request body that your protected Amazon API Gateway REST APIs forward to AWS WAF for inspection. Applicable only when <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span> is set to `CLOUDFRONT`. See <span pulumi-lang-nodejs="`apiGateway`" pulumi-lang-dotnet="`ApiGateway`" pulumi-lang-go="`apiGateway`" pulumi-lang-python="`api_gateway`" pulumi-lang-yaml="`apiGateway`" pulumi-lang-java="`apiGateway`">`api_gateway`</span> below for details.
  final WebAclAssociationConfigRequestBodyApiGateway? apiGateway;

  /// Customizes the request body that your protected Amazon App Runner services forward to AWS WAF for inspection. Applicable only when <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span> is set to `REGIONAL`. See <span pulumi-lang-nodejs="`appRunnerService`" pulumi-lang-dotnet="`AppRunnerService`" pulumi-lang-go="`appRunnerService`" pulumi-lang-python="`app_runner_service`" pulumi-lang-yaml="`appRunnerService`" pulumi-lang-java="`appRunnerService`">`app_runner_service`</span> below for details.
  final WebAclAssociationConfigRequestBodyAppRunnerService? appRunnerService;

  /// Customizes the request body that your protected Amazon CloudFront distributions forward to AWS WAF for inspection. Applicable only when <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span> is set to `REGIONAL`. See <span pulumi-lang-nodejs="`cloudfront`" pulumi-lang-dotnet="`Cloudfront`" pulumi-lang-go="`cloudfront`" pulumi-lang-python="`cloudfront`" pulumi-lang-yaml="`cloudfront`" pulumi-lang-java="`cloudfront`">`cloudfront`</span> below for details.
  final WebAclAssociationConfigRequestBodyCloudfront? cloudfront;

  /// Customizes the request body that your protected Amazon Cognito user pools forward to AWS WAF for inspection. Applicable only when <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span> is set to `REGIONAL`. See <span pulumi-lang-nodejs="`cognitoUserPool`" pulumi-lang-dotnet="`CognitoUserPool`" pulumi-lang-go="`cognitoUserPool`" pulumi-lang-python="`cognito_user_pool`" pulumi-lang-yaml="`cognitoUserPool`" pulumi-lang-java="`cognitoUserPool`">`cognito_user_pool`</span> below for details.
  final WebAclAssociationConfigRequestBodyCognitoUserPool? cognitoUserPool;

  /// Customizes the request body that your protected AWS Verfied Access instances forward to AWS WAF for inspection. Applicable only when <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span> is set to `REGIONAL`. See <span pulumi-lang-nodejs="`verifiedAccessInstance`" pulumi-lang-dotnet="`VerifiedAccessInstance`" pulumi-lang-go="`verifiedAccessInstance`" pulumi-lang-python="`verified_access_instance`" pulumi-lang-yaml="`verifiedAccessInstance`" pulumi-lang-java="`verifiedAccessInstance`">`verified_access_instance`</span> below for details.
  final WebAclAssociationConfigRequestBodyVerifiedAccessInstance?
      verifiedAccessInstance;

  WebAclAssociationConfigRequestBody({
    this.apiGateway,
    this.appRunnerService,
    this.cloudfront,
    this.cognitoUserPool,
    this.verifiedAccessInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiGatewayValue = apiGateway;
    if (apiGatewayValue != null) {
      map['apiGateway'] = apiGatewayValue.toMap();
    }
    final appRunnerServiceValue = appRunnerService;
    if (appRunnerServiceValue != null) {
      map['appRunnerService'] = appRunnerServiceValue.toMap();
    }
    final cloudfrontValue = cloudfront;
    if (cloudfrontValue != null) {
      map['cloudfront'] = cloudfrontValue.toMap();
    }
    final cognitoUserPoolValue = cognitoUserPool;
    if (cognitoUserPoolValue != null) {
      map['cognitoUserPool'] = cognitoUserPoolValue.toMap();
    }
    final verifiedAccessInstanceValue = verifiedAccessInstance;
    if (verifiedAccessInstanceValue != null) {
      map['verifiedAccessInstance'] = verifiedAccessInstanceValue.toMap();
    }
    return map;
  }

  factory WebAclAssociationConfigRequestBody.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfigRequestBody(
      apiGateway: map['apiGateway'] == null
          ? null
          : WebAclAssociationConfigRequestBodyApiGateway.fromMap(
              (map['apiGateway'] as Map).cast<String, dynamic>()),
      appRunnerService: map['appRunnerService'] == null
          ? null
          : WebAclAssociationConfigRequestBodyAppRunnerService.fromMap(
              (map['appRunnerService'] as Map).cast<String, dynamic>()),
      cloudfront: map['cloudfront'] == null
          ? null
          : WebAclAssociationConfigRequestBodyCloudfront.fromMap(
              (map['cloudfront'] as Map).cast<String, dynamic>()),
      cognitoUserPool: map['cognitoUserPool'] == null
          ? null
          : WebAclAssociationConfigRequestBodyCognitoUserPool.fromMap(
              (map['cognitoUserPool'] as Map).cast<String, dynamic>()),
      verifiedAccessInstance: map['verifiedAccessInstance'] == null
          ? null
          : WebAclAssociationConfigRequestBodyVerifiedAccessInstance.fromMap(
              (map['verifiedAccessInstance'] as Map).cast<String, dynamic>()),
    );
  }
}
