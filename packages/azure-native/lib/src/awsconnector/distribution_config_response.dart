// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_behavior_response.dart';
import 'custom_error_response_response.dart';
import 'default_cache_behavior_response.dart';
import 'legacy_custom_origin_response.dart';
import 'legacy_s3_origin_response.dart';
import 'logging_response.dart';
import 'origin_groups_response.dart';
import 'origin_response.dart';
import 'restrictions_response.dart';
import 'viewer_certificate_response.dart';

/// Definition of DistributionConfig
class DistributionConfigResponse {
  /// A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.
  final List<String>? aliases;
  /// A complex type that contains zero or more ``CacheBehavior`` elements.
  final List<CacheBehaviorResponse>? cacheBehaviors;
  /// Property cnamEs
  final List<String>? cnamEs;
  /// A comment to describe the distribution. The comment cannot be longer than 128 characters.
  final String? comment;
  /// The identifier of a continuous deployment policy. For more information, see ``CreateContinuousDeploymentPolicy``.
  final String? continuousDeploymentPolicyId;
  /// A complex type that controls the following:  +  Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.  +  How long CloudFront caches HTTP status codes in the 4xx and 5xx range.   For more information about custom error pages, see [Customizing Error Responses](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html) in the *Amazon CloudFront Developer Guide*.
  final List<CustomErrorResponseResponse>? customErrorResponses;
  /// Property customOrigin
  final LegacyCustomOriginResponse? customOrigin;
  /// A complex type that describes the default cache behavior if you don't specify a ``CacheBehavior`` element or if files don't match any of the values of ``PathPattern`` in ``CacheBehavior`` elements. You must create exactly one default cache behavior. A complex type that describes the default cache behavior if you don't specify a ``CacheBehavior`` element or if request URLs don't match any of the values of ``PathPattern`` in ``CacheBehavior`` elements. You must create exactly one default cache behavior.
  final DefaultCacheBehaviorResponse? defaultCacheBehavior;
  /// The object that you want CloudFront to request from your origin (for example, ``index.html``) when a viewer requests the root URL for your distribution (``https://www.example.com``) instead of an object in your distribution (``https://www.example.com/product-description.html``). Specifying a default root object avoids exposing the contents of your distribution. Specify only the object name, for example, ``index.html``. Don't add a ``/`` before the object name. If you don't want to specify a default root object when you create a distribution, include an empty ``DefaultRootObject`` element. To delete the default root object from an existing distribution, update the distribution configuration and include an empty ``DefaultRootObject`` element. To replace the default root object, update the distribution configuration and specify the new object. For more information about the default root object, see [Creating a Default Root Object](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html) in the *Amazon CloudFront Developer Guide*.
  final String? defaultRootObject;
  /// From this field, you can enable or disable the selected distribution.
  final bool? enabled;
  /// (Optional) Specify the maximum HTTP version(s) that you want viewers to use to communicate with CF. The default value for new distributions is ``http1.1``. For viewers and CF to use HTTP/2, viewers must support TLSv1.2 or later, and must support Server Name Indication (SNI). For viewers and CF to use HTTP/3, viewers must support TLSv1.3 and Server Name Indication (SNI). CF supports HTTP/3 connection migration to allow the viewer to switch networks without losing connection. For more information about connection migration, see [Connection Migration](https://www.rfc-editor.org/rfc/rfc9000.html#name-connection-migration) at RFC 9000. For more information about supported TLSv1.3 ciphers, see [Supported protocols and ciphers between viewers and CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html).
  final String? httpVersion;
  /// If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify ``true``. If you specify ``false``, CloudFront responds to IPv6 DNS requests with the DNS response code ``NOERROR`` and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the ``IpAddress`` parameter to restrict the IP addresses that can access your content, don't enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see [Creating a Signed URL Using a Custom Policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html) in the *Amazon CloudFront Developer Guide*. If you're using an R53AWSIntlong alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:  +  You enable IPv6 for the distribution  +  You're using alternate domain names in the URLs for your objects   For more information, see [Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html) in the *Developer Guide*. If you created a CNAME resource record set, either with R53AWSIntlong or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.
  final bool? ipV6Enabled;
  /// A complex type that controls whether access logs are written for the distribution. For more information about logging, see [Access Logs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html) in the *Amazon CloudFront Developer Guide*. A complex type that controls whether access logs are written for the distribution.
  final LoggingResponse? logging;
  /// A complex type that contains information about origin groups for this distribution. A complex data type for the origin groups specified for a distribution.
  final OriginGroupsResponse? originGroups;
  /// A complex type that contains information about origins for this distribution.
  final List<OriginResponse>? origins;
  /// The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify ``PriceClass_All``, CloudFront responds to requests for your objects from all CloudFront edge locations. If you specify a price class other than ``PriceClass_All``, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance. For more information about price classes, see [Choosing the Price Class for a CloudFront Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html) in the *Amazon CloudFront Developer Guide*. For information about CloudFront pricing, including how price classes (such as Price Class 100) map to CloudFront regions, see [Amazon CloudFront Pricing](https://aws.amazon.com/cloudfront/pricing/).
  final String? priceClass;
  /// A complex type that identifies ways in which you want to restrict distribution of your content. A complex type that identifies ways in which you want to restrict distribution of your content.
  final RestrictionsResponse? restrictions;
  /// Property s3Origin
  final LegacyS3OriginResponse? s3Origin;
  /// A Boolean that indicates whether this is a staging distribution. When this value is ``true``, this is a staging distribution. When this value is ``false``, this is not a staging distribution.
  final bool? staging;
  /// A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers. A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers. If the distribution doesn't use ``Aliases`` (also known as alternate domain names or CNAMEs)—that is, if the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net``—set ``CloudFrontDefaultCertificate`` to ``true`` and leave all other fields empty. If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), use the fields in this type to specify the following settings:  +  Which viewers the distribution accepts HTTPS connections from: only viewers that support [server name indication (SNI)](https://en.wikipedia.org/wiki/Server_Name_Indication) (recommended), or all viewers including those that don't support SNI.  +  To accept HTTPS connections from only viewers that support SNI, set ``SSLSupportMethod`` to ``sni-only``. This is recommended. Most browsers and clients support SNI. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)  +  To accept HTTPS connections from all viewers, including those that don't support SNI, set ``SSLSupportMethod`` to ``vip``. This is not recommended, and results in additional monthly charges from CloudFront. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)    +  The minimum SSL/TLS protocol version that the distribution can use to communicate with viewers. To specify a minimum version, choose a value for ``MinimumProtocolVersion``. For more information, see [Security Policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy) in the *Amazon CloudFront Developer Guide*.  +  The location of the SSL/TLS certificate, [(ACM)](https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html) (recommended) or [(IAM)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html). You specify the location by setting a value in one of the following fields (not both):  +   ``ACMCertificateArn`` (In CloudFormation, this field name is ``AcmCertificateArn``. Note the different capitalization.)  +   ``IAMCertificateId`` (In CloudFormation, this field name is ``IamCertificateId``. Note the different capitalization.)     All distributions support HTTPS connections from viewers. To require viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use ``ViewerProtocolPolicy`` in the ``CacheBehavior`` or ``DefaultCacheBehavior``. To specify how CloudFront should use SSL/TLS to communicate with your custom origin, use ``CustomOriginConfig``. For more information, see [Using HTTPS with CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html) and [Using Alternate Domain Names and HTTPS](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html) in the *Amazon CloudFront Developer Guide*.
  final ViewerCertificateResponse? viewerCertificate;
  /// A unique identifier that specifies the WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of WAF, use the ACL ARN, for example ``arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a``. To specify a web ACL created using WAF Classic, use the ACL ID, for example ``473e64fd-f30b-4765-81a0-62ad96dd167a``.  WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about WAF, see the [Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html).
  final String? webACLId;

