import 'package:pulumi/pulumi.dart';
import '../lb_edge_extension_extension_chain/lb_edge_extension_extension_chain.dart';
import 'lb_edge_extension_args.dart';

/// LbEdgeExtension is a resource that lets the extension service influence the selection of backend services and Cloud CDN cache keys by modifying request headers.
///
///
/// To get more information about LbEdgeExtension, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1beta1/projects.locations.lbEdgeExtensions)
/// * How-to Guides
/// * [Configure a edge extension](https://cloud.google.com/service-extensions/docs/configure-edge-extensions)
///
/// ## Example Usage
///
/// ### Network Services Lb Edge Extension Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultBackendService = new gcp.compute.BackendService("default", {
/// name: "elb-backend-subnet",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
/// name: "elb-url-map",
/// description: "a description",
/// defaultService: defaultBackendService.id,
/// hostRules: [{
/// hosts: ["mysite.com"],
/// pathMatcher: "allpaths",
/// }],
/// pathMatchers: [{
/// name: "allpaths",
/// defaultService: defaultBackendService.id,
/// pathRules: [{
/// paths: ["/*"],
/// service: defaultBackendService.id,
/// }],
/// }],
/// });
/// const defaultTargetHttpProxy = new gcp.compute.TargetHttpProxy("default", {
/// name: "elb-target-http-proxy",
/// description: "a description",
/// urlMap: defaultURLMap.id,
/// });
/// // forwarding rule
/// const _default = new gcp.compute.GlobalForwardingRule("default", {
/// name: "elb-forwarding-rule",
/// target: defaultTargetHttpProxy.id,
/// portRange: "80",
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// networkTier: "PREMIUM",
/// });
/// const wasm_plugin = new gcp.networkservices.WasmPlugin("wasm-plugin", {
/// name: "elb-wasm-plugin-data",
/// description: "my wasm plugin",
/// mainVersionId: "v1",
/// labels: {
/// test_label: "test_value",
/// },
/// logConfig: {
/// enable: true,
/// sampleRate: 1,
/// minLogLevel: "WARN",
/// },
/// versions: [{
/// versionName: "v1",
/// description: "v1 version of my wasm plugin",
/// imageUri: "projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1",
/// labels: {
/// test_label: "test_value",
/// },
/// }],
/// });
/// const defaultLbEdgeExtension = new gcp.networkservices.LbEdgeExtension("default", {
/// name: "elb-edge-ext",
/// description: "my edge extension",
/// location: "global",
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// forwardingRules: [_default.selfLink],
/// extensionChains: [{
/// name: "chain1",
/// matchCondition: {
/// celExpression: "request.host == 'example.com'",
/// },
/// extensions: [{
/// name: "ext11",
/// service: wasm_plugin.id,
/// failOpen: false,
/// supportedEvents: ["REQUEST_HEADERS"],
/// forwardHeaders: ["custom-header"],
/// }],
/// }],
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_backend_service = gcp.compute.BackendService("default",
/// name="elb-backend-subnet",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// load_balancing_scheme="EXTERNAL_MANAGED")
/// default_url_map = gcp.compute.URLMap("default",
/// name="elb-url-map",
/// description="a description",
/// default_service=default_backend_service.id,
/// host_rules=[{
/// "hosts": ["mysite.com"],
/// "path_matcher": "allpaths",
/// }],
/// path_matchers=[{
/// "name": "allpaths",
/// "default_service": default_backend_service.id,
/// "path_rules": [{
/// "paths": ["/*"],
/// "service": default_backend_service.id,
/// }],
/// }])
/// default_target_http_proxy = gcp.compute.TargetHttpProxy("default",
/// name="elb-target-http-proxy",
/// description="a description",
/// url_map=default_url_map.id)
/// # forwarding rule
/// default = gcp.compute.GlobalForwardingRule("default",
/// name="elb-forwarding-rule",
/// target=default_target_http_proxy.id,
/// port_range="80",
/// load_balancing_scheme="EXTERNAL_MANAGED",
/// network_tier="PREMIUM")
/// wasm_plugin = gcp.networkservices.WasmPlugin("wasm-plugin",
/// name="elb-wasm-plugin-data",
/// description="my wasm plugin",
/// main_version_id="v1",
/// labels={
/// "test_label": "test_value",
/// },
/// log_config={
/// "enable": True,
/// "sample_rate": 1,
/// "min_log_level": "WARN",
/// },
/// versions=[{
/// "version_name": "v1",
/// "description": "v1 version of my wasm plugin",
/// "image_uri": "projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1",
/// "labels": {
/// "test_label": "test_value",
/// },
/// }])
/// default_lb_edge_extension = gcp.networkservices.LbEdgeExtension("default",
/// name="elb-edge-ext",
/// description="my edge extension",
/// location="global",
/// load_balancing_scheme="EXTERNAL_MANAGED",
/// forwarding_rules=[default.self_link],
/// extension_chains=[{
/// "name": "chain1",
/// "match_condition": {
/// "cel_expression": "request.host == 'example.com'",
/// },
/// "extensions": [{
/// "name": "ext11",
/// "service": wasm_plugin.id,
/// "fail_open": False,
/// "supported_events": ["REQUEST_HEADERS"],
/// "forward_headers": ["custom-header"],
/// }],
/// }],
/// labels={
/// "foo": "bar",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultBackendService = new Gcp.Compute.BackendService("default", new()
/// {
/// Name = "elb-backend-subnet",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// });
///
/// var defaultURLMap = new Gcp.Compute.URLMap("default", new()
/// {
/// Name = "elb-url-map",
/// Description = "a description",
/// DefaultService = defaultBackendService.Id,
/// HostRules = new[]
/// {
/// new Gcp.Compute.Inputs.URLMapHostRuleArgs
/// {
/// Hosts = new[]
/// {
/// "mysite.com",
/// },
/// PathMatcher = "allpaths",
/// },
/// },
/// PathMatchers = new[]
/// {
/// new Gcp.Compute.Inputs.URLMapPathMatcherArgs
/// {
/// Name = "allpaths",
/// DefaultService = defaultBackendService.Id,
/// PathRules = new[]
/// {
/// new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
/// {
/// Paths = new[]
/// {
/// "/*",
/// },
/// Service = defaultBackendService.Id,
/// },
/// },
/// },
/// },
/// });
///
/// var defaultTargetHttpProxy = new Gcp.Compute.TargetHttpProxy("default", new()
/// {
/// Name = "elb-target-http-proxy",
/// Description = "a description",
/// UrlMap = defaultURLMap.Id,
/// });
///
/// // forwarding rule
/// var @default = new Gcp.Compute.GlobalForwardingRule("default", new()
/// {
/// Name = "elb-forwarding-rule",
/// Target = defaultTargetHttpProxy.Id,
/// PortRange = "80",
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// NetworkTier = "PREMIUM",
/// });
///
/// var wasm_plugin = new Gcp.NetworkServices.WasmPlugin("wasm-plugin", new()
/// {
/// Name = "elb-wasm-plugin-data",
/// Description = "my wasm plugin",
/// MainVersionId = "v1",
/// Labels =
/// {
/// { "test_label", "test_value" },
/// },
/// LogConfig = new Gcp.NetworkServices.Inputs.WasmPluginLogConfigArgs
/// {
/// Enable = true,
/// SampleRate = 1,
/// MinLogLevel = "WARN",
/// },
/// Versions = new[]
/// {
/// new Gcp.NetworkServices.Inputs.WasmPluginVersionArgs
/// {
/// VersionName = "v1",
/// Description = "v1 version of my wasm plugin",
/// ImageUri = "projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1",
/// Labels =
/// {
/// { "test_label", "test_value" },
/// },
/// },
/// },
/// });
///
/// var defaultLbEdgeExtension = new Gcp.NetworkServices.LbEdgeExtension("default", new()
/// {
/// Name = "elb-edge-ext",
/// Description = "my edge extension",
/// Location = "global",
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// ForwardingRules = new[]
/// {
/// @default.SelfLink,
/// },
/// ExtensionChains = new[]
/// {
/// new Gcp.NetworkServices.Inputs.LbEdgeExtensionExtensionChainArgs
/// {
/// Name = "chain1",
/// MatchCondition = new Gcp.NetworkServices.Inputs.LbEdgeExtensionExtensionChainMatchConditionArgs
/// {
/// CelExpression = "request.host == 'example.com'",
/// },
/// Extensions = new[]
/// {
/// new Gcp.NetworkServices.Inputs.LbEdgeExtensionExtensionChainExtensionArgs
/// {
/// Name = "ext11",
/// Service = wasm_plugin.Id,
/// FailOpen = false,
/// SupportedEvents = new[]
/// {
/// "REQUEST_HEADERS",
/// },
/// ForwardHeaders = new[]
/// {
/// "custom-header",
/// },
/// },
/// },
/// },
/// },
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// Name:                pulumi.String("elb-backend-subnet"),
/// PortName:            pulumi.String("http"),
/// Protocol:            pulumi.String("HTTP"),
/// TimeoutSec:          pulumi.Int(10),
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// Name:           pulumi.String("elb-url-map"),
/// Description:    pulumi.String("a description"),
/// DefaultService: defaultBackendService.ID(),
/// HostRules: compute.URLMapHostRuleArray{
/// &compute.URLMapHostRuleArgs{
/// Hosts: pulumi.StringArray{
/// pulumi.String("mysite.com"),
/// },
/// PathMatcher: pulumi.String("allpaths"),
/// },
/// },
/// PathMatchers: compute.URLMapPathMatcherArray{
/// &compute.URLMapPathMatcherArgs{
/// Name:           pulumi.String("allpaths"),
/// DefaultService: defaultBackendService.ID(),
/// PathRules: compute.URLMapPathMatcherPathRuleArray{
/// &compute.URLMapPathMatcherPathRuleArgs{
/// Paths: pulumi.StringArray{
/// pulumi.String("/*"),
/// },
/// Service: defaultBackendService.ID(),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultTargetHttpProxy, err := compute.NewTargetHttpProxy(ctx, "default", &compute.TargetHttpProxyArgs{
/// Name:        pulumi.String("elb-target-http-proxy"),
/// Description: pulumi.String("a description"),
/// UrlMap:      defaultURLMap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // forwarding rule
/// _default, err := compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// Name:                pulumi.String("elb-forwarding-rule"),
/// Target:              defaultTargetHttpProxy.ID(),
/// PortRange:           pulumi.String("80"),
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// NetworkTier:         pulumi.String("PREMIUM"),
/// })
/// if err != nil {
/// return err
/// }
/// wasm_plugin, err := networkservices.NewWasmPlugin(ctx, "wasm-plugin", &networkservices.WasmPluginArgs{
/// Name:          pulumi.String("elb-wasm-plugin-data"),
/// Description:   pulumi.String("my wasm plugin"),
/// MainVersionId: pulumi.String("v1"),
/// Labels: pulumi.StringMap{
/// "test_label": pulumi.String("test_value"),
/// },
/// LogConfig: &networkservices.WasmPluginLogConfigArgs{
/// Enable:      pulumi.Bool(true),
/// SampleRate:  pulumi.Float64(1),
/// MinLogLevel: pulumi.String("WARN"),
/// },
/// Versions: networkservices.WasmPluginVersionArray{
/// &networkservices.WasmPluginVersionArgs{
/// VersionName: pulumi.String("v1"),
/// Description: pulumi.String("v1 version of my wasm plugin"),
/// ImageUri:    pulumi.String("projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1"),
/// Labels: pulumi.StringMap{
/// "test_label": pulumi.String("test_value"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkservices.NewLbEdgeExtension(ctx, "default", &networkservices.LbEdgeExtensionArgs{
/// Name:                pulumi.String("elb-edge-ext"),
/// Description:         pulumi.String("my edge extension"),
/// Location:            pulumi.String("global"),
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// ForwardingRules: pulumi.StringArray{
/// _default.SelfLink,
/// },
/// ExtensionChains: networkservices.LbEdgeExtensionExtensionChainArray{
/// &networkservices.LbEdgeExtensionExtensionChainArgs{
/// Name: pulumi.String("chain1"),
/// MatchCondition: &networkservices.LbEdgeExtensionExtensionChainMatchConditionArgs{
/// CelExpression: pulumi.String("request.host == 'example.com'"),
/// },
/// Extensions: networkservices.LbEdgeExtensionExtensionChainExtensionArray{
/// &networkservices.LbEdgeExtensionExtensionChainExtensionArgs{
/// Name:     pulumi.String("ext11"),
/// Service:  wasm_plugin.ID(),
/// FailOpen: pulumi.Bool(false),
/// SupportedEvents: pulumi.StringArray{
/// pulumi.String("REQUEST_HEADERS"),
/// },
/// ForwardHeaders: pulumi.StringArray{
/// pulumi.String("custom-header"),
/// },
/// },
/// },
/// },
/// },
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
/// import com.pulumi.gcp.compute.GlobalForwardingRule;
/// import com.pulumi.gcp.compute.GlobalForwardingRuleArgs;
/// import com.pulumi.gcp.networkservices.WasmPlugin;
/// import com.pulumi.gcp.networkservices.WasmPluginArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginLogConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginVersionArgs;
/// import com.pulumi.gcp.networkservices.LbEdgeExtension;
/// import com.pulumi.gcp.networkservices.LbEdgeExtensionArgs;
/// import com.pulumi.gcp.networkservices.inputs.LbEdgeExtensionExtensionChainArgs;
/// import com.pulumi.gcp.networkservices.inputs.LbEdgeExtensionExtensionChainMatchConditionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
/// .name("elb-backend-subnet")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .build());
///
/// var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
/// .name("elb-url-map")
/// .description("a description")
/// .defaultService(defaultBackendService.id())
/// .hostRules(URLMapHostRuleArgs.builder()
/// .hosts("mysite.com")
/// .pathMatcher("allpaths")
/// .build())
/// .pathMatchers(URLMapPathMatcherArgs.builder()
/// .name("allpaths")
/// .defaultService(defaultBackendService.id())
/// .pathRules(URLMapPathMatcherPathRuleArgs.builder()
/// .paths("/*")
/// .service(defaultBackendService.id())
/// .build())
/// .build())
/// .build());
///
/// var defaultTargetHttpProxy = new TargetHttpProxy("defaultTargetHttpProxy", TargetHttpProxyArgs.builder()
/// .name("elb-target-http-proxy")
/// .description("a description")
/// .urlMap(defaultURLMap.id())
/// .build());
///
/// // forwarding rule
/// var default_ = new GlobalForwardingRule("default", GlobalForwardingRuleArgs.builder()
/// .name("elb-forwarding-rule")
/// .target(defaultTargetHttpProxy.id())
/// .portRange("80")
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .networkTier("PREMIUM")
/// .build());
///
/// var wasm_plugin = new WasmPlugin("wasm-plugin", WasmPluginArgs.builder()
/// .name("elb-wasm-plugin-data")
/// .description("my wasm plugin")
/// .mainVersionId("v1")
/// .labels(Map.of("test_label", "test_value"))
/// .logConfig(WasmPluginLogConfigArgs.builder()
/// .enable(true)
/// .sampleRate(1.0)
/// .minLogLevel("WARN")
/// .build())
/// .versions(WasmPluginVersionArgs.builder()
/// .versionName("v1")
/// .description("v1 version of my wasm plugin")
/// .imageUri("projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1")
/// .labels(Map.of("test_label", "test_value"))
/// .build())
/// .build());
///
/// var defaultLbEdgeExtension = new LbEdgeExtension("defaultLbEdgeExtension", LbEdgeExtensionArgs.builder()
/// .name("elb-edge-ext")
/// .description("my edge extension")
/// .location("global")
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .forwardingRules(default_.selfLink())
/// .extensionChains(LbEdgeExtensionExtensionChainArgs.builder()
/// .name("chain1")
/// .matchCondition(LbEdgeExtensionExtensionChainMatchConditionArgs.builder()
/// .celExpression("request.host == 'example.com'")
/// .build())
/// .extensions(LbEdgeExtensionExtensionChainExtensionArgs.builder()
/// .name("ext11")
/// .service(wasm_plugin.id())
/// .failOpen(false)
/// .supportedEvents("REQUEST_HEADERS")
/// .forwardHeaders("custom-header")
/// .build())
/// .build())
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # forwarding rule
/// default:
/// type: gcp:compute:GlobalForwardingRule
/// properties:
/// name: elb-forwarding-rule
/// target: ${defaultTargetHttpProxy.id}
/// portRange: '80'
/// loadBalancingScheme: EXTERNAL_MANAGED
/// networkTier: PREMIUM
/// defaultTargetHttpProxy:
/// type: gcp:compute:TargetHttpProxy
/// name: default
/// properties:
/// name: elb-target-http-proxy
/// description: a description
/// urlMap: ${defaultURLMap.id}
/// defaultURLMap:
/// type: gcp:compute:URLMap
/// name: default
/// properties:
/// name: elb-url-map
/// description: a description
/// defaultService: ${defaultBackendService.id}
/// hostRules:
/// - hosts:
/// - mysite.com
/// pathMatcher: allpaths
/// pathMatchers:
/// - name: allpaths
/// defaultService: ${defaultBackendService.id}
/// pathRules:
/// - paths:
/// - /*
/// service: ${defaultBackendService.id}
/// defaultBackendService:
/// type: gcp:compute:BackendService
/// name: default
/// properties:
/// name: elb-backend-subnet
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// loadBalancingScheme: EXTERNAL_MANAGED
/// defaultLbEdgeExtension:
/// type: gcp:networkservices:LbEdgeExtension
/// name: default
/// properties:
/// name: elb-edge-ext
/// description: my edge extension
/// location: global
/// loadBalancingScheme: EXTERNAL_MANAGED
/// forwardingRules:
/// - ${default.selfLink}
/// extensionChains:
/// - name: chain1
/// matchCondition:
/// celExpression: request.host == 'example.com'
/// extensions:
/// - name: ext11
/// service: ${["wasm-plugin"].id}
/// failOpen: false
/// supportedEvents:
/// - REQUEST_HEADERS
/// forwardHeaders:
/// - custom-header
/// labels:
/// foo: bar
/// wasm-plugin:
/// type: gcp:networkservices:WasmPlugin
/// properties:
/// name: elb-wasm-plugin-data
/// description: my wasm plugin
/// mainVersionId: v1
/// labels:
/// test_label: test_value
/// logConfig:
/// enable: true
/// sampleRate: 1
/// minLogLevel: WARN
/// versions:
/// - versionName: v1
/// description: v1 version of my wasm plugin
/// imageUri: projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1
/// labels:
/// test_label: test_value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// LbEdgeExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lbEdgeExtensions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, LbEdgeExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbEdgeExtension:LbEdgeExtension default projects/{{project}}/locations/{{location}}/lbEdgeExtensions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbEdgeExtension:LbEdgeExtension default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbEdgeExtension:LbEdgeExtension default {{location}}/{{name}}
/// ```
class LbEdgeExtension extends CustomResource {
  /// A human-readable description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Structure is documented below.
  late final Output<List<LbEdgeExtensionExtensionChain>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached.
  /// At least one forwarding rule is required. Only one LbEdgeExtension resource can be associated with a forwarding rule.
  late final Output<List<String>> forwardingRules;

  /// Set of labels associated with the LbEdgeExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// All forwarding rules referenced by this extension must share the same load balancing scheme.
  /// Possible values are: `EXTERNAL_MANAGED`.
  late final Output<String> loadBalancingScheme;

  /// The location of the edge extension
  late final Output<String> location;

  /// Name of the LbEdgeExtension resource in the following format: projects/{project}/locations/{location}/lbEdgeExtensions/{lbEdgeExtensions}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  LbEdgeExtension(
    String name, {
    LbEdgeExtensionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/lbEdgeExtension:LbEdgeExtension',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.extensionChains =
        registerOutput<List<LbEdgeExtensionExtensionChain>>('extensionChains');
    this.forwardingRules = registerOutput<List<String>>('forwardingRules');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
