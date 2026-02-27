import 'package:pulumi/pulumi.dart';
import '../origin_request_policy_cookies_config/origin_request_policy_cookies_config.dart';
import '../origin_request_policy_headers_config/origin_request_policy_headers_config.dart';
import '../origin_request_policy_query_strings_config/origin_request_policy_query_strings_config.dart';
import 'origin_request_policy_args.dart';

/// ## Example Usage
///
/// The following example below creates a CloudFront origin request policy.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Origin Request Policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originRequestPolicy:OriginRequestPolicy policy ccca32ef-dce3-4df3-80df-1bd3000bc4d3
/// ```
class OriginRequestPolicy extends CustomResource {
  /// The origin request policy ARN.
  late final Output<String> arn;

  /// Comment to describe the origin request policy.
  late final Output<String?> comment;

  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  late final Output<OriginRequestPolicyCookiesConfig> cookiesConfig;

  /// The current version of the origin request policy.
  late final Output<String> etag;

  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  late final Output<OriginRequestPolicyHeadersConfig> headersConfig;

  /// Unique name to identify the origin request policy.
  late final Output<String> name;

  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  late final Output<OriginRequestPolicyQueryStringsConfig> queryStringsConfig;

  OriginRequestPolicy(
    String name, {
    OriginRequestPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originRequestPolicy:OriginRequestPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.cookiesConfig =
        registerOutput<OriginRequestPolicyCookiesConfig>('cookiesConfig');
    this.etag = registerOutput<String>('etag');
    this.headersConfig =
        registerOutput<OriginRequestPolicyHeadersConfig>('headersConfig');
    this.name = registerOutput<String>('name');
    this.queryStringsConfig =
        registerOutput<OriginRequestPolicyQueryStringsConfig>(
            'queryStringsConfig');
  }
}
