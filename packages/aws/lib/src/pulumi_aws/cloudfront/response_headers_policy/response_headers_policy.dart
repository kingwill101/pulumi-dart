import 'package:pulumi/pulumi.dart';
import '../response_headers_policy_cors_config/response_headers_policy_cors_config.dart';
import '../response_headers_policy_custom_headers_config/response_headers_policy_custom_headers_config.dart';
import '../response_headers_policy_remove_headers_config/response_headers_policy_remove_headers_config.dart';
import '../response_headers_policy_security_headers_config/response_headers_policy_security_headers_config.dart';
import '../response_headers_policy_server_timing_headers_config/response_headers_policy_server_timing_headers_config.dart';
import 'response_headers_policy_args.dart';

/// Provides a CloudFront response headers policy resource.
/// A response headers policy contains information about a set of HTTP response headers and their values.
/// After you create a response headers policy, you can use its ID to attach it to one or more cache behaviors in a CloudFront distribution.
/// When it’s attached to a cache behavior, CloudFront adds the headers in the policy to every response that it sends for requests that match the cache behavior.
///
/// ## Example Usage
///
/// The example below creates a CloudFront response headers policy.
///
///
///
/// The example below creates a CloudFront response headers policy with a custom headers config.
///
///
///
/// The example below creates a CloudFront response headers policy with a custom headers config, remove headers config and server timing headers config.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Response Headers Policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/responseHeadersPolicy:ResponseHeadersPolicy policy 658327ea-f89d-4fab-a63d-7e88639e58f9
/// ```
class ResponseHeadersPolicy extends CustomResource {
  /// The response headers policy ARN.
  late final Output<String> arn;

  /// A comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  late final Output<String?> comment;

  /// A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  late final Output<ResponseHeadersPolicyCorsConfig?> corsConfig;

  /// Object that contains an attribute `items` that contains a list of custom headers. See Custom Header for more information.
  late final Output<ResponseHeadersPolicyCustomHeadersConfig?>
      customHeadersConfig;

  /// The current version of the response headers policy.
  late final Output<String> etag;

  /// A unique name to identify the response headers policy.
  late final Output<String> name;

  /// A configuration for a set of HTTP headers to remove from the HTTP response. Object that contains an attribute `items` that contains a list of headers. See Remove Header for more information.
  late final Output<ResponseHeadersPolicyRemoveHeadersConfig?>
      removeHeadersConfig;

  /// A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  late final Output<ResponseHeadersPolicySecurityHeadersConfig?>
      securityHeadersConfig;

  /// A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  late final Output<ResponseHeadersPolicyServerTimingHeadersConfig?>
      serverTimingHeadersConfig;

  ResponseHeadersPolicy(
    String name, {
    ResponseHeadersPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/responseHeadersPolicy:ResponseHeadersPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.corsConfig =
        registerOutput<ResponseHeadersPolicyCorsConfig?>('corsConfig');
    this.customHeadersConfig =
        registerOutput<ResponseHeadersPolicyCustomHeadersConfig?>(
            'customHeadersConfig');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.removeHeadersConfig =
        registerOutput<ResponseHeadersPolicyRemoveHeadersConfig?>(
            'removeHeadersConfig');
    this.securityHeadersConfig =
        registerOutput<ResponseHeadersPolicySecurityHeadersConfig?>(
            'securityHeadersConfig');
    this.serverTimingHeadersConfig =
        registerOutput<ResponseHeadersPolicyServerTimingHeadersConfig?>(
            'serverTimingHeadersConfig');
  }
}
