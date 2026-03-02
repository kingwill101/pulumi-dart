// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_config_request_body_api_gateway.dart';
import 'web_acl_association_config_request_body_app_runner_service.dart';
import 'web_acl_association_config_request_body_cloudfront.dart';
import 'web_acl_association_config_request_body_cognito_user_pool.dart';
import 'web_acl_association_config_request_body_verified_access_instance.dart';

class WebAclAssociationConfigRequestBody {
  /// Customizes the request body that your protected Amazon API Gateway REST APIs forward to AWS WAF for inspection. Applicable only when `scope` is set to `CLOUDFRONT`. See `api_gateway` below for details.
  final pulumi.Input<WebAclAssociationConfigRequestBodyApiGateway>? apiGateway;
  /// Customizes the request body that your protected Amazon App Runner services forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `app_runner_service` below for details.
  final pulumi.Input<WebAclAssociationConfigRequestBodyAppRunnerService>? appRunnerService;
  /// Customizes the request body that your protected Amazon CloudFront distributions forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `cloudfront` below for details.
  final pulumi.Input<WebAclAssociationConfigRequestBodyCloudfront>? cloudfront;
  /// Customizes the request body that your protected Amazon Cognito user pools forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `cognito_user_pool` below for details.
  final pulumi.Input<WebAclAssociationConfigRequestBodyCognitoUserPool>? cognitoUserPool;
  /// Customizes the request body that your protected AWS Verfied Access instances forward to AWS WAF for inspection. Applicable only when `scope` is set to `REGIONAL`. See `verified_access_instance` below for details.
  final pulumi.Input<WebAclAssociationConfigRequestBodyVerifiedAccessInstance>? verifiedAccessInstance;

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
    return <String, dynamic>{
      'apiGateway': ?pulumi.Input.mapOptionalInputValue<WebAclAssociationConfigRequestBodyApiGateway, Map<String, dynamic>>(apiGateway, (value) => value.toMap()),
      'appRunnerService': ?pulumi.Input.mapOptionalInputValue<WebAclAssociationConfigRequestBodyAppRunnerService, Map<String, dynamic>>(appRunnerService, (value) => value.toMap()),
      'cloudfront': ?pulumi.Input.mapOptionalInputValue<WebAclAssociationConfigRequestBodyCloudfront, Map<String, dynamic>>(cloudfront, (value) => value.toMap()),
      'cognitoUserPool': ?pulumi.Input.mapOptionalInputValue<WebAclAssociationConfigRequestBodyCognitoUserPool, Map<String, dynamic>>(cognitoUserPool, (value) => value.toMap()),
      'verifiedAccessInstance': ?pulumi.Input.mapOptionalInputValue<WebAclAssociationConfigRequestBodyVerifiedAccessInstance, Map<String, dynamic>>(verifiedAccessInstance, (value) => value.toMap()),
    };
  }

  factory WebAclAssociationConfigRequestBody.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationConfigRequestBody(
      apiGateway: map['apiGateway'] == null ? null : (WebAclAssociationConfigRequestBodyApiGateway.fromMap((map['apiGateway'] as Map).cast<String, dynamic>())).input(),
      appRunnerService: map['appRunnerService'] == null ? null : (WebAclAssociationConfigRequestBodyAppRunnerService.fromMap((map['appRunnerService'] as Map).cast<String, dynamic>())).input(),
      cloudfront: map['cloudfront'] == null ? null : (WebAclAssociationConfigRequestBodyCloudfront.fromMap((map['cloudfront'] as Map).cast<String, dynamic>())).input(),
      cognitoUserPool: map['cognitoUserPool'] == null ? null : (WebAclAssociationConfigRequestBodyCognitoUserPool.fromMap((map['cognitoUserPool'] as Map).cast<String, dynamic>())).input(),
      verifiedAccessInstance: map['verifiedAccessInstance'] == null ? null : (WebAclAssociationConfigRequestBodyVerifiedAccessInstance.fromMap((map['verifiedAccessInstance'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

