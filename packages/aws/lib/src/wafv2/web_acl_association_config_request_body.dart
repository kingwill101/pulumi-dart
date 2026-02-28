// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_association_config_request_body_api_gateway.dart';
import 'web_acl_association_config_request_body_app_runner_service.dart';
import 'web_acl_association_config_request_body_cloudfront.dart';
import 'web_acl_association_config_request_body_cognito_user_pool.dart';
import 'web_acl_association_config_request_body_verified_access_instance.dart';

class WebAclAssociationConfigRequestBody {
  /// Customizes the request body that your protected Amazon API Gateway REST APIs forward to AWS WAF for inspection. Applicable only when `scope` is set to `CLOUDFRONT`. See `api_gateway` below for details.
  final WebAclAssociationConfigRequestBodyApiGateway? apiGateway;

  /// Customizes the request body that your protected Amazon App Runner services forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `app_runner_service` below for details.
  final WebAclAssociationConfigRequestBodyAppRunnerService? appRunnerService;

  /// Customizes the request body that your protected Amazon CloudFront distributions forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `cloudfront` below for details.
  final WebAclAssociationConfigRequestBodyCloudfront? cloudfront;

  /// Customizes the request body that your protected Amazon Cognito user pools forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `cognito_user_pool` below for details.
  final WebAclAssociationConfigRequestBodyCognitoUserPool? cognitoUserPool;

  /// Customizes the request body that your protected AWS Verfied Access instances forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `verified_access_instance` below for details.
  final WebAclAssociationConfigRequestBodyVerifiedAccessInstance?
      verifiedAccessInstance;

  /// Creates a new [WebAclAssociationConfigRequestBody].
  /// [apiGateway] Customizes the request body that your protected Amazon API Gateway REST APIs forward to AWS WAF for inspection. Applicable only when `scope` is set to `CLOUDFRONT`. See `api_gateway` below for details.
  /// [appRunnerService] Customizes the request body that your protected Amazon App Runner services forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `app_runner_service` below for details.
  /// [cloudfront] Customizes the request body that your protected Amazon CloudFront distributions forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `cloudfront` below for details.
  /// [cognitoUserPool] Customizes the request body that your protected Amazon Cognito user pools forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `cognito_user_pool` below for details.
  /// [verifiedAccessInstance] Customizes the request body that your protected AWS Verfied Access instances forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `verified_access_instance` below for details.
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
