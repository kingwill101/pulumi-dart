import 'package:pulumi/pulumi.dart';
import 'host_rule_response3.dart';
import 'http_header_action_response3.dart';
import 'http_redirect_action_response3.dart';
import 'http_route_action_response3.dart';
import 'path_matcher_response3.dart';
import 'region_url_map_args3.dart';
import 'url_map_test_response3.dart';

/// Creates a UrlMap resource in the specified project using the data included in the request.
class RegionUrlMap3 extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  late final Output<HttpRouteActionResponse3> defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  late final Output<String> defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  late final Output<HttpRedirectActionResponse3> defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field is ignored when inserting a UrlMap. An up-to-date fingerprint must be provided in order to update the UrlMap, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a UrlMap.
  late final Output<String> fingerprint;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  late final Output<HttpHeaderActionResponse3> headerAction;

  /// The list of host rules to use against the URL.
  late final Output<List<HostRuleResponse3>> hostRules;

  /// Type of the resource. Always compute#urlMaps for url maps.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The list of named PathMatchers to use against the URL.
  late final Output<List<PathMatcherResponse3>> pathMatchers;
  late final Output<String> project;
  late final Output<String> region;

  /// begin_interface: MixerMutationRequestBuilder Request ID to support idempotency.
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  late final Output<List<UrlMapTestResponse3>> tests;

  RegionUrlMap3(
    String name, {
    RegionUrlMapArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:RegionUrlMap',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = Output.createUnknown<String>();
    this.defaultRouteAction = Output.createUnknown<HttpRouteActionResponse3>();
    this.defaultService = Output.createUnknown<String>();
    this.defaultUrlRedirect =
        Output.createUnknown<HttpRedirectActionResponse3>();
    this.description = Output.createUnknown<String>();
    this.fingerprint = Output.createUnknown<String>();
    this.headerAction = Output.createUnknown<HttpHeaderActionResponse3>();
    this.hostRules = Output.createUnknown<List<HostRuleResponse3>>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.pathMatchers = Output.createUnknown<List<PathMatcherResponse3>>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.tests = Output.createUnknown<List<UrlMapTestResponse3>>();
  }
}