  /// Creates a new [DistributionConfigResponse].
  /// [aliases] A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.
  /// [cacheBehaviors] A complex type that contains zero or more ``CacheBehavior`` elements.
  /// [cnamEs] Property cnamEs
  /// [comment] A comment to describe the distribution. The comment cannot be longer than 128 characters.
  /// [continuousDeploymentPolicyId] The identifier of a continuous deployment policy. For more information, see ``CreateContinuousDeploymentPolicy``.
  /// [customErrorResponses] A complex type that controls the following:  +  Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.  +  How long CloudFront caches HTTP status codes in the 4xx and 5xx range.   For more information about custom error pages, see [Customizing Error Responses](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html) in the *Amazon CloudFront Developer Guide*.
  /// [customOrigin] Property customOrigin
  /// [defaultCacheBehavior] A complex type that describes the default cache behavior if you don't specify a ``CacheBehavior`` element or if files don't match any of the values of ``PathPattern`` in ``CacheBehavior`` elements. You must create exactly one default cache behavior. A complex type that describes the default cache behavior if you don't specify a ``CacheBehavior`` element or if request URLs don't match any of the values of ``PathPattern`` in ``CacheBehavior`` elements. You must create exactly one default cache behavior.
  /// [defaultRootObject] The object that you want CloudFront to request from your origin (for example, ``index.html``) when a viewer requests the root URL for your distribution (``https://www.example.com``) instead of an object in your distribution (``https://www.example.com/product-description.html``). Specifying a default root object avoids exposing the contents of your distribution. Specify only the object name, for example, ``index.html``. Don't add a ``/`` before the object name. If you don't want to specify a default root object when you create a distribution, include an empty ``DefaultRootObject`` element. To delete the default root object from an existing distribution, update the distribution configuration and include an empty ``DefaultRootObject`` element. To replace the default root object, update the distribution configuration and specify the new object. For more information about the default root object, see [Creating a Default Root Object](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html) in the *Amazon CloudFront Developer Guide*.
  /// [enabled] From this field, you can enable or disable the selected distribution.
  /// [httpVersion] (Optional) Specify the maximum HTTP version(s) that you want viewers to use to communicate with CF. The default value for new distributions is ``http1.1``. For viewers and CF to use HTTP/2, viewers must support TLSv1.2 or later, and must support Server Name Indication (SNI). For viewers and CF to use HTTP/3, viewers must support TLSv1.3 and Server Name Indication (SNI). CF supports HTTP/3 connection migration to allow the viewer to switch networks without losing connection. For more information about connection migration, see [Connection Migration](https://www.rfc-editor.org/rfc/rfc9000.html#name-connection-migration) at RFC 9000. For more information about supported TLSv1.3 ciphers, see [Supported protocols and ciphers between viewers and CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html).
  /// [ipV6Enabled] If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify ``true``. If you specify ``false``, CloudFront responds to IPv6 DNS requests with the DNS response code ``NOERROR`` and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the ``IpAddress`` parameter to restrict the IP addresses that can access your content, don't enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see [Creating a Signed URL Using a Custom Policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html) in the *Amazon CloudFront Developer Guide*. If you're using an R53AWSIntlong alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:  +  You enable IPv6 for the distribution  +  You're using alternate domain names in the URLs for your objects   For more information, see [Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html) in the *Developer Guide*. If you created a CNAME resource record set, either with R53AWSIntlong or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.
  /// [logging] A complex type that controls whether access logs are written for the distribution. For more information about logging, see [Access Logs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html) in the *Amazon CloudFront Developer Guide*. A complex type that controls whether access logs are written for the distribution.
  /// [originGroups] A complex type that contains information about origin groups for this distribution. A complex data type for the origin groups specified for a distribution.
  /// [origins] A complex type that contains information about origins for this distribution.
  /// [priceClass] The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify ``PriceClass_All``, CloudFront responds to requests for your objects from all CloudFront edge locations. If you specify a price class other than ``PriceClass_All``, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance. For more information about price classes, see [Choosing the Price Class for a CloudFront Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html) in the *Amazon CloudFront Developer Guide*. For information about CloudFront pricing, including how price classes (such as Price Class 100) map to CloudFront regions, see [Amazon CloudFront Pricing](https://aws.amazon.com/cloudfront/pricing/).
  /// [restrictions] A complex type that identifies ways in which you want to restrict distribution of your content. A complex type that identifies ways in which you want to restrict distribution of your content.
  /// [s3Origin] Property s3Origin
  /// [staging] A Boolean that indicates whether this is a staging distribution. When this value is ``true``, this is a staging distribution. When this value is ``false``, this is not a staging distribution.
  /// [viewerCertificate] A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers. A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers. If the distribution doesn't use ``Aliases`` (also known as alternate domain names or CNAMEs)—that is, if the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net``—set ``CloudFrontDefaultCertificate`` to ``true`` and leave all other fields empty. If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), use the fields in this type to specify the following settings:  +  Which viewers the distribution accepts HTTPS connections from: only viewers that support [server name indication (SNI)](https://en.wikipedia.org/wiki/Server_Name_Indication) (recommended), or all viewers including those that don't support SNI.  +  To accept HTTPS connections from only viewers that support SNI, set ``SSLSupportMethod`` to ``sni-only``. This is recommended. Most browsers and clients support SNI. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)  +  To accept HTTPS connections from all viewers, including those that don't support SNI, set ``SSLSupportMethod`` to ``vip``. This is not recommended, and results in additional monthly charges from CloudFront. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)    +  The minimum SSL/TLS protocol version that the distribution can use to communicate with viewers. To specify a minimum version, choose a value for ``MinimumProtocolVersion``. For more information, see [Security Policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy) in the *Amazon CloudFront Developer Guide*.  +  The location of the SSL/TLS certificate, [(ACM)](https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html) (recommended) or [(IAM)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html). You specify the location by setting a value in one of the following fields (not both):  +   ``ACMCertificateArn`` (In CloudFormation, this field name is ``AcmCertificateArn``. Note the different capitalization.)  +   ``IAMCertificateId`` (In CloudFormation, this field name is ``IamCertificateId``. Note the different capitalization.)     All distributions support HTTPS connections from viewers. To require viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use ``ViewerProtocolPolicy`` in the ``CacheBehavior`` or ``DefaultCacheBehavior``. To specify how CloudFront should use SSL/TLS to communicate with your custom origin, use ``CustomOriginConfig``. For more information, see [Using HTTPS with CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html) and [Using Alternate Domain Names and HTTPS](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html) in the *Amazon CloudFront Developer Guide*.
  /// [webACLId] A unique identifier that specifies the WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of WAF, use the ACL ARN, for example ``arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a``. To specify a web ACL created using WAF Classic, use the ACL ID, for example ``473e64fd-f30b-4765-81a0-62ad96dd167a``.  WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about WAF, see the [Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html).
  DistributionConfigResponse({
    this.aliases,
    this.cacheBehaviors,
    this.cnamEs,
    this.comment,
    this.continuousDeploymentPolicyId,
    this.customErrorResponses,
    this.customOrigin,
    this.defaultCacheBehavior,
    this.defaultRootObject,
    this.enabled,
    this.httpVersion,
    this.ipV6Enabled,
    this.logging,
    this.originGroups,
    this.origins,
    this.priceClass,
    this.restrictions,
    this.s3Origin,
    this.staging,
    this.viewerCertificate,
    this.webACLId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'cacheBehaviors': ?cacheBehaviors == null ? null : pulumi.Input.encodeList<CacheBehaviorResponse, Map<String, dynamic>>(cacheBehaviors!, (value) => value.toMap()),
      'cnamEs': ?cnamEs,
      'comment': ?comment,
      'continuousDeploymentPolicyId': ?continuousDeploymentPolicyId,
      'customErrorResponses': ?customErrorResponses == null ? null : pulumi.Input.encodeList<CustomErrorResponseResponse, Map<String, dynamic>>(customErrorResponses!, (value) => value.toMap()),
      'customOrigin': ?customOrigin == null ? null : customOrigin!.toMap(),
      'defaultCacheBehavior': ?defaultCacheBehavior == null ? null : defaultCacheBehavior!.toMap(),
      'defaultRootObject': ?defaultRootObject,
      'enabled': ?enabled,
      'httpVersion': ?httpVersion,
      'ipV6Enabled': ?ipV6Enabled,
      'logging': ?logging == null ? null : logging!.toMap(),
      'originGroups': ?originGroups == null ? null : originGroups!.toMap(),
      'origins': ?origins == null ? null : pulumi.Input.encodeList<OriginResponse, Map<String, dynamic>>(origins!, (value) => value.toMap()),
      'priceClass': ?priceClass,
      'restrictions': ?restrictions == null ? null : restrictions!.toMap(),
      's3Origin': ?s3Origin == null ? null : s3Origin!.toMap(),
      'staging': ?staging,
      'viewerCertificate': ?viewerCertificate == null ? null : viewerCertificate!.toMap(),
      'webACLId': ?webACLId,
    };
  }

