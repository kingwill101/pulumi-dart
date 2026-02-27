// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../urlmap_default_custom_error_response_policy/urlmap_default_custom_error_response_policy.dart';
import '../urlmap_default_route_action/urlmap_default_route_action.dart';
import '../urlmap_default_url_redirect/urlmap_default_url_redirect.dart';
import '../urlmap_header_action/urlmap_header_action.dart';
import '../urlmap_host_rule/urlmap_host_rule.dart';
import '../urlmap_path_matcher/urlmap_path_matcher.dart';
import '../urlmap_test/urlmap_test.dart';

/// The set of arguments for URLMap.
class URLMapArgs {
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// For example, consider a UrlMap with the following configuration:
  /// UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors
  /// A RouteRule for /coming_soon/ is configured for the error code 404.
  /// If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client.
  /// defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultCustomErrorResponsePolicy>?
      defaultCustomErrorResponsePolicy;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
  /// like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.
  /// If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService
  /// is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultRouteAction>? defaultRouteAction;

  /// The backend service or backend bucket to use when none of the given rules match.
  final pulumi.Input<String>? defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultUrlRedirect>? defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create
  /// the resource.
  final pulumi.Input<String>? description;

  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. The headerAction specified here take effect after
  /// headerAction specified under pathMatcher.
  /// Structure is documented below.
  final pulumi.Input<URLMapHeaderAction>? headerAction;

  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapHostRule>>? hostRules;

  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a lowercase
  /// letter, and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcher>>? pathMatchers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The list of expected URL mapping tests. Request to update this UrlMap will
  /// succeed only if all of the test cases pass. You can specify a maximum of 100
  /// tests per UrlMap.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapTest>>? tests;

  URLMapArgs({
    this.defaultCustomErrorResponsePolicy,
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    this.hostRules,
    this.name,
    this.pathMatchers,
    this.project,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultCustomErrorResponsePolicyValue =
        defaultCustomErrorResponsePolicy;
    if (defaultCustomErrorResponsePolicyValue != null) {
      map['defaultCustomErrorResponsePolicy'] =
          pulumi.Input.mapOptionalInputValue<
                  URLMapDefaultCustomErrorResponsePolicy, Map<String, dynamic>>(
              defaultCustomErrorResponsePolicyValue, (value) => value.toMap());
    }
    final defaultRouteActionValue = defaultRouteAction;
    if (defaultRouteActionValue != null) {
      map['defaultRouteAction'] = pulumi.Input.mapOptionalInputValue<
              URLMapDefaultRouteAction, Map<String, dynamic>>(
          defaultRouteActionValue, (value) => value.toMap());
    }
    final defaultServiceValue = defaultService;
    if (defaultServiceValue != null) {
      map['defaultService'] = defaultServiceValue;
    }
    final defaultUrlRedirectValue = defaultUrlRedirect;
    if (defaultUrlRedirectValue != null) {
      map['defaultUrlRedirect'] = pulumi.Input.mapOptionalInputValue<
              URLMapDefaultUrlRedirect, Map<String, dynamic>>(
          defaultUrlRedirectValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = pulumi.Input.mapOptionalInputValue<
          URLMapHeaderAction,
          Map<String, dynamic>>(headerActionValue, (value) => value.toMap());
    }
    final hostRulesValue = hostRules;
    if (hostRulesValue != null) {
      map['hostRules'] = pulumi.Input.mapOptionalInputValue<
              List<URLMapHostRule>, List<Map<String, dynamic>>>(
          hostRulesValue,
          (value) =>
              pulumi.Input.encodeList<URLMapHostRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathMatchersValue = pathMatchers;
    if (pathMatchersValue != null) {
      map['pathMatchers'] = pulumi.Input.mapOptionalInputValue<
              List<URLMapPathMatcher>, List<Map<String, dynamic>>>(
          pathMatchersValue,
          (value) =>
              pulumi.Input.encodeList<URLMapPathMatcher, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final testsValue = tests;
    if (testsValue != null) {
      map['tests'] = pulumi.Input.mapOptionalInputValue<List<URLMapTest>,
              List<Map<String, dynamic>>>(
          testsValue,
          (value) => pulumi.Input.encodeList<URLMapTest, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory URLMapArgs.fromMap(Map<String, dynamic> map) {
    return URLMapArgs(
      defaultCustomErrorResponsePolicy:
          pulumi.Input.asOptionalInput<URLMapDefaultCustomErrorResponsePolicy>(
              map['defaultCustomErrorResponsePolicy']),
      defaultRouteAction:
          pulumi.Input.asOptionalInput<URLMapDefaultRouteAction>(
              map['defaultRouteAction']),
      defaultService:
          pulumi.Input.asOptionalInput<String>(map['defaultService']),
      defaultUrlRedirect:
          pulumi.Input.asOptionalInput<URLMapDefaultUrlRedirect>(
              map['defaultUrlRedirect']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      headerAction:
          pulumi.Input.asOptionalInput<URLMapHeaderAction>(map['headerAction']),
      hostRules:
          pulumi.Input.asOptionalInput<List<URLMapHostRule>>(map['hostRules']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pathMatchers: pulumi.Input.asOptionalInput<List<URLMapPathMatcher>>(
          map['pathMatchers']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tests: pulumi.Input.asOptionalInput<List<URLMapTest>>(map['tests']),
    );
  }
}
