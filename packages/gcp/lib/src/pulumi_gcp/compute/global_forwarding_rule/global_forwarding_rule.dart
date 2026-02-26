import 'package:pulumi/pulumi.dart';
import '../global_forwarding_rule_metadata_filter/global_forwarding_rule_metadata_filter.dart';
import '../global_forwarding_rule_service_directory_registrations/global_forwarding_rule_service_directory_registrations.dart';
import 'global_forwarding_rule_args.dart';

/// Represents a GlobalForwardingRule resource. Global forwarding rules are
/// used to forward traffic to the correct load balancer for HTTP load
/// balancing. Global forwarding rules can only be used for HTTP load
/// balancing.
///
/// For more information, see https://cloud.google.com/compute/docs/load-balancing/http/
///
///
///
/// ## Example Usage
///
/// ### Global Forwarding Rule Http
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
/// name: "check-backend",
/// requestPath: "/",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
/// name: "backend",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
/// name: "url-map-target-proxy",
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
/// name: "target-proxy",
/// description: "a description",
/// urlMap: defaultURLMap.id,
/// });
/// const _default = new gcp.compute.GlobalForwardingRule("default", {
/// name: "global-rule",
/// target: defaultTargetHttpProxy.id,
/// portRange: "80",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
/// name="check-backend",
/// request_path="/",
/// check_interval_sec=1,
/// timeout_sec=1)
/// default_backend_service = gcp.compute.BackendService("default",
/// name="backend",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// health_checks=default_http_health_check.id)
/// default_url_map = gcp.compute.URLMap("default",
/// name="url-map-target-proxy",
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
/// name="target-proxy",
/// description="a description",
/// url_map=default_url_map.id)
/// default = gcp.compute.GlobalForwardingRule("default",
/// name="global-rule",
/// target=default_target_http_proxy.id,
/// port_range="80")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
/// {
/// Name = "check-backend",
/// RequestPath = "/",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// });
///
/// var defaultBackendService = new Gcp.Compute.BackendService("default", new()
/// {
/// Name = "backend",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// HealthChecks = defaultHttpHealthCheck.Id,
/// });
///
/// var defaultURLMap = new Gcp.Compute.URLMap("default", new()
/// {
/// Name = "url-map-target-proxy",
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
/// Name = "target-proxy",
/// Description = "a description",
/// UrlMap = defaultURLMap.Id,
/// });
///
/// var @default = new Gcp.Compute.GlobalForwardingRule("default", new()
/// {
/// Name = "global-rule",
/// Target = defaultTargetHttpProxy.Id,
/// PortRange = "80",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// Name:             pulumi.String("check-backend"),
/// RequestPath:      pulumi.String("/"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// Name:         pulumi.String("backend"),
/// PortName:     pulumi.String("http"),
/// Protocol:     pulumi.String("HTTP"),
/// TimeoutSec:   pulumi.Int(10),
/// HealthChecks: defaultHttpHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// Name:           pulumi.String("url-map-target-proxy"),
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
/// Name:        pulumi.String("target-proxy"),
/// Description: pulumi.String("a description"),
/// UrlMap:      defaultURLMap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// Name:      pulumi.String("global-rule"),
/// Target:    defaultTargetHttpProxy.ID(),
/// PortRange: pulumi.String("80"),
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
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
/// var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
/// .name("check-backend")
/// .requestPath("/")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .build());
///
/// var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
/// .name("backend")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .healthChecks(defaultHttpHealthCheck.id())
/// .build());
///
/// var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
/// .name("url-map-target-proxy")
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
/// .name("target-proxy")
/// .description("a description")
/// .urlMap(defaultURLMap.id())
/// .build());
///
/// var default_ = new GlobalForwardingRule("default", GlobalForwardingRuleArgs.builder()
/// .name("global-rule")
/// .target(defaultTargetHttpProxy.id())
/// .portRange("80")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:GlobalForwardingRule
/// properties:
/// name: global-rule
/// target: ${defaultTargetHttpProxy.id}
/// portRange: '80'
/// defaultTargetHttpProxy:
/// type: gcp:compute:TargetHttpProxy
/// name: default
/// properties:
/// name: target-proxy
/// description: a description
/// urlMap: ${defaultURLMap.id}
/// defaultURLMap:
/// type: gcp:compute:URLMap
/// name: default
/// properties:
/// name: url-map-target-proxy
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
/// name: backend
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// healthChecks: ${defaultHttpHealthCheck.id}
/// defaultHttpHealthCheck:
/// type: gcp:compute:HttpHealthCheck
/// name: default
/// properties:
/// name: check-backend
/// requestPath: /
/// checkIntervalSec: 1
/// timeoutSec: 1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Global Forwarding Rule Internal
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debianImage = gcp.compute.getImage({
/// family: "debian-11",
/// project: "debian-cloud",
/// });
/// const instanceTemplate = new gcp.compute.InstanceTemplate("instance_template", {
/// name: "template-backend",
/// machineType: "e2-medium",
/// networkInterfaces: [{
/// network: "default",
/// }],
/// disks: [{
/// sourceImage: debianImage.then(debianImage => debianImage.selfLink),
/// autoDelete: true,
/// boot: true,
/// }],
/// });
/// const igm = new gcp.compute.InstanceGroupManager("igm", {
/// name: "igm-internal",
/// versions: [{
/// instanceTemplate: instanceTemplate.id,
/// name: "primary",
/// }],
/// baseInstanceName: "internal-glb",
/// zone: "us-central1-f",
/// targetSize: 1,
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
/// name: "check-backend",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
/// name: "backend",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// loadBalancingScheme: "INTERNAL_SELF_MANAGED",
/// backends: [{
/// group: igm.instanceGroup,
/// balancingMode: "RATE",
/// capacityScaler: 0.4,
/// maxRatePerInstance: 50,
/// }],
/// healthChecks: defaultHealthCheck.id,
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
/// name: "url-map-target-proxy",
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
/// name: "target-proxy",
/// description: "a description",
/// urlMap: defaultURLMap.id,
/// });
/// const _default = new gcp.compute.GlobalForwardingRule("default", {
/// name: "global-rule",
/// target: defaultTargetHttpProxy.id,
/// portRange: "80",
/// loadBalancingScheme: "INTERNAL_SELF_MANAGED",
/// ipAddress: "0.0.0.0",
/// metadataFilters: [{
/// filterMatchCriteria: "MATCH_ANY",
/// filterLabels: [{
/// name: "PLANET",
/// value: "MARS",
/// }],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian_image = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// instance_template = gcp.compute.InstanceTemplate("instance_template",
/// name="template-backend",
/// machine_type="e2-medium",
/// network_interfaces=[{
/// "network": "default",
/// }],
/// disks=[{
/// "source_image": debian_image.self_link,
/// "auto_delete": True,
/// "boot": True,
/// }])
/// igm = gcp.compute.InstanceGroupManager("igm",
/// name="igm-internal",
/// versions=[{
/// "instance_template": instance_template.id,
/// "name": "primary",
/// }],
/// base_instance_name="internal-glb",
/// zone="us-central1-f",
/// target_size=1)
/// default_health_check = gcp.compute.HealthCheck("default",
/// name="check-backend",
/// check_interval_sec=1,
/// timeout_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// default_backend_service = gcp.compute.BackendService("default",
/// name="backend",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// load_balancing_scheme="INTERNAL_SELF_MANAGED",
/// backends=[{
/// "group": igm.instance_group,
/// "balancing_mode": "RATE",
/// "capacity_scaler": 0.4,
/// "max_rate_per_instance": 50,
/// }],
/// health_checks=default_health_check.id)
/// default_url_map = gcp.compute.URLMap("default",
/// name="url-map-target-proxy",
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
/// name="target-proxy",
/// description="a description",
/// url_map=default_url_map.id)
/// default = gcp.compute.GlobalForwardingRule("default",
/// name="global-rule",
/// target=default_target_http_proxy.id,
/// port_range="80",
/// load_balancing_scheme="INTERNAL_SELF_MANAGED",
/// ip_address="0.0.0.0",
/// metadata_filters=[{
/// "filter_match_criteria": "MATCH_ANY",
/// "filter_labels": [{
/// "name": "PLANET",
/// "value": "MARS",
/// }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var debianImage = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-11",
/// Project = "debian-cloud",
/// });
///
/// var instanceTemplate = new Gcp.Compute.InstanceTemplate("instance_template", new()
/// {
/// Name = "template-backend",
/// MachineType = "e2-medium",
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
/// {
/// Network = "default",
/// },
/// },
/// Disks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
/// {
/// SourceImage = debianImage.Apply(getImageResult => getImageResult.SelfLink),
/// AutoDelete = true,
/// Boot = true,
/// },
/// },
/// });
///
/// var igm = new Gcp.Compute.InstanceGroupManager("igm", new()
/// {
/// Name = "igm-internal",
/// Versions = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
/// {
/// InstanceTemplate = instanceTemplate.Id,
/// Name = "primary",
/// },
/// },
/// BaseInstanceName = "internal-glb",
/// Zone = "us-central1-f",
/// TargetSize = 1,
/// });
///
/// var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
/// {
/// Name = "check-backend",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var defaultBackendService = new Gcp.Compute.BackendService("default", new()
/// {
/// Name = "backend",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
/// Backends = new[]
/// {
/// new Gcp.Compute.Inputs.BackendServiceBackendArgs
/// {
/// Group = igm.InstanceGroup,
/// BalancingMode = "RATE",
/// CapacityScaler = 0.4,
/// MaxRatePerInstance = 50,
/// },
/// },
/// HealthChecks = defaultHealthCheck.Id,
/// });
///
/// var defaultURLMap = new Gcp.Compute.URLMap("default", new()
/// {
/// Name = "url-map-target-proxy",
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
/// Name = "target-proxy",
/// Description = "a description",
/// UrlMap = defaultURLMap.Id,
/// });
///
/// var @default = new Gcp.Compute.GlobalForwardingRule("default", new()
/// {
/// Name = "global-rule",
/// Target = defaultTargetHttpProxy.Id,
/// PortRange = "80",
/// LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
/// IpAddress = "0.0.0.0",
/// MetadataFilters = new[]
/// {
/// new Gcp.Compute.Inputs.GlobalForwardingRuleMetadataFilterArgs
/// {
/// FilterMatchCriteria = "MATCH_ANY",
/// FilterLabels = new[]
/// {
/// new Gcp.Compute.Inputs.GlobalForwardingRuleMetadataFilterFilterLabelArgs
/// {
/// Name = "PLANET",
/// Value = "MARS",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// debianImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-11"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// instanceTemplate, err := compute.NewInstanceTemplate(ctx, "instance_template", &compute.InstanceTemplateArgs{
/// Name:        pulumi.String("template-backend"),
/// MachineType: pulumi.String("e2-medium"),
/// NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// &compute.InstanceTemplateNetworkInterfaceArgs{
/// Network: pulumi.String("default"),
/// },
/// },
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String(debianImage.SelfLink),
/// AutoDelete:  pulumi.Bool(true),
/// Boot:        pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// igm, err := compute.NewInstanceGroupManager(ctx, "igm", &compute.InstanceGroupManagerArgs{
/// Name: pulumi.String("igm-internal"),
/// Versions: compute.InstanceGroupManagerVersionArray{
/// &compute.InstanceGroupManagerVersionArgs{
/// InstanceTemplate: instanceTemplate.ID(),
/// Name:             pulumi.String("primary"),
/// },
/// },
/// BaseInstanceName: pulumi.String("internal-glb"),
/// Zone:             pulumi.String("us-central1-f"),
/// TargetSize:       pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// Name:             pulumi.String("check-backend"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// Name:                pulumi.String("backend"),
/// PortName:            pulumi.String("http"),
/// Protocol:            pulumi.String("HTTP"),
/// TimeoutSec:          pulumi.Int(10),
/// LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// Backends: compute.BackendServiceBackendArray{
/// &compute.BackendServiceBackendArgs{
/// Group:              igm.InstanceGroup,
/// BalancingMode:      pulumi.String("RATE"),
/// CapacityScaler:     pulumi.Float64(0.4),
/// MaxRatePerInstance: pulumi.Float64(50),
/// },
/// },
/// HealthChecks: defaultHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// Name:           pulumi.String("url-map-target-proxy"),
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
/// Name:        pulumi.String("target-proxy"),
/// Description: pulumi.String("a description"),
/// UrlMap:      defaultURLMap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// Name:                pulumi.String("global-rule"),
/// Target:              defaultTargetHttpProxy.ID(),
/// PortRange:           pulumi.String("80"),
/// LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// IpAddress:           pulumi.String("0.0.0.0"),
/// MetadataFilters: compute.GlobalForwardingRuleMetadataFilterArray{
/// &compute.GlobalForwardingRuleMetadataFilterArgs{
/// FilterMatchCriteria: pulumi.String("MATCH_ANY"),
/// FilterLabels: compute.GlobalForwardingRuleMetadataFilterFilterLabelArray{
/// &compute.GlobalForwardingRuleMetadataFilterFilterLabelArgs{
/// Name:  pulumi.String("PLANET"),
/// Value: pulumi.String("MARS"),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
/// import com.pulumi.gcp.compute.GlobalForwardingRule;
/// import com.pulumi.gcp.compute.GlobalForwardingRuleArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalForwardingRuleMetadataFilterArgs;
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
/// final var debianImage = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-11")
/// .project("debian-cloud")
/// .build());
///
/// var instanceTemplate = new InstanceTemplate("instanceTemplate", InstanceTemplateArgs.builder()
/// .name("template-backend")
/// .machineType("e2-medium")
/// .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
/// .network("default")
/// .build())
/// .disks(InstanceTemplateDiskArgs.builder()
/// .sourceImage(debianImage.selfLink())
/// .autoDelete(true)
/// .boot(true)
/// .build())
/// .build());
///
/// var igm = new InstanceGroupManager("igm", InstanceGroupManagerArgs.builder()
/// .name("igm-internal")
/// .versions(InstanceGroupManagerVersionArgs.builder()
/// .instanceTemplate(instanceTemplate.id())
/// .name("primary")
/// .build())
/// .baseInstanceName("internal-glb")
/// .zone("us-central1-f")
/// .targetSize(1)
/// .build());
///
/// var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
/// .name("check-backend")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
/// .name("backend")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .loadBalancingScheme("INTERNAL_SELF_MANAGED")
/// .backends(BackendServiceBackendArgs.builder()
/// .group(igm.instanceGroup())
/// .balancingMode("RATE")
/// .capacityScaler(0.4)
/// .maxRatePerInstance(50.0)
/// .build())
/// .healthChecks(defaultHealthCheck.id())
/// .build());
///
/// var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
/// .name("url-map-target-proxy")
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
/// .name("target-proxy")
/// .description("a description")
/// .urlMap(defaultURLMap.id())
/// .build());
///
/// var default_ = new GlobalForwardingRule("default", GlobalForwardingRuleArgs.builder()
/// .name("global-rule")
/// .target(defaultTargetHttpProxy.id())
/// .portRange("80")
/// .loadBalancingScheme("INTERNAL_SELF_MANAGED")
/// .ipAddress("0.0.0.0")
/// .metadataFilters(GlobalForwardingRuleMetadataFilterArgs.builder()
/// .filterMatchCriteria("MATCH_ANY")
/// .filterLabels(GlobalForwardingRuleMetadataFilterFilterLabelArgs.builder()
/// .name("PLANET")
/// .value("MARS")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:GlobalForwardingRule
/// properties:
/// name: global-rule
/// target: ${defaultTargetHttpProxy.id}
/// portRange: '80'
/// loadBalancingScheme: INTERNAL_SELF_MANAGED
/// ipAddress: 0.0.0.0
/// metadataFilters:
/// - filterMatchCriteria: MATCH_ANY
/// filterLabels:
/// - name: PLANET
/// value: MARS
/// defaultTargetHttpProxy:
/// type: gcp:compute:TargetHttpProxy
/// name: default
/// properties:
/// name: target-proxy
/// description: a description
/// urlMap: ${defaultURLMap.id}
/// defaultURLMap:
/// type: gcp:compute:URLMap
/// name: default
/// properties:
/// name: url-map-target-proxy
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
/// name: backend
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// loadBalancingScheme: INTERNAL_SELF_MANAGED
/// backends:
/// - group: ${igm.instanceGroup}
/// balancingMode: RATE
/// capacityScaler: 0.4
/// maxRatePerInstance: 50
/// healthChecks: ${defaultHealthCheck.id}
/// igm:
/// type: gcp:compute:InstanceGroupManager
/// properties:
/// name: igm-internal
/// versions:
/// - instanceTemplate: ${instanceTemplate.id}
/// name: primary
/// baseInstanceName: internal-glb
/// zone: us-central1-f
/// targetSize: 1
/// instanceTemplate:
/// type: gcp:compute:InstanceTemplate
/// name: instance_template
/// properties:
/// name: template-backend
/// machineType: e2-medium
/// networkInterfaces:
/// - network: default
/// disks:
/// - sourceImage: ${debianImage.selfLink}
/// autoDelete: true
/// boot: true
/// defaultHealthCheck:
/// type: gcp:compute:HealthCheck
/// name: default
/// properties:
/// name: check-backend
/// checkIntervalSec: 1
/// timeoutSec: 1
/// tcpHealthCheck:
/// port: '80'
/// variables:
/// debianImage:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Global Forwarding Rule External Managed
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultBackendService = new gcp.compute.BackendService("default", {
/// name: "backend",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
/// name: "url-map-target-proxy",
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
/// name: "target-proxy",
/// description: "a description",
/// urlMap: defaultURLMap.id,
/// });
/// const _default = new gcp.compute.GlobalForwardingRule("default", {
/// name: "global-rule",
/// target: defaultTargetHttpProxy.id,
/// portRange: "80",
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// networkTier: "PREMIUM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_backend_service = gcp.compute.BackendService("default",
/// name="backend",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// load_balancing_scheme="EXTERNAL_MANAGED")
/// default_url_map = gcp.compute.URLMap("default",
/// name="url-map-target-proxy",
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
/// name="target-proxy",
/// description="a description",
/// url_map=default_url_map.id)
/// default = gcp.compute.GlobalForwardingRule("default",
/// name="global-rule",
/// target=default_target_http_proxy.id,
/// port_range="80",
/// load_balancing_scheme="EXTERNAL_MANAGED",
/// network_tier="PREMIUM")
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
/// Name = "backend",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// });
///
/// var defaultURLMap = new Gcp.Compute.URLMap("default", new()
/// {
/// Name = "url-map-target-proxy",
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
/// Name = "target-proxy",
/// Description = "a description",
/// UrlMap = defaultURLMap.Id,
/// });
///
/// var @default = new Gcp.Compute.GlobalForwardingRule("default", new()
/// {
/// Name = "global-rule",
/// Target = defaultTargetHttpProxy.Id,
/// PortRange = "80",
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// NetworkTier = "PREMIUM",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// Name:                pulumi.String("backend"),
/// PortName:            pulumi.String("http"),
/// Protocol:            pulumi.String("HTTP"),
/// TimeoutSec:          pulumi.Int(10),
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// Name:           pulumi.String("url-map-target-proxy"),
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
/// Name:        pulumi.String("target-proxy"),
/// Description: pulumi.String("a description"),
/// UrlMap:      defaultURLMap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// Name:                pulumi.String("global-rule"),
/// Target:              defaultTargetHttpProxy.ID(),
/// PortRange:           pulumi.String("80"),
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// NetworkTier:         pulumi.String("PREMIUM"),
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
/// .name("backend")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .build());
///
/// var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
/// .name("url-map-target-proxy")
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
/// .name("target-proxy")
/// .description("a description")
/// .urlMap(defaultURLMap.id())
/// .build());
///
/// var default_ = new GlobalForwardingRule("default", GlobalForwardingRuleArgs.builder()
/// .name("global-rule")
/// .target(defaultTargetHttpProxy.id())
/// .portRange("80")
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .networkTier("PREMIUM")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:GlobalForwardingRule
/// properties:
/// name: global-rule
/// target: ${defaultTargetHttpProxy.id}
/// portRange: '80'
/// loadBalancingScheme: EXTERNAL_MANAGED
/// networkTier: PREMIUM
/// defaultTargetHttpProxy:
/// type: gcp:compute:TargetHttpProxy
/// name: default
/// properties:
/// name: target-proxy
/// description: a description
/// urlMap: ${defaultURLMap.id}
/// defaultURLMap:
/// type: gcp:compute:URLMap
/// name: default
/// properties:
/// name: url-map-target-proxy
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
/// name: backend
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// loadBalancingScheme: EXTERNAL_MANAGED
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Global Forwarding Rule Hybrid
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const config = new pulumi.Config();
/// const subnetworkCidr = config.get("subnetworkCidr") || "10.0.0.0/24";
/// const _default = new gcp.compute.Network("default", {name: "my-network"});
/// const internal = new gcp.compute.Network("internal", {
/// name: "my-internal-network",
/// autoCreateSubnetworks: false,
/// });
/// const internalSubnetwork = new gcp.compute.Subnetwork("internal", {
/// name: "my-subnetwork",
/// network: internal.id,
/// ipCidrRange: subnetworkCidr,
/// region: "us-central1",
/// privateIpGoogleAccess: true,
/// });
/// // Zonal NEG with GCE_VM_IP_PORT
/// const defaultNetworkEndpointGroup = new gcp.compute.NetworkEndpointGroup("default", {
/// name: "default-neg",
/// network: _default.id,
/// defaultPort: 90,
/// zone: "us-central1-a",
/// networkEndpointType: "GCE_VM_IP_PORT",
/// });
/// // Zonal NEG with GCE_VM_IP
/// const internalNetworkEndpointGroup = new gcp.compute.NetworkEndpointGroup("internal", {
/// name: "internal-neg",
/// network: internal.id,
/// subnetwork: internalSubnetwork.id,
/// zone: "us-central1-a",
/// networkEndpointType: "GCE_VM_IP",
/// });
/// // Hybrid connectivity NEG
/// const hybrid = new gcp.compute.NetworkEndpointGroup("hybrid", {
/// name: "hybrid-neg",
/// network: _default.id,
/// defaultPort: 90,
/// zone: "us-central1-a",
/// networkEndpointType: "NON_GCP_PRIVATE_IP_PORT",
/// });
/// const hybrid_endpoint = new gcp.compute.NetworkEndpoint("hybrid-endpoint", {
/// networkEndpointGroup: hybrid.name,
/// port: hybrid.defaultPort,
/// ipAddress: "127.0.0.1",
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
/// name: "health-check",
/// timeoutSec: 1,
/// checkIntervalSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// // Backend service for Zonal NEG
/// const defaultBackendService = new gcp.compute.BackendService("default", {
/// name: "backend-default",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// backends: [{
/// group: defaultNetworkEndpointGroup.id,
/// balancingMode: "RATE",
/// maxRatePerEndpoint: 10,
/// }],
/// healthChecks: defaultHealthCheck.id,
/// });
/// // Backgend service for Hybrid NEG
/// const hybridBackendService = new gcp.compute.BackendService("hybrid", {
/// name: "backend-hybrid",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// backends: [{
/// group: hybrid.id,
/// balancingMode: "RATE",
/// maxRatePerEndpoint: 10,
/// }],
/// healthChecks: defaultHealthCheck.id,
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
/// name: "url-map-target-proxy",
/// description: "a description",
/// defaultService: defaultBackendService.id,
/// hostRules: [{
/// hosts: ["mysite.com"],
/// pathMatcher: "allpaths",
/// }],
/// pathMatchers: [{
/// name: "allpaths",
/// defaultService: defaultBackendService.id,
/// pathRules: [
/// {
/// paths: ["/*"],
/// service: defaultBackendService.id,
/// },
/// {
/// paths: ["/hybrid"],
/// service: hybridBackendService.id,
/// },
/// ],
/// }],
/// });
/// const defaultTargetHttpProxy = new gcp.compute.TargetHttpProxy("default", {
/// name: "target-proxy",
/// description: "a description",
/// urlMap: defaultURLMap.id,
/// });
/// const defaultGlobalForwardingRule = new gcp.compute.GlobalForwardingRule("default", {
/// name: "global-rule",
/// target: defaultTargetHttpProxy.id,
/// portRange: "80",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// config = pulumi.Config()
/// subnetwork_cidr = config.get("subnetworkCidr")
/// if subnetwork_cidr is None:
/// subnetwork_cidr = "10.0.0.0/24"
/// default = gcp.compute.Network("default", name="my-network")
/// internal = gcp.compute.Network("internal",
/// name="my-internal-network",
/// auto_create_subnetworks=False)
/// internal_subnetwork = gcp.compute.Subnetwork("internal",
/// name="my-subnetwork",
/// network=internal.id,
/// ip_cidr_range=subnetwork_cidr,
/// region="us-central1",
/// private_ip_google_access=True)
/// # Zonal NEG with GCE_VM_IP_PORT
/// default_network_endpoint_group = gcp.compute.NetworkEndpointGroup("default",
/// name="default-neg",
/// network=default.id,
/// default_port=90,
/// zone="us-central1-a",
/// network_endpoint_type="GCE_VM_IP_PORT")
/// # Zonal NEG with GCE_VM_IP
/// internal_network_endpoint_group = gcp.compute.NetworkEndpointGroup("internal",
/// name="internal-neg",
/// network=internal.id,
/// subnetwork=internal_subnetwork.id,
/// zone="us-central1-a",
/// network_endpoint_type="GCE_VM_IP")
/// # Hybrid connectivity NEG
/// hybrid = gcp.compute.NetworkEndpointGroup("hybrid",
/// name="hybrid-neg",
/// network=default.id,
/// default_port=90,
/// zone="us-central1-a",
/// network_endpoint_type="NON_GCP_PRIVATE_IP_PORT")
/// hybrid_endpoint = gcp.compute.NetworkEndpoint("hybrid-endpoint",
/// network_endpoint_group=hybrid.name,
/// port=hybrid.default_port,
/// ip_address="127.0.0.1")
/// default_health_check = gcp.compute.HealthCheck("default",
/// name="health-check",
/// timeout_sec=1,
/// check_interval_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// # Backend service for Zonal NEG
/// default_backend_service = gcp.compute.BackendService("default",
/// name="backend-default",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// backends=[{
/// "group": default_network_endpoint_group.id,
/// "balancing_mode": "RATE",
/// "max_rate_per_endpoint": 10,
/// }],
/// health_checks=default_health_check.id)
/// # Backgend service for Hybrid NEG
/// hybrid_backend_service = gcp.compute.BackendService("hybrid",
/// name="backend-hybrid",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// backends=[{
/// "group": hybrid.id,
/// "balancing_mode": "RATE",
/// "max_rate_per_endpoint": 10,
/// }],
/// health_checks=default_health_check.id)
/// default_url_map = gcp.compute.URLMap("default",
/// name="url-map-target-proxy",
/// description="a description",
/// default_service=default_backend_service.id,
/// host_rules=[{
/// "hosts": ["mysite.com"],
/// "path_matcher": "allpaths",
/// }],
/// path_matchers=[{
/// "name": "allpaths",
/// "default_service": default_backend_service.id,
/// "path_rules": [
/// {
/// "paths": ["/*"],
/// "service": default_backend_service.id,
/// },
/// {
/// "paths": ["/hybrid"],
/// "service": hybrid_backend_service.id,
/// },
/// ],
/// }])
/// default_target_http_proxy = gcp.compute.TargetHttpProxy("default",
/// name="target-proxy",
/// description="a description",
/// url_map=default_url_map.id)
/// default_global_forwarding_rule = gcp.compute.GlobalForwardingRule("default",
/// name="global-rule",
/// target=default_target_http_proxy.id,
/// port_range="80")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var subnetworkCidr = config.Get("subnetworkCidr") ?? "10.0.0.0/24";
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "my-network",
/// });
///
/// var @internal = new Gcp.Compute.Network("internal", new()
/// {
/// Name = "my-internal-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var internalSubnetwork = new Gcp.Compute.Subnetwork("internal", new()
/// {
/// Name = "my-subnetwork",
/// Network = @internal.Id,
/// IpCidrRange = subnetworkCidr,
/// Region = "us-central1",
/// PrivateIpGoogleAccess = true,
/// });
///
/// // Zonal NEG with GCE_VM_IP_PORT
/// var defaultNetworkEndpointGroup = new Gcp.Compute.NetworkEndpointGroup("default", new()
/// {
/// Name = "default-neg",
/// Network = @default.Id,
/// DefaultPort = 90,
/// Zone = "us-central1-a",
/// NetworkEndpointType = "GCE_VM_IP_PORT",
/// });
///
/// // Zonal NEG with GCE_VM_IP
/// var internalNetworkEndpointGroup = new Gcp.Compute.NetworkEndpointGroup("internal", new()
/// {
/// Name = "internal-neg",
/// Network = @internal.Id,
/// Subnetwork = internalSubnetwork.Id,
/// Zone = "us-central1-a",
/// NetworkEndpointType = "GCE_VM_IP",
/// });
///
/// // Hybrid connectivity NEG
/// var hybrid = new Gcp.Compute.NetworkEndpointGroup("hybrid", new()
/// {
/// Name = "hybrid-neg",
/// Network = @default.Id,
/// DefaultPort = 90,
/// Zone = "us-central1-a",
/// NetworkEndpointType = "NON_GCP_PRIVATE_IP_PORT",
/// });
///
/// var hybrid_endpoint = new Gcp.Compute.NetworkEndpoint("hybrid-endpoint", new()
/// {
/// NetworkEndpointGroup = hybrid.Name,
/// Port = hybrid.DefaultPort,
/// IpAddress = "127.0.0.1",
/// });
///
/// var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
/// {
/// Name = "health-check",
/// TimeoutSec = 1,
/// CheckIntervalSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// // Backend service for Zonal NEG
/// var defaultBackendService = new Gcp.Compute.BackendService("default", new()
/// {
/// Name = "backend-default",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// Backends = new[]
/// {
/// new Gcp.Compute.Inputs.BackendServiceBackendArgs
/// {
/// Group = defaultNetworkEndpointGroup.Id,
/// BalancingMode = "RATE",
/// MaxRatePerEndpoint = 10,
/// },
/// },
/// HealthChecks = defaultHealthCheck.Id,
/// });
///
/// // Backgend service for Hybrid NEG
/// var hybridBackendService = new Gcp.Compute.BackendService("hybrid", new()
/// {
/// Name = "backend-hybrid",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// Backends = new[]
/// {
/// new Gcp.Compute.Inputs.BackendServiceBackendArgs
/// {
/// Group = hybrid.Id,
/// BalancingMode = "RATE",
/// MaxRatePerEndpoint = 10,
/// },
/// },
/// HealthChecks = defaultHealthCheck.Id,
/// });
///
/// var defaultURLMap = new Gcp.Compute.URLMap("default", new()
/// {
/// Name = "url-map-target-proxy",
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
/// new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
/// {
/// Paths = new[]
/// {
/// "/hybrid",
/// },
/// Service = hybridBackendService.Id,
/// },
/// },
/// },
/// },
/// });
///
/// var defaultTargetHttpProxy = new Gcp.Compute.TargetHttpProxy("default", new()
/// {
/// Name = "target-proxy",
/// Description = "a description",
/// UrlMap = defaultURLMap.Id,
/// });
///
/// var defaultGlobalForwardingRule = new Gcp.Compute.GlobalForwardingRule("default", new()
/// {
/// Name = "global-rule",
/// Target = defaultTargetHttpProxy.Id,
/// PortRange = "80",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// subnetworkCidr := "10.0.0.0/24"
/// if param := cfg.Get("subnetworkCidr"); param != "" {
/// subnetworkCidr = param
/// }
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("my-network"),
/// })
/// if err != nil {
/// return err
/// }
/// internal, err := compute.NewNetwork(ctx, "internal", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-internal-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// internalSubnetwork, err := compute.NewSubnetwork(ctx, "internal", &compute.SubnetworkArgs{
/// Name:                  pulumi.String("my-subnetwork"),
/// Network:               internal.ID(),
/// IpCidrRange:           pulumi.String(subnetworkCidr),
/// Region:                pulumi.String("us-central1"),
/// PrivateIpGoogleAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// // Zonal NEG with GCE_VM_IP_PORT
/// defaultNetworkEndpointGroup, err := compute.NewNetworkEndpointGroup(ctx, "default", &compute.NetworkEndpointGroupArgs{
/// Name:                pulumi.String("default-neg"),
/// Network:             _default.ID(),
/// DefaultPort:         pulumi.Int(90),
/// Zone:                pulumi.String("us-central1-a"),
/// NetworkEndpointType: pulumi.String("GCE_VM_IP_PORT"),
/// })
/// if err != nil {
/// return err
/// }
/// // Zonal NEG with GCE_VM_IP
/// _, err = compute.NewNetworkEndpointGroup(ctx, "internal", &compute.NetworkEndpointGroupArgs{
/// Name:                pulumi.String("internal-neg"),
/// Network:             internal.ID(),
/// Subnetwork:          internalSubnetwork.ID(),
/// Zone:                pulumi.String("us-central1-a"),
/// NetworkEndpointType: pulumi.String("GCE_VM_IP"),
/// })
/// if err != nil {
/// return err
/// }
/// // Hybrid connectivity NEG
/// hybrid, err := compute.NewNetworkEndpointGroup(ctx, "hybrid", &compute.NetworkEndpointGroupArgs{
/// Name:                pulumi.String("hybrid-neg"),
/// Network:             _default.ID(),
/// DefaultPort:         pulumi.Int(90),
/// Zone:                pulumi.String("us-central1-a"),
/// NetworkEndpointType: pulumi.String("NON_GCP_PRIVATE_IP_PORT"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetworkEndpoint(ctx, "hybrid-endpoint", &compute.NetworkEndpointArgs{
/// NetworkEndpointGroup: hybrid.Name,
/// Port:                 hybrid.DefaultPort,
/// IpAddress:            pulumi.String("127.0.0.1"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// Name:             pulumi.String("health-check"),
/// TimeoutSec:       pulumi.Int(1),
/// CheckIntervalSec: pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // Backend service for Zonal NEG
/// defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// Name:       pulumi.String("backend-default"),
/// PortName:   pulumi.String("http"),
/// Protocol:   pulumi.String("HTTP"),
/// TimeoutSec: pulumi.Int(10),
/// Backends: compute.BackendServiceBackendArray{
/// &compute.BackendServiceBackendArgs{
/// Group:              defaultNetworkEndpointGroup.ID(),
/// BalancingMode:      pulumi.String("RATE"),
/// MaxRatePerEndpoint: pulumi.Float64(10),
/// },
/// },
/// HealthChecks: defaultHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Backgend service for Hybrid NEG
/// hybridBackendService, err := compute.NewBackendService(ctx, "hybrid", &compute.BackendServiceArgs{
/// Name:       pulumi.String("backend-hybrid"),
/// PortName:   pulumi.String("http"),
/// Protocol:   pulumi.String("HTTP"),
/// TimeoutSec: pulumi.Int(10),
/// Backends: compute.BackendServiceBackendArray{
/// &compute.BackendServiceBackendArgs{
/// Group:              hybrid.ID(),
/// BalancingMode:      pulumi.String("RATE"),
/// MaxRatePerEndpoint: pulumi.Float64(10),
/// },
/// },
/// HealthChecks: defaultHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// Name:           pulumi.String("url-map-target-proxy"),
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
/// &compute.URLMapPathMatcherPathRuleArgs{
/// Paths: pulumi.StringArray{
/// pulumi.String("/hybrid"),
/// },
/// Service: hybridBackendService.ID(),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultTargetHttpProxy, err := compute.NewTargetHttpProxy(ctx, "default", &compute.TargetHttpProxyArgs{
/// Name:        pulumi.String("target-proxy"),
/// Description: pulumi.String("a description"),
/// UrlMap:      defaultURLMap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// Name:      pulumi.String("global-rule"),
/// Target:    defaultTargetHttpProxy.ID(),
/// PortRange: pulumi.String("80"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.NetworkEndpoint;
/// import com.pulumi.gcp.compute.NetworkEndpointArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
/// import com.pulumi.gcp.compute.GlobalForwardingRule;
/// import com.pulumi.gcp.compute.GlobalForwardingRuleArgs;
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
/// final var config = ctx.config();
/// final var subnetworkCidr = config.get("subnetworkCidr").orElse("10.0.0.0/24");
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("my-network")
/// .build());
///
/// var internal = new Network("internal", NetworkArgs.builder()
/// .name("my-internal-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var internalSubnetwork = new Subnetwork("internalSubnetwork", SubnetworkArgs.builder()
/// .name("my-subnetwork")
/// .network(internal.id())
/// .ipCidrRange(subnetworkCidr)
/// .region("us-central1")
/// .privateIpGoogleAccess(true)
/// .build());
///
/// // Zonal NEG with GCE_VM_IP_PORT
/// var defaultNetworkEndpointGroup = new NetworkEndpointGroup("defaultNetworkEndpointGroup", NetworkEndpointGroupArgs.builder()
/// .name("default-neg")
/// .network(default_.id())
/// .defaultPort(90)
/// .zone("us-central1-a")
/// .networkEndpointType("GCE_VM_IP_PORT")
/// .build());
///
/// // Zonal NEG with GCE_VM_IP
/// var internalNetworkEndpointGroup = new NetworkEndpointGroup("internalNetworkEndpointGroup", NetworkEndpointGroupArgs.builder()
/// .name("internal-neg")
/// .network(internal.id())
/// .subnetwork(internalSubnetwork.id())
/// .zone("us-central1-a")
/// .networkEndpointType("GCE_VM_IP")
/// .build());
///
/// // Hybrid connectivity NEG
/// var hybrid = new NetworkEndpointGroup("hybrid", NetworkEndpointGroupArgs.builder()
/// .name("hybrid-neg")
/// .network(default_.id())
/// .defaultPort(90)
/// .zone("us-central1-a")
/// .networkEndpointType("NON_GCP_PRIVATE_IP_PORT")
/// .build());
///
/// var hybrid_endpoint = new NetworkEndpoint("hybrid-endpoint", NetworkEndpointArgs.builder()
/// .networkEndpointGroup(hybrid.name())
/// .port(hybrid.defaultPort())
/// .ipAddress("127.0.0.1")
/// .build());
///
/// var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
/// .name("health-check")
/// .timeoutSec(1)
/// .checkIntervalSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// // Backend service for Zonal NEG
/// var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
/// .name("backend-default")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .backends(BackendServiceBackendArgs.builder()
/// .group(defaultNetworkEndpointGroup.id())
/// .balancingMode("RATE")
/// .maxRatePerEndpoint(10.0)
/// .build())
/// .healthChecks(defaultHealthCheck.id())
/// .build());
///
/// // Backgend service for Hybrid NEG
/// var hybridBackendService = new BackendService("hybridBackendService", BackendServiceArgs.builder()
/// .name("backend-hybrid")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .backends(BackendServiceBackendArgs.builder()
/// .group(hybrid.id())
/// .balancingMode("RATE")
/// .maxRatePerEndpoint(10.0)
/// .build())
/// .healthChecks(defaultHealthCheck.id())
/// .build());
///
/// var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
/// .name("url-map-target-proxy")
/// .description("a description")
/// .defaultService(defaultBackendService.id())
/// .hostRules(URLMapHostRuleArgs.builder()
/// .hosts("mysite.com")
/// .pathMatcher("allpaths")
/// .build())
/// .pathMatchers(URLMapPathMatcherArgs.builder()
/// .name("allpaths")
/// .defaultService(defaultBackendService.id())
/// .pathRules(
/// URLMapPathMatcherPathRuleArgs.builder()
/// .paths("/*")
/// .service(defaultBackendService.id())
/// .build(),
/// URLMapPathMatcherPathRuleArgs.builder()
/// .paths("/hybrid")
/// .service(hybridBackendService.id())
/// .build())
/// .build())
/// .build());
///
/// var defaultTargetHttpProxy = new TargetHttpProxy("defaultTargetHttpProxy", TargetHttpProxyArgs.builder()
/// .name("target-proxy")
/// .description("a description")
/// .urlMap(defaultURLMap.id())
/// .build());
///
/// var defaultGlobalForwardingRule = new GlobalForwardingRule("defaultGlobalForwardingRule", GlobalForwardingRuleArgs.builder()
/// .name("global-rule")
/// .target(defaultTargetHttpProxy.id())
/// .portRange("80")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// # Roughly mirrors https://cloud.google.com/load-balancing/docs/https/setting-up-ext-https-hybrid
/// subnetworkCidr:
/// type: string
/// default: 10.0.0.0/24
/// resources:
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// internal:
/// type: gcp:compute:Network
/// properties:
/// name: my-internal-network
/// autoCreateSubnetworks: false
/// internalSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: internal
/// properties:
/// name: my-subnetwork
/// network: ${internal.id}
/// ipCidrRange: ${subnetworkCidr}
/// region: us-central1
/// privateIpGoogleAccess: true
/// # Zonal NEG with GCE_VM_IP_PORT
/// defaultNetworkEndpointGroup:
/// type: gcp:compute:NetworkEndpointGroup
/// name: default
/// properties:
/// name: default-neg
/// network: ${default.id}
/// defaultPort: '90'
/// zone: us-central1-a
/// networkEndpointType: GCE_VM_IP_PORT
/// # Zonal NEG with GCE_VM_IP
/// internalNetworkEndpointGroup:
/// type: gcp:compute:NetworkEndpointGroup
/// name: internal
/// properties:
/// name: internal-neg
/// network: ${internal.id}
/// subnetwork: ${internalSubnetwork.id}
/// zone: us-central1-a
/// networkEndpointType: GCE_VM_IP
/// # Hybrid connectivity NEG
/// hybrid:
/// type: gcp:compute:NetworkEndpointGroup
/// properties:
/// name: hybrid-neg
/// network: ${default.id}
/// defaultPort: '90'
/// zone: us-central1-a
/// networkEndpointType: NON_GCP_PRIVATE_IP_PORT
/// hybrid-endpoint:
/// type: gcp:compute:NetworkEndpoint
/// properties:
/// networkEndpointGroup: ${hybrid.name}
/// port: ${hybrid.defaultPort}
/// ipAddress: 127.0.0.1
/// # Backend service for Zonal NEG
/// defaultBackendService:
/// type: gcp:compute:BackendService
/// name: default
/// properties:
/// name: backend-default
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// backends:
/// - group: ${defaultNetworkEndpointGroup.id}
/// balancingMode: RATE
/// maxRatePerEndpoint: 10
/// healthChecks: ${defaultHealthCheck.id}
/// # Backgend service for Hybrid NEG
/// hybridBackendService:
/// type: gcp:compute:BackendService
/// name: hybrid
/// properties:
/// name: backend-hybrid
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// backends:
/// - group: ${hybrid.id}
/// balancingMode: RATE
/// maxRatePerEndpoint: 10
/// healthChecks: ${defaultHealthCheck.id}
/// defaultHealthCheck:
/// type: gcp:compute:HealthCheck
/// name: default
/// properties:
/// name: health-check
/// timeoutSec: 1
/// checkIntervalSec: 1
/// tcpHealthCheck:
/// port: '80'
/// defaultURLMap:
/// type: gcp:compute:URLMap
/// name: default
/// properties:
/// name: url-map-target-proxy
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
/// - paths:
/// - /hybrid
/// service: ${hybridBackendService.id}
/// defaultTargetHttpProxy:
/// type: gcp:compute:TargetHttpProxy
/// name: default
/// properties:
/// name: target-proxy
/// description: a description
/// urlMap: ${defaultURLMap.id}
/// defaultGlobalForwardingRule:
/// type: gcp:compute:GlobalForwardingRule
/// name: default
/// properties:
/// name: global-rule
/// target: ${defaultTargetHttpProxy.id}
/// portRange: '80'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Private Service Connect Google Apis
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// project: "my-project-name",
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const vpcSubnetwork = new gcp.compute.Subnetwork("vpc_subnetwork", {
/// project: network.project,
/// name: "my-subnetwork",
/// ipCidrRange: "10.2.0.0/16",
/// region: "us-central1",
/// network: network.id,
/// privateIpGoogleAccess: true,
/// });
/// const _default = new gcp.compute.GlobalAddress("default", {
/// project: network.project,
/// name: "global-psconnect-ip",
/// addressType: "INTERNAL",
/// purpose: "PRIVATE_SERVICE_CONNECT",
/// network: network.id,
/// address: "100.100.100.106",
/// });
/// const defaultGlobalForwardingRule = new gcp.compute.GlobalForwardingRule("default", {
/// project: network.project,
/// name: "globalrule",
/// target: "all-apis",
/// network: network.id,
/// ipAddress: _default.id,
/// loadBalancingScheme: "",
/// serviceDirectoryRegistrations: {
/// namespace: "sd-namespace",
/// serviceDirectoryRegion: "europe-west3",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// project="my-project-name",
/// name="my-network",
/// auto_create_subnetworks=False)
/// vpc_subnetwork = gcp.compute.Subnetwork("vpc_subnetwork",
/// project=network.project,
/// name="my-subnetwork",
/// ip_cidr_range="10.2.0.0/16",
/// region="us-central1",
/// network=network.id,
/// private_ip_google_access=True)
/// default = gcp.compute.GlobalAddress("default",
/// project=network.project,
/// name="global-psconnect-ip",
/// address_type="INTERNAL",
/// purpose="PRIVATE_SERVICE_CONNECT",
/// network=network.id,
/// address="100.100.100.106")
/// default_global_forwarding_rule = gcp.compute.GlobalForwardingRule("default",
/// project=network.project,
/// name="globalrule",
/// target="all-apis",
/// network=network.id,
/// ip_address=default.id,
/// load_balancing_scheme="",
/// service_directory_registrations={
/// "namespace": "sd-namespace",
/// "service_directory_region": "europe-west3",
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
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Project = "my-project-name",
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var vpcSubnetwork = new Gcp.Compute.Subnetwork("vpc_subnetwork", new()
/// {
/// Project = network.Project,
/// Name = "my-subnetwork",
/// IpCidrRange = "10.2.0.0/16",
/// Region = "us-central1",
/// Network = network.Id,
/// PrivateIpGoogleAccess = true,
/// });
///
/// var @default = new Gcp.Compute.GlobalAddress("default", new()
/// {
/// Project = network.Project,
/// Name = "global-psconnect-ip",
/// AddressType = "INTERNAL",
/// Purpose = "PRIVATE_SERVICE_CONNECT",
/// Network = network.Id,
/// Address = "100.100.100.106",
/// });
///
/// var defaultGlobalForwardingRule = new Gcp.Compute.GlobalForwardingRule("default", new()
/// {
/// Project = network.Project,
/// Name = "globalrule",
/// Target = "all-apis",
/// Network = network.Id,
/// IpAddress = @default.Id,
/// LoadBalancingScheme = "",
/// ServiceDirectoryRegistrations = new Gcp.Compute.Inputs.GlobalForwardingRuleServiceDirectoryRegistrationsArgs
/// {
/// Namespace = "sd-namespace",
/// ServiceDirectoryRegion = "europe-west3",
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Project:               pulumi.String("my-project-name"),
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewSubnetwork(ctx, "vpc_subnetwork", &compute.SubnetworkArgs{
/// Project:               network.Project,
/// Name:                  pulumi.String("my-subnetwork"),
/// IpCidrRange:           pulumi.String("10.2.0.0/16"),
/// Region:                pulumi.String("us-central1"),
/// Network:               network.ID(),
/// PrivateIpGoogleAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := compute.NewGlobalAddress(ctx, "default", &compute.GlobalAddressArgs{
/// Project:     network.Project,
/// Name:        pulumi.String("global-psconnect-ip"),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// Network:     network.ID(),
/// Address:     pulumi.String("100.100.100.106"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// Project:             network.Project,
/// Name:                pulumi.String("globalrule"),
/// Target:              pulumi.String("all-apis"),
/// Network:             network.ID(),
/// IpAddress:           _default.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// ServiceDirectoryRegistrations: &compute.GlobalForwardingRuleServiceDirectoryRegistrationsArgs{
/// Namespace:              pulumi.String("sd-namespace"),
/// ServiceDirectoryRegion: pulumi.String("europe-west3"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.compute.GlobalForwardingRule;
/// import com.pulumi.gcp.compute.GlobalForwardingRuleArgs;
/// import com.pulumi.gcp.compute.inputs.GlobalForwardingRuleServiceDirectoryRegistrationsArgs;
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
/// var network = new Network("network", NetworkArgs.builder()
/// .project("my-project-name")
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var vpcSubnetwork = new Subnetwork("vpcSubnetwork", SubnetworkArgs.builder()
/// .project(network.project())
/// .name("my-subnetwork")
/// .ipCidrRange("10.2.0.0/16")
/// .region("us-central1")
/// .network(network.id())
/// .privateIpGoogleAccess(true)
/// .build());
///
/// var default_ = new GlobalAddress("default", GlobalAddressArgs.builder()
/// .project(network.project())
/// .name("global-psconnect-ip")
/// .addressType("INTERNAL")
/// .purpose("PRIVATE_SERVICE_CONNECT")
/// .network(network.id())
/// .address("100.100.100.106")
/// .build());
///
/// var defaultGlobalForwardingRule = new GlobalForwardingRule("defaultGlobalForwardingRule", GlobalForwardingRuleArgs.builder()
/// .project(network.project())
/// .name("globalrule")
/// .target("all-apis")
/// .network(network.id())
/// .ipAddress(default_.id())
/// .loadBalancingScheme("")
/// .serviceDirectoryRegistrations(GlobalForwardingRuleServiceDirectoryRegistrationsArgs.builder()
/// .namespace("sd-namespace")
/// .serviceDirectoryRegion("europe-west3")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// network:
/// type: gcp:compute:Network
/// properties:
/// project: my-project-name
/// name: my-network
/// autoCreateSubnetworks: false
/// vpcSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: vpc_subnetwork
/// properties:
/// project: ${network.project}
/// name: my-subnetwork
/// ipCidrRange: 10.2.0.0/16
/// region: us-central1
/// network: ${network.id}
/// privateIpGoogleAccess: true
/// default:
/// type: gcp:compute:GlobalAddress
/// properties:
/// project: ${network.project}
/// name: global-psconnect-ip
/// addressType: INTERNAL
/// purpose: PRIVATE_SERVICE_CONNECT
/// network: ${network.id}
/// address: 100.100.100.106
/// defaultGlobalForwardingRule:
/// type: gcp:compute:GlobalForwardingRule
/// name: default
/// properties:
/// project: ${network.project}
/// name: globalrule
/// target: all-apis
/// network: ${network.id}
/// ipAddress: ${default.id}
/// loadBalancingScheme: ""
/// serviceDirectoryRegistrations:
/// namespace: sd-namespace
/// serviceDirectoryRegion: europe-west3
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Private Service Connect Google Apis No Automate Dns
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// project: "my-project-name",
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const vpcSubnetwork = new gcp.compute.Subnetwork("vpc_subnetwork", {
/// project: network.project,
/// name: "my-subnetwork",
/// ipCidrRange: "10.2.0.0/16",
/// region: "us-central1",
/// network: network.id,
/// privateIpGoogleAccess: true,
/// });
/// const _default = new gcp.compute.GlobalAddress("default", {
/// project: network.project,
/// name: "global-psconnect-ip",
/// addressType: "INTERNAL",
/// purpose: "PRIVATE_SERVICE_CONNECT",
/// network: network.id,
/// address: "100.100.100.106",
/// });
/// const defaultGlobalForwardingRule = new gcp.compute.GlobalForwardingRule("default", {
/// project: network.project,
/// name: "globalrule",
/// target: "all-apis",
/// network: network.id,
/// ipAddress: _default.id,
/// loadBalancingScheme: "",
/// noAutomateDnsZone: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// project="my-project-name",
/// name="my-network",
/// auto_create_subnetworks=False)
/// vpc_subnetwork = gcp.compute.Subnetwork("vpc_subnetwork",
/// project=network.project,
/// name="my-subnetwork",
/// ip_cidr_range="10.2.0.0/16",
/// region="us-central1",
/// network=network.id,
/// private_ip_google_access=True)
/// default = gcp.compute.GlobalAddress("default",
/// project=network.project,
/// name="global-psconnect-ip",
/// address_type="INTERNAL",
/// purpose="PRIVATE_SERVICE_CONNECT",
/// network=network.id,
/// address="100.100.100.106")
/// default_global_forwarding_rule = gcp.compute.GlobalForwardingRule("default",
/// project=network.project,
/// name="globalrule",
/// target="all-apis",
/// network=network.id,
/// ip_address=default.id,
/// load_balancing_scheme="",
/// no_automate_dns_zone=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Project = "my-project-name",
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var vpcSubnetwork = new Gcp.Compute.Subnetwork("vpc_subnetwork", new()
/// {
/// Project = network.Project,
/// Name = "my-subnetwork",
/// IpCidrRange = "10.2.0.0/16",
/// Region = "us-central1",
/// Network = network.Id,
/// PrivateIpGoogleAccess = true,
/// });
///
/// var @default = new Gcp.Compute.GlobalAddress("default", new()
/// {
/// Project = network.Project,
/// Name = "global-psconnect-ip",
/// AddressType = "INTERNAL",
/// Purpose = "PRIVATE_SERVICE_CONNECT",
/// Network = network.Id,
/// Address = "100.100.100.106",
/// });
///
/// var defaultGlobalForwardingRule = new Gcp.Compute.GlobalForwardingRule("default", new()
/// {
/// Project = network.Project,
/// Name = "globalrule",
/// Target = "all-apis",
/// Network = network.Id,
/// IpAddress = @default.Id,
/// LoadBalancingScheme = "",
/// NoAutomateDnsZone = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Project:               pulumi.String("my-project-name"),
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewSubnetwork(ctx, "vpc_subnetwork", &compute.SubnetworkArgs{
/// Project:               network.Project,
/// Name:                  pulumi.String("my-subnetwork"),
/// IpCidrRange:           pulumi.String("10.2.0.0/16"),
/// Region:                pulumi.String("us-central1"),
/// Network:               network.ID(),
/// PrivateIpGoogleAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := compute.NewGlobalAddress(ctx, "default", &compute.GlobalAddressArgs{
/// Project:     network.Project,
/// Name:        pulumi.String("global-psconnect-ip"),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// Network:     network.ID(),
/// Address:     pulumi.String("100.100.100.106"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// Project:             network.Project,
/// Name:                pulumi.String("globalrule"),
/// Target:              pulumi.String("all-apis"),
/// Network:             network.ID(),
/// IpAddress:           _default.ID(),
/// LoadBalancingScheme: pulumi.String(""),
/// NoAutomateDnsZone:   pulumi.Bool(false),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.compute.GlobalForwardingRule;
/// import com.pulumi.gcp.compute.GlobalForwardingRuleArgs;
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
/// var network = new Network("network", NetworkArgs.builder()
/// .project("my-project-name")
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var vpcSubnetwork = new Subnetwork("vpcSubnetwork", SubnetworkArgs.builder()
/// .project(network.project())
/// .name("my-subnetwork")
/// .ipCidrRange("10.2.0.0/16")
/// .region("us-central1")
/// .network(network.id())
/// .privateIpGoogleAccess(true)
/// .build());
///
/// var default_ = new GlobalAddress("default", GlobalAddressArgs.builder()
/// .project(network.project())
/// .name("global-psconnect-ip")
/// .addressType("INTERNAL")
/// .purpose("PRIVATE_SERVICE_CONNECT")
/// .network(network.id())
/// .address("100.100.100.106")
/// .build());
///
/// var defaultGlobalForwardingRule = new GlobalForwardingRule("defaultGlobalForwardingRule", GlobalForwardingRuleArgs.builder()
/// .project(network.project())
/// .name("globalrule")
/// .target("all-apis")
/// .network(network.id())
/// .ipAddress(default_.id())
/// .loadBalancingScheme("")
/// .noAutomateDnsZone(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// network:
/// type: gcp:compute:Network
/// properties:
/// project: my-project-name
/// name: my-network
/// autoCreateSubnetworks: false
/// vpcSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: vpc_subnetwork
/// properties:
/// project: ${network.project}
/// name: my-subnetwork
/// ipCidrRange: 10.2.0.0/16
/// region: us-central1
/// network: ${network.id}
/// privateIpGoogleAccess: true
/// default:
/// type: gcp:compute:GlobalAddress
/// properties:
/// project: ${network.project}
/// name: global-psconnect-ip
/// addressType: INTERNAL
/// purpose: PRIVATE_SERVICE_CONNECT
/// network: ${network.id}
/// address: 100.100.100.106
/// defaultGlobalForwardingRule:
/// type: gcp:compute:GlobalForwardingRule
/// name: default
/// properties:
/// project: ${network.project}
/// name: globalrule
/// target: all-apis
/// network: ${network.id}
/// ipAddress: ${default.id}
/// loadBalancingScheme: ""
/// noAutomateDnsZone: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GlobalForwardingRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/forwardingRules/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GlobalForwardingRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalForwardingRule:GlobalForwardingRule default projects/{{project}}/global/forwardingRules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalForwardingRule:GlobalForwardingRule default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalForwardingRule:GlobalForwardingRule default {{name}}
/// ```
class GlobalForwardingRule extends CustomResource {
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  late final Output<bool?> allowPscGlobalAccess;

  /// [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  late final Output<String> baseForwardingRule;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Specifies the canary migration state for the backend buckets attached to this forwarding rule.
  /// Possible values are PREPARE, TEST_BY_PERCENTAGE, and TEST_ALL_TRAFFIC.
  /// To begin the migration from EXTERNAL to EXTERNAL_MANAGED, the state must be changed to
  /// PREPARE. The state must be changed to TEST_ALL_TRAFFIC before the loadBalancingScheme can be
  /// changed to EXTERNAL_MANAGED. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate
  /// traffic to backend buckets attached to this forwarding rule by percentage using
  /// externalManagedBackendBucketMigrationTestingPercentage.
  /// Rolling back a migration requires the states to be set in reverse order. So changing the
  /// scheme from EXTERNAL_MANAGED to EXTERNAL requires the state to be set to TEST_ALL_TRAFFIC at
  /// the same time. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate some traffic
  /// back to EXTERNAL or PREPARE can be used to migrate all traffic back to EXTERNAL.
  /// Possible values are: `PREPARE`, `TEST_BY_PERCENTAGE`, `TEST_ALL_TRAFFIC`.
  late final Output<String?> externalManagedBackendBucketMigrationState;

  /// Determines the fraction of requests to backend buckets that should be processed by the Global
  /// external Application Load Balancer.
  /// The value of this field must be in the range [0, 100].
  /// This value can only be set if the loadBalancingScheme in the forwarding rule is set to
  /// EXTERNAL (when using the Classic ALB) and the migration state is TEST_BY_PERCENTAGE.
  late final Output<double?>
      externalManagedBackendBucketMigrationTestingPercentage;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final Output<int> forwardingRuleId;

  /// IP address for which this forwarding rule accepts traffic. When a client
  /// sends traffic to this IP address, the forwarding rule directs the traffic
  /// to the referenced <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span>.
  /// While creating a forwarding rule, specifying an `IPAddress` is
  /// required under the following circumstances:
  /// * When the <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> is set to `targetGrpcProxy` and
  /// `validateForProxyless` is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the
  /// `IPAddress` should be set to `0.0.0.0`.
  /// * When the <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> is a Private Service Connect Google APIs
  /// bundle, you must specify an `IPAddress`.
  /// Otherwise, you can optionally specify an IP address that references an
  /// existing static (reserved) IP address resource. When omitted, Google Cloud
  /// assigns an ephemeral IP address.
  /// Use one of the following formats to specify an IP address while creating a
  /// forwarding rule:
  /// * IP address number, as in `100.1.2.3`
  /// * IPv6 address range, as in `2600:1234::/96`
  /// * Full resource URL, as in
  /// `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name`
  /// * Partial URL or by name, as in:
  /// * `projects/project_id/regions/region/addresses/address-name`
  /// * `regions/region/addresses/address-name`
  /// * `global/addresses/address-name`
  /// * `address-name`
  /// The forwarding rule's <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span>,
  /// and in most cases, also the `loadBalancingScheme`, determine the
  /// type of IP address that you can use. For detailed information, see
  /// [IP address
  /// specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// When reading an `IPAddress`, the API always returns the IP
  /// address number.
  late final Output<String> ipAddress;

  /// The IP protocol to which this rule applies.
  /// For protocol forwarding, valid
  /// options are `TCP`, `UDP`, `ESP`,
  /// `AH`, `SCTP`, `ICMP` and
  /// `L3_DEFAULT`.
  /// The valid IP protocols are different for different load balancing products
  /// as described in [Load balancing
  /// features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  /// Possible values are: `TCP`, `UDP`, `ESP`, `AH`, `SCTP`, `ICMP`.
  late final Output<String> ipProtocol;

  /// The IP Version that will be used by this global forwarding rule.
  /// Possible values are: `IPV4`, `IPV6`.
  late final Output<String?> ipVersion;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this forwarding rule.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Specifies the forwarding rule type.
  /// For more information about forwarding rules, refer to
  /// [Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL_MANAGED`, `INTERNAL_SELF_MANAGED`.
  late final Output<String?> loadBalancingScheme;

  /// Opaque filter criteria used by Loadbalancer to restrict routing
  /// configuration to a limited set xDS compliant clients. In their xDS
  /// requests to Loadbalancer, xDS clients present node metadata. If a
  /// match takes place, the relevant routing configuration is made available
  /// to those proxies.
  /// For each metadataFilter in this list, if its filterMatchCriteria is set
  /// to MATCH_ANY, at least one of the filterLabels must match the
  /// corresponding label provided in the metadata. If its filterMatchCriteria
  /// is set to MATCH_ALL, then all of its filterLabels must match with
  /// corresponding labels in the provided metadata.
  /// metadataFilters specified here can be overridden by those specified in
  /// the UrlMap that this ForwardingRule references.
  /// metadataFilters only applies to Loadbalancers that have their
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final Output<List<GlobalForwardingRuleMetadataFilter>?> metadataFilters;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, the forwarding rule name must be a 1-20 characters string with
  /// lowercase letters and numbers and must start with a letter.
  late final Output<String> name;

  /// This field is not used for external load balancing.
  /// For Internal TCP/UDP Load Balancing, this field identifies the network that
  /// the load balanced IP should belong to for this Forwarding Rule.
  /// If the subnetwork is specified, the network of the subnetwork will be used.
  /// If neither subnetwork nor this field is specified, the default network will
  /// be used.
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, a network must be provided.
  late final Output<String> network;

  /// This signifies the networking tier used for configuring
  /// this load balancer and can only take the following values:
  /// `PREMIUM`, `STANDARD`.
  /// For regional ForwardingRule, the valid values are `PREMIUM` and
  /// `STANDARD`. For GlobalForwardingRule, the valid value is
  /// `PREMIUM`.
  /// If this field is not specified, it is assumed to be `PREMIUM`.
  /// If `IPAddress` is specified, this value must be equal to the
  /// networkTier of the Address.
  /// Possible values are: `PREMIUM`, `STANDARD`.
  late final Output<String> networkTier;

  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  late final Output<bool?> noAutomateDnsZone;

  /// The `portRange` field has the following limitations:
  /// * It requires that the forwarding rule `IPProtocol` be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: external passthrough
  /// Network Load Balancers, internal and external proxy Network Load
  /// Balancers, internal and external Application Load Balancers, external
  /// protocol forwarding, and Classic VPN.
  /// * Some products have restrictions on what ports can be used. See
  /// [port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
  /// for details.
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same `[IPAddress, IPProtocol]` pair, and cannot have overlapping
  /// `portRange`s.
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same `[IPAddress, IPProtocol]` pair, and
  /// cannot have overlapping `portRange`s.
  /// @pattern: \d+(?:-\d+)?
  late final Output<String?> portRange;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The PSC connection id of the PSC Forwarding Rule.
  late final Output<String> pscConnectionId;

  /// The PSC connection status of the PSC Forwarding Rule. Possible values: `STATUS_UNSPECIFIED`, `PENDING`, `ACCEPTED`, `REJECTED`, `CLOSED`
  late final Output<String> pscConnectionStatus;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Service Directory resources to register this forwarding rule with.
  /// Currently, only supports a single Service Directory resource.
  /// Structure is documented below.
  late final Output<GlobalForwardingRuleServiceDirectoryRegistrations>
      serviceDirectoryRegistrations;

  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  late final Output<List<String>?> sourceIpRanges;

  /// This field identifies the subnetwork that the load balanced IP should
  /// belong to for this Forwarding Rule, used in internal load balancing and
  /// network load balancing with IPv6.
  /// If the network specified is in auto subnet mode, this field is optional.
  /// However, a subnetwork must be specified if the network is in custom subnet
  /// mode or when creating external forwarding rule with IPv6.
  late final Output<String> subnetwork;

  /// The URL of the target resource to receive the matched traffic.  For
  /// regional forwarding rules, this target must be in the same region as the
  /// forwarding rule. For global forwarding rules, this target must be a global
  /// load balancing resource.
  /// The forwarded traffic must be of a type appropriate to the target object.
  /// *  For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// *  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:
  /// *  `vpc-sc` - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).
  /// *  `all-apis` - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).
  /// For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.
  late final Output<String> target;

  GlobalForwardingRule(
    String name, {
    GlobalForwardingRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalForwardingRule:GlobalForwardingRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowPscGlobalAccess = Output.createUnknown<bool?>();
    this.baseForwardingRule = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.externalManagedBackendBucketMigrationState =
        Output.createUnknown<String?>();
    this.externalManagedBackendBucketMigrationTestingPercentage =
        Output.createUnknown<double?>();
    this.forwardingRuleId = Output.createUnknown<int>();
    this.ipAddress = Output.createUnknown<String>();
    this.ipProtocol = Output.createUnknown<String>();
    this.ipVersion = Output.createUnknown<String?>();
    this.labelFingerprint = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.loadBalancingScheme = Output.createUnknown<String?>();
    this.metadataFilters =
        Output.createUnknown<List<GlobalForwardingRuleMetadataFilter>?>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.networkTier = Output.createUnknown<String>();
    this.noAutomateDnsZone = Output.createUnknown<bool?>();
    this.portRange = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.pscConnectionId = Output.createUnknown<String>();
    this.pscConnectionStatus = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.selfLink = Output.createUnknown<String>();
    this.serviceDirectoryRegistrations = Output.createUnknown<
        GlobalForwardingRuleServiceDirectoryRegistrations>();
    this.sourceIpRanges = Output.createUnknown<List<String>?>();
    this.subnetwork = Output.createUnknown<String>();
    this.target = Output.createUnknown<String>();
  }
}