  factory DistributionConfigResponse.fromMap(Map<String, dynamic> map) {
    return DistributionConfigResponse(
      aliases: map['aliases'] == null ? null : (map['aliases'] as List).cast<String>(),
      cacheBehaviors: map['cacheBehaviors'] == null ? null : pulumi.Input.decodeList<CacheBehaviorResponse>(map['cacheBehaviors'], (value) => CacheBehaviorResponse.fromMap((value as Map).cast<String, dynamic>())),
      cnamEs: map['cnamEs'] == null ? null : (map['cnamEs'] as List).cast<String>(),
      comment: map['comment'] == null ? null : map['comment'] as String,
      continuousDeploymentPolicyId: map['continuousDeploymentPolicyId'] == null ? null : map['continuousDeploymentPolicyId'] as String,
      customErrorResponses: map['customErrorResponses'] == null ? null : pulumi.Input.decodeList<CustomErrorResponseResponse>(map['customErrorResponses'], (value) => CustomErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>())),
      customOrigin: map['customOrigin'] == null ? null : LegacyCustomOriginResponse.fromMap((map['customOrigin'] as Map).cast<String, dynamic>()),
      defaultCacheBehavior: map['defaultCacheBehavior'] == null ? null : DefaultCacheBehaviorResponse.fromMap((map['defaultCacheBehavior'] as Map).cast<String, dynamic>()),
      defaultRootObject: map['defaultRootObject'] == null ? null : map['defaultRootObject'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      httpVersion: map['httpVersion'] == null ? null : map['httpVersion'] as String,
      ipV6Enabled: map['ipV6Enabled'] == null ? null : map['ipV6Enabled'] as bool,
      logging: map['logging'] == null ? null : LoggingResponse.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      originGroups: map['originGroups'] == null ? null : OriginGroupsResponse.fromMap((map['originGroups'] as Map).cast<String, dynamic>()),
      origins: map['origins'] == null ? null : pulumi.Input.decodeList<OriginResponse>(map['origins'], (value) => OriginResponse.fromMap((value as Map).cast<String, dynamic>())),
      priceClass: map['priceClass'] == null ? null : map['priceClass'] as String,
      restrictions: map['restrictions'] == null ? null : RestrictionsResponse.fromMap((map['restrictions'] as Map).cast<String, dynamic>()),
      s3Origin: map['s3Origin'] == null ? null : LegacyS3OriginResponse.fromMap((map['s3Origin'] as Map).cast<String, dynamic>()),
      staging: map['staging'] == null ? null : map['staging'] as bool,
      viewerCertificate: map['viewerCertificate'] == null ? null : ViewerCertificateResponse.fromMap((map['viewerCertificate'] as Map).cast<String, dynamic>()),
      webACLId: map['webACLId'] == null ? null : map['webACLId'] as String,
    );
  }
}

