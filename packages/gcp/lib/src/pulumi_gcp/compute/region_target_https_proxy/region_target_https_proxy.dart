import 'package:pulumi/pulumi.dart';
import 'region_target_https_proxy_args.dart';

/// Represents a RegionTargetHttpsProxy resource, which is used by one or more
/// forwarding rules to route incoming HTTPS requests to a URL map.
///
///
/// To get more information about RegionTargetHttpsProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies)
///
/// ## Example Usage
///
/// ### Region Target Https Proxy Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultRegionSslCertificate = new gcp.compute.RegionSslCertificate("default", {
/// region: "us-central1",
/// name: "my-certificate",
/// privateKey: std.file({
/// input: "path/to/private.key",
/// }).then(invoke => invoke.result),
/// certificate: std.file({
/// input: "path/to/certificate.crt",
/// }).then(invoke => invoke.result),
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
/// region: "us-central1",
/// name: "http-health-check",
/// httpHealthCheck: {
/// port: 80,
/// },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// region: "us-central1",
/// name: "backend-service",
/// protocol: "HTTP",
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// timeoutSec: 10,
/// healthChecks: defaultRegionHealthCheck.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
/// region: "us-central1",
/// name: "url-map",
/// description: "a description",
/// defaultService: defaultRegionBackendService.id,
/// hostRules: [{
/// hosts: ["mysite.com"],
/// pathMatcher: "allpaths",
/// }],
/// pathMatchers: [{
/// name: "allpaths",
/// defaultService: defaultRegionBackendService.id,
/// pathRules: [{
/// paths: ["/*"],
/// service: defaultRegionBackendService.id,
/// }],
/// }],
/// });
/// const _default = new gcp.compute.RegionTargetHttpsProxy("default", {
/// region: "us-central1",
/// name: "test-proxy",
/// urlMap: defaultRegionUrlMap.id,
/// sslCertificates: [defaultRegionSslCertificate.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_region_ssl_certificate = gcp.compute.RegionSslCertificate("default",
/// region="us-central1",
/// name="my-certificate",
/// private_key=std.file(input="path/to/private.key").result,
/// certificate=std.file(input="path/to/certificate.crt").result)
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
/// region="us-central1",
/// name="http-health-check",
/// http_health_check={
/// "port": 80,
/// })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// region="us-central1",
/// name="backend-service",
/// protocol="HTTP",
/// load_balancing_scheme="INTERNAL_MANAGED",
/// timeout_sec=10,
/// health_checks=default_region_health_check.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
/// region="us-central1",
/// name="url-map",
/// description="a description",
/// default_service=default_region_backend_service.id,
/// host_rules=[{
/// "hosts": ["mysite.com"],
/// "path_matcher": "allpaths",
/// }],
/// path_matchers=[{
/// "name": "allpaths",
/// "default_service": default_region_backend_service.id,
/// "path_rules": [{
/// "paths": ["/*"],
/// "service": default_region_backend_service.id,
/// }],
/// }])
/// default = gcp.compute.RegionTargetHttpsProxy("default",
/// region="us-central1",
/// name="test-proxy",
/// url_map=default_region_url_map.id,
/// ssl_certificates=[default_region_ssl_certificate.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultRegionSslCertificate = new Gcp.Compute.RegionSslCertificate("default", new()
/// {
/// Region = "us-central1",
/// Name = "my-certificate",
/// PrivateKey = Std.File.Invoke(new()
/// {
/// Input = "path/to/private.key",
/// }).Apply(invoke => invoke.Result),
/// Certificate = Std.File.Invoke(new()
/// {
/// Input = "path/to/certificate.crt",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
/// {
/// Region = "us-central1",
/// Name = "http-health-check",
/// HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Region = "us-central1",
/// Name = "backend-service",
/// Protocol = "HTTP",
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// TimeoutSec = 10,
/// HealthChecks = defaultRegionHealthCheck.Id,
/// });
///
/// var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
/// {
/// Region = "us-central1",
/// Name = "url-map",
/// Description = "a description",
/// DefaultService = defaultRegionBackendService.Id,
/// HostRules = new[]
/// {
/// new Gcp.Compute.Inputs.RegionUrlMapHostRuleArgs
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
/// new Gcp.Compute.Inputs.RegionUrlMapPathMatcherArgs
/// {
/// Name = "allpaths",
/// DefaultService = defaultRegionBackendService.Id,
/// PathRules = new[]
/// {
/// new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
/// {
/// Paths = new[]
/// {
/// "/*",
/// },
/// Service = defaultRegionBackendService.Id,
/// },
/// },
/// },
/// },
/// });
///
/// var @default = new Gcp.Compute.RegionTargetHttpsProxy("default", new()
/// {
/// Region = "us-central1",
/// Name = "test-proxy",
/// UrlMap = defaultRegionUrlMap.Id,
/// SslCertificates = new[]
/// {
/// defaultRegionSslCertificate.Id,
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
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/private.key",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile1, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/certificate.crt",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultRegionSslCertificate, err := compute.NewRegionSslCertificate(ctx, "default", &compute.RegionSslCertificateArgs{
/// Region:      pulumi.String("us-central1"),
/// Name:        pulumi.String("my-certificate"),
/// PrivateKey:  pulumi.String(invokeFile.Result),
/// Certificate: pulumi.String(invokeFile1.Result),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("http-health-check"),
/// HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Region:              pulumi.String("us-central1"),
/// Name:                pulumi.String("backend-service"),
/// Protocol:            pulumi.String("HTTP"),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// TimeoutSec:          pulumi.Int(10),
/// HealthChecks:        defaultRegionHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// Region:         pulumi.String("us-central1"),
/// Name:           pulumi.String("url-map"),
/// Description:    pulumi.String("a description"),
/// DefaultService: defaultRegionBackendService.ID(),
/// HostRules: compute.RegionUrlMapHostRuleArray{
/// &compute.RegionUrlMapHostRuleArgs{
/// Hosts: pulumi.StringArray{
/// pulumi.String("mysite.com"),
/// },
/// PathMatcher: pulumi.String("allpaths"),
/// },
/// },
/// PathMatchers: compute.RegionUrlMapPathMatcherArray{
/// &compute.RegionUrlMapPathMatcherArgs{
/// Name:           pulumi.String("allpaths"),
/// DefaultService: defaultRegionBackendService.ID(),
/// PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// &compute.RegionUrlMapPathMatcherPathRuleArgs{
/// Paths: pulumi.StringArray{
/// pulumi.String("/*"),
/// },
/// Service: defaultRegionBackendService.ID(),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionTargetHttpsProxy(ctx, "default", &compute.RegionTargetHttpsProxyArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("test-proxy"),
/// UrlMap: defaultRegionUrlMap.ID(),
/// SslCertificates: pulumi.StringArray{
/// defaultRegionSslCertificate.ID(),
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
/// import com.pulumi.gcp.compute.RegionSslCertificate;
/// import com.pulumi.gcp.compute.RegionSslCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxyArgs;
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
/// var defaultRegionSslCertificate = new RegionSslCertificate("defaultRegionSslCertificate", RegionSslCertificateArgs.builder()
/// .region("us-central1")
/// .name("my-certificate")
/// .privateKey(StdFunctions.file(FileArgs.builder()
/// .input("path/to/private.key")
/// .build()).result())
/// .certificate(StdFunctions.file(FileArgs.builder()
/// .input("path/to/certificate.crt")
/// .build()).result())
/// .build());
///
/// var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
/// .region("us-central1")
/// .name("http-health-check")
/// .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .region("us-central1")
/// .name("backend-service")
/// .protocol("HTTP")
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .timeoutSec(10)
/// .healthChecks(defaultRegionHealthCheck.id())
/// .build());
///
/// var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
/// .region("us-central1")
/// .name("url-map")
/// .description("a description")
/// .defaultService(defaultRegionBackendService.id())
/// .hostRules(RegionUrlMapHostRuleArgs.builder()
/// .hosts("mysite.com")
/// .pathMatcher("allpaths")
/// .build())
/// .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
/// .name("allpaths")
/// .defaultService(defaultRegionBackendService.id())
/// .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
/// .paths("/*")
/// .service(defaultRegionBackendService.id())
/// .build())
/// .build())
/// .build());
///
/// var default_ = new RegionTargetHttpsProxy("default", RegionTargetHttpsProxyArgs.builder()
/// .region("us-central1")
/// .name("test-proxy")
/// .urlMap(defaultRegionUrlMap.id())
/// .sslCertificates(defaultRegionSslCertificate.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:RegionTargetHttpsProxy
/// properties:
/// region: us-central1
/// name: test-proxy
/// urlMap: ${defaultRegionUrlMap.id}
/// sslCertificates:
/// - ${defaultRegionSslCertificate.id}
/// defaultRegionSslCertificate:
/// type: gcp:compute:RegionSslCertificate
/// name: default
/// properties:
/// region: us-central1
/// name: my-certificate
/// privateKey:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/private.key
/// return: result
/// certificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/certificate.crt
/// return: result
/// defaultRegionUrlMap:
/// type: gcp:compute:RegionUrlMap
/// name: default
/// properties:
/// region: us-central1
/// name: url-map
/// description: a description
/// defaultService: ${defaultRegionBackendService.id}
/// hostRules:
/// - hosts:
/// - mysite.com
/// pathMatcher: allpaths
/// pathMatchers:
/// - name: allpaths
/// defaultService: ${defaultRegionBackendService.id}
/// pathRules:
/// - paths:
/// - /*
/// service: ${defaultRegionBackendService.id}
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// region: us-central1
/// name: backend-service
/// protocol: HTTP
/// loadBalancingScheme: INTERNAL_MANAGED
/// timeoutSec: 10
/// healthChecks: ${defaultRegionHealthCheck.id}
/// defaultRegionHealthCheck:
/// type: gcp:compute:RegionHealthCheck
/// name: default
/// properties:
/// region: us-central1
/// name: http-health-check
/// httpHealthCheck:
/// port: 80
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Region Target Https Proxy Http Keep Alive Timeout
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultRegionSslCertificate = new gcp.compute.RegionSslCertificate("default", {
/// region: "us-central1",
/// name: "my-certificate",
/// privateKey: std.file({
/// input: "path/to/private.key",
/// }).then(invoke => invoke.result),
/// certificate: std.file({
/// input: "path/to/certificate.crt",
/// }).then(invoke => invoke.result),
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
/// region: "us-central1",
/// name: "http-health-check",
/// httpHealthCheck: {
/// port: 80,
/// },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// region: "us-central1",
/// name: "backend-service",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// healthChecks: defaultRegionHealthCheck.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
/// region: "us-central1",
/// name: "url-map",
/// description: "a description",
/// defaultService: defaultRegionBackendService.id,
/// hostRules: [{
/// hosts: ["mysite.com"],
/// pathMatcher: "allpaths",
/// }],
/// pathMatchers: [{
/// name: "allpaths",
/// defaultService: defaultRegionBackendService.id,
/// pathRules: [{
/// paths: ["/*"],
/// service: defaultRegionBackendService.id,
/// }],
/// }],
/// });
/// const _default = new gcp.compute.RegionTargetHttpsProxy("default", {
/// region: "us-central1",
/// name: "test-http-keep-alive-timeout-proxy",
/// httpKeepAliveTimeoutSec: 600,
/// urlMap: defaultRegionUrlMap.id,
/// sslCertificates: [defaultRegionSslCertificate.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_region_ssl_certificate = gcp.compute.RegionSslCertificate("default",
/// region="us-central1",
/// name="my-certificate",
/// private_key=std.file(input="path/to/private.key").result,
/// certificate=std.file(input="path/to/certificate.crt").result)
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
/// region="us-central1",
/// name="http-health-check",
/// http_health_check={
/// "port": 80,
/// })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// region="us-central1",
/// name="backend-service",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// load_balancing_scheme="INTERNAL_MANAGED",
/// health_checks=default_region_health_check.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
/// region="us-central1",
/// name="url-map",
/// description="a description",
/// default_service=default_region_backend_service.id,
/// host_rules=[{
/// "hosts": ["mysite.com"],
/// "path_matcher": "allpaths",
/// }],
/// path_matchers=[{
/// "name": "allpaths",
/// "default_service": default_region_backend_service.id,
/// "path_rules": [{
/// "paths": ["/*"],
/// "service": default_region_backend_service.id,
/// }],
/// }])
/// default = gcp.compute.RegionTargetHttpsProxy("default",
/// region="us-central1",
/// name="test-http-keep-alive-timeout-proxy",
/// http_keep_alive_timeout_sec=600,
/// url_map=default_region_url_map.id,
/// ssl_certificates=[default_region_ssl_certificate.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultRegionSslCertificate = new Gcp.Compute.RegionSslCertificate("default", new()
/// {
/// Region = "us-central1",
/// Name = "my-certificate",
/// PrivateKey = Std.File.Invoke(new()
/// {
/// Input = "path/to/private.key",
/// }).Apply(invoke => invoke.Result),
/// Certificate = Std.File.Invoke(new()
/// {
/// Input = "path/to/certificate.crt",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
/// {
/// Region = "us-central1",
/// Name = "http-health-check",
/// HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Region = "us-central1",
/// Name = "backend-service",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// HealthChecks = defaultRegionHealthCheck.Id,
/// });
///
/// var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
/// {
/// Region = "us-central1",
/// Name = "url-map",
/// Description = "a description",
/// DefaultService = defaultRegionBackendService.Id,
/// HostRules = new[]
/// {
/// new Gcp.Compute.Inputs.RegionUrlMapHostRuleArgs
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
/// new Gcp.Compute.Inputs.RegionUrlMapPathMatcherArgs
/// {
/// Name = "allpaths",
/// DefaultService = defaultRegionBackendService.Id,
/// PathRules = new[]
/// {
/// new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
/// {
/// Paths = new[]
/// {
/// "/*",
/// },
/// Service = defaultRegionBackendService.Id,
/// },
/// },
/// },
/// },
/// });
///
/// var @default = new Gcp.Compute.RegionTargetHttpsProxy("default", new()
/// {
/// Region = "us-central1",
/// Name = "test-http-keep-alive-timeout-proxy",
/// HttpKeepAliveTimeoutSec = 600,
/// UrlMap = defaultRegionUrlMap.Id,
/// SslCertificates = new[]
/// {
/// defaultRegionSslCertificate.Id,
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
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/private.key",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile1, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/certificate.crt",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultRegionSslCertificate, err := compute.NewRegionSslCertificate(ctx, "default", &compute.RegionSslCertificateArgs{
/// Region:      pulumi.String("us-central1"),
/// Name:        pulumi.String("my-certificate"),
/// PrivateKey:  pulumi.String(invokeFile.Result),
/// Certificate: pulumi.String(invokeFile1.Result),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("http-health-check"),
/// HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Region:              pulumi.String("us-central1"),
/// Name:                pulumi.String("backend-service"),
/// PortName:            pulumi.String("http"),
/// Protocol:            pulumi.String("HTTP"),
/// TimeoutSec:          pulumi.Int(10),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// HealthChecks:        defaultRegionHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// Region:         pulumi.String("us-central1"),
/// Name:           pulumi.String("url-map"),
/// Description:    pulumi.String("a description"),
/// DefaultService: defaultRegionBackendService.ID(),
/// HostRules: compute.RegionUrlMapHostRuleArray{
/// &compute.RegionUrlMapHostRuleArgs{
/// Hosts: pulumi.StringArray{
/// pulumi.String("mysite.com"),
/// },
/// PathMatcher: pulumi.String("allpaths"),
/// },
/// },
/// PathMatchers: compute.RegionUrlMapPathMatcherArray{
/// &compute.RegionUrlMapPathMatcherArgs{
/// Name:           pulumi.String("allpaths"),
/// DefaultService: defaultRegionBackendService.ID(),
/// PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// &compute.RegionUrlMapPathMatcherPathRuleArgs{
/// Paths: pulumi.StringArray{
/// pulumi.String("/*"),
/// },
/// Service: defaultRegionBackendService.ID(),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionTargetHttpsProxy(ctx, "default", &compute.RegionTargetHttpsProxyArgs{
/// Region:                  pulumi.String("us-central1"),
/// Name:                    pulumi.String("test-http-keep-alive-timeout-proxy"),
/// HttpKeepAliveTimeoutSec: pulumi.Int(600),
/// UrlMap:                  defaultRegionUrlMap.ID(),
/// SslCertificates: pulumi.StringArray{
/// defaultRegionSslCertificate.ID(),
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
/// import com.pulumi.gcp.compute.RegionSslCertificate;
/// import com.pulumi.gcp.compute.RegionSslCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxyArgs;
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
/// var defaultRegionSslCertificate = new RegionSslCertificate("defaultRegionSslCertificate", RegionSslCertificateArgs.builder()
/// .region("us-central1")
/// .name("my-certificate")
/// .privateKey(StdFunctions.file(FileArgs.builder()
/// .input("path/to/private.key")
/// .build()).result())
/// .certificate(StdFunctions.file(FileArgs.builder()
/// .input("path/to/certificate.crt")
/// .build()).result())
/// .build());
///
/// var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
/// .region("us-central1")
/// .name("http-health-check")
/// .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .region("us-central1")
/// .name("backend-service")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .healthChecks(defaultRegionHealthCheck.id())
/// .build());
///
/// var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
/// .region("us-central1")
/// .name("url-map")
/// .description("a description")
/// .defaultService(defaultRegionBackendService.id())
/// .hostRules(RegionUrlMapHostRuleArgs.builder()
/// .hosts("mysite.com")
/// .pathMatcher("allpaths")
/// .build())
/// .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
/// .name("allpaths")
/// .defaultService(defaultRegionBackendService.id())
/// .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
/// .paths("/*")
/// .service(defaultRegionBackendService.id())
/// .build())
/// .build())
/// .build());
///
/// var default_ = new RegionTargetHttpsProxy("default", RegionTargetHttpsProxyArgs.builder()
/// .region("us-central1")
/// .name("test-http-keep-alive-timeout-proxy")
/// .httpKeepAliveTimeoutSec(600)
/// .urlMap(defaultRegionUrlMap.id())
/// .sslCertificates(defaultRegionSslCertificate.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:RegionTargetHttpsProxy
/// properties:
/// region: us-central1
/// name: test-http-keep-alive-timeout-proxy
/// httpKeepAliveTimeoutSec: 600
/// urlMap: ${defaultRegionUrlMap.id}
/// sslCertificates:
/// - ${defaultRegionSslCertificate.id}
/// defaultRegionSslCertificate:
/// type: gcp:compute:RegionSslCertificate
/// name: default
/// properties:
/// region: us-central1
/// name: my-certificate
/// privateKey:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/private.key
/// return: result
/// certificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/certificate.crt
/// return: result
/// defaultRegionUrlMap:
/// type: gcp:compute:RegionUrlMap
/// name: default
/// properties:
/// region: us-central1
/// name: url-map
/// description: a description
/// defaultService: ${defaultRegionBackendService.id}
/// hostRules:
/// - hosts:
/// - mysite.com
/// pathMatcher: allpaths
/// pathMatchers:
/// - name: allpaths
/// defaultService: ${defaultRegionBackendService.id}
/// pathRules:
/// - paths:
/// - /*
/// service: ${defaultRegionBackendService.id}
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// region: us-central1
/// name: backend-service
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// loadBalancingScheme: INTERNAL_MANAGED
/// healthChecks: ${defaultRegionHealthCheck.id}
/// defaultRegionHealthCheck:
/// type: gcp:compute:RegionHealthCheck
/// name: default
/// properties:
/// region: us-central1
/// name: http-health-check
/// httpHealthCheck:
/// port: 80
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Region Target Https Proxy Mtls
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const defaultTrustConfig = new gcp.certificatemanager.TrustConfig("default", {
/// location: "us-central1",
/// name: "my-trust-config",
/// description: "sample description for trust config",
/// trustStores: [{
/// trustAnchors: [{
/// pemCertificate: std.file({
/// input: "test-fixtures/ca_cert.pem",
/// }).then(invoke => invoke.result),
/// }],
/// intermediateCas: [{
/// pemCertificate: std.file({
/// input: "test-fixtures/ca_cert.pem",
/// }).then(invoke => invoke.result),
/// }],
/// }],
/// labels: {
/// foo: "bar",
/// },
/// });
/// const defaultServerTlsPolicy = new gcp.networksecurity.ServerTlsPolicy("default", {
/// location: "us-central1",
/// name: "my-tls-policy",
/// description: "my description",
/// allowOpen: false,
/// mtlsPolicy: {
/// clientValidationMode: "REJECT_INVALID",
/// clientValidationTrustConfig: pulumi.all([project, defaultTrustConfig.name]).apply(([project, name]) => `projects/${project.number}/locations/us-central1/trustConfigs/${name}`),
/// },
/// });
/// const defaultRegionSslCertificate = new gcp.compute.RegionSslCertificate("default", {
/// region: "us-central1",
/// name: "my-certificate",
/// privateKey: std.file({
/// input: "path/to/private.key",
/// }).then(invoke => invoke.result),
/// certificate: std.file({
/// input: "path/to/certificate.crt",
/// }).then(invoke => invoke.result),
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
/// region: "us-central1",
/// name: "http-health-check",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// httpHealthCheck: {
/// port: 80,
/// },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// region: "us-central1",
/// name: "backend-service",
/// portName: "http",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// healthChecks: defaultRegionHealthCheck.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
/// region: "us-central1",
/// name: "url-map",
/// description: "a description",
/// defaultService: defaultRegionBackendService.id,
/// hostRules: [{
/// hosts: ["mysite.com"],
/// pathMatcher: "allpaths",
/// }],
/// pathMatchers: [{
/// name: "allpaths",
/// defaultService: defaultRegionBackendService.id,
/// pathRules: [{
/// paths: ["/*"],
/// service: defaultRegionBackendService.id,
/// }],
/// }],
/// });
/// const _default = new gcp.compute.RegionTargetHttpsProxy("default", {
/// region: "us-central1",
/// name: "test-mtls-proxy",
/// urlMap: defaultRegionUrlMap.id,
/// sslCertificates: [defaultRegionSslCertificate.id],
/// serverTlsPolicy: defaultServerTlsPolicy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// default_trust_config = gcp.certificatemanager.TrustConfig("default",
/// location="us-central1",
/// name="my-trust-config",
/// description="sample description for trust config",
/// trust_stores=[{
/// "trust_anchors": [{
/// "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
/// }],
/// "intermediate_cas": [{
/// "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
/// }],
/// }],
/// labels={
/// "foo": "bar",
/// })
/// default_server_tls_policy = gcp.networksecurity.ServerTlsPolicy("default",
/// location="us-central1",
/// name="my-tls-policy",
/// description="my description",
/// allow_open=False,
/// mtls_policy={
/// "client_validation_mode": "REJECT_INVALID",
/// "client_validation_trust_config": default_trust_config.name.apply(lambda name: f"projects/{project.number}/locations/us-central1/trustConfigs/{name}"),
/// })
/// default_region_ssl_certificate = gcp.compute.RegionSslCertificate("default",
/// region="us-central1",
/// name="my-certificate",
/// private_key=std.file(input="path/to/private.key").result,
/// certificate=std.file(input="path/to/certificate.crt").result)
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
/// region="us-central1",
/// name="http-health-check",
/// check_interval_sec=1,
/// timeout_sec=1,
/// http_health_check={
/// "port": 80,
/// })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// region="us-central1",
/// name="backend-service",
/// port_name="http",
/// protocol="HTTP",
/// timeout_sec=10,
/// load_balancing_scheme="INTERNAL_MANAGED",
/// health_checks=default_region_health_check.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
/// region="us-central1",
/// name="url-map",
/// description="a description",
/// default_service=default_region_backend_service.id,
/// host_rules=[{
/// "hosts": ["mysite.com"],
/// "path_matcher": "allpaths",
/// }],
/// path_matchers=[{
/// "name": "allpaths",
/// "default_service": default_region_backend_service.id,
/// "path_rules": [{
/// "paths": ["/*"],
/// "service": default_region_backend_service.id,
/// }],
/// }])
/// default = gcp.compute.RegionTargetHttpsProxy("default",
/// region="us-central1",
/// name="test-mtls-proxy",
/// url_map=default_region_url_map.id,
/// ssl_certificates=[default_region_ssl_certificate.id],
/// server_tls_policy=default_server_tls_policy.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var defaultTrustConfig = new Gcp.CertificateManager.TrustConfig("default", new()
/// {
/// Location = "us-central1",
/// Name = "my-trust-config",
/// Description = "sample description for trust config",
/// TrustStores = new[]
/// {
/// new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreArgs
/// {
/// TrustAnchors = new[]
/// {
/// new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreTrustAnchorArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/ca_cert.pem",
/// }).Apply(invoke => invoke.Result),
/// },
/// },
/// IntermediateCas = new[]
/// {
/// new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreIntermediateCaArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/ca_cert.pem",
/// }).Apply(invoke => invoke.Result),
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
/// var defaultServerTlsPolicy = new Gcp.NetworkSecurity.ServerTlsPolicy("default", new()
/// {
/// Location = "us-central1",
/// Name = "my-tls-policy",
/// Description = "my description",
/// AllowOpen = false,
/// MtlsPolicy = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyMtlsPolicyArgs
/// {
/// ClientValidationMode = "REJECT_INVALID",
/// ClientValidationTrustConfig = Output.Tuple(project, defaultTrustConfig.Name).Apply(values =>
/// {
/// var project = values.Item1;
/// var name = values.Item2;
/// return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-central1/trustConfigs/{name}";
/// }),
/// },
/// });
///
/// var defaultRegionSslCertificate = new Gcp.Compute.RegionSslCertificate("default", new()
/// {
/// Region = "us-central1",
/// Name = "my-certificate",
/// PrivateKey = Std.File.Invoke(new()
/// {
/// Input = "path/to/private.key",
/// }).Apply(invoke => invoke.Result),
/// Certificate = Std.File.Invoke(new()
/// {
/// Input = "path/to/certificate.crt",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
/// {
/// Region = "us-central1",
/// Name = "http-health-check",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Region = "us-central1",
/// Name = "backend-service",
/// PortName = "http",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// HealthChecks = defaultRegionHealthCheck.Id,
/// });
///
/// var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
/// {
/// Region = "us-central1",
/// Name = "url-map",
/// Description = "a description",
/// DefaultService = defaultRegionBackendService.Id,
/// HostRules = new[]
/// {
/// new Gcp.Compute.Inputs.RegionUrlMapHostRuleArgs
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
/// new Gcp.Compute.Inputs.RegionUrlMapPathMatcherArgs
/// {
/// Name = "allpaths",
/// DefaultService = defaultRegionBackendService.Id,
/// PathRules = new[]
/// {
/// new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
/// {
/// Paths = new[]
/// {
/// "/*",
/// },
/// Service = defaultRegionBackendService.Id,
/// },
/// },
/// },
/// },
/// });
///
/// var @default = new Gcp.Compute.RegionTargetHttpsProxy("default", new()
/// {
/// Region = "us-central1",
/// Name = "test-mtls-proxy",
/// UrlMap = defaultRegionUrlMap.Id,
/// SslCertificates = new[]
/// {
/// defaultRegionSslCertificate.Id,
/// },
/// ServerTlsPolicy = defaultServerTlsPolicy.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/ca_cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile1, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/ca_cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultTrustConfig, err := certificatemanager.NewTrustConfig(ctx, "default", &certificatemanager.TrustConfigArgs{
/// Location:    pulumi.String("us-central1"),
/// Name:        pulumi.String("my-trust-config"),
/// Description: pulumi.String("sample description for trust config"),
/// TrustStores: certificatemanager.TrustConfigTrustStoreArray{
/// &certificatemanager.TrustConfigTrustStoreArgs{
/// TrustAnchors: certificatemanager.TrustConfigTrustStoreTrustAnchorArray{
/// &certificatemanager.TrustConfigTrustStoreTrustAnchorArgs{
/// PemCertificate: pulumi.String(invokeFile.Result),
/// },
/// },
/// IntermediateCas: certificatemanager.TrustConfigTrustStoreIntermediateCaArray{
/// &certificatemanager.TrustConfigTrustStoreIntermediateCaArgs{
/// PemCertificate: pulumi.String(invokeFile1.Result),
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
/// defaultServerTlsPolicy, err := networksecurity.NewServerTlsPolicy(ctx, "default", &networksecurity.ServerTlsPolicyArgs{
/// Location:    pulumi.String("us-central1"),
/// Name:        pulumi.String("my-tls-policy"),
/// Description: pulumi.String("my description"),
/// AllowOpen:   pulumi.Bool(false),
/// MtlsPolicy: &networksecurity.ServerTlsPolicyMtlsPolicyArgs{
/// ClientValidationMode: pulumi.String("REJECT_INVALID"),
/// ClientValidationTrustConfig: defaultTrustConfig.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("projects/%v/locations/us-central1/trustConfigs/%v", project.Number, name), nil
/// }).(pulumi.StringOutput),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile2, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/private.key",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile3, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/certificate.crt",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultRegionSslCertificate, err := compute.NewRegionSslCertificate(ctx, "default", &compute.RegionSslCertificateArgs{
/// Region:      pulumi.String("us-central1"),
/// Name:        pulumi.String("my-certificate"),
/// PrivateKey:  pulumi.String(invokeFile2.Result),
/// Certificate: pulumi.String(invokeFile3.Result),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// Region:           pulumi.String("us-central1"),
/// Name:             pulumi.String("http-health-check"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Region:              pulumi.String("us-central1"),
/// Name:                pulumi.String("backend-service"),
/// PortName:            pulumi.String("http"),
/// Protocol:            pulumi.String("HTTP"),
/// TimeoutSec:          pulumi.Int(10),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// HealthChecks:        defaultRegionHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// Region:         pulumi.String("us-central1"),
/// Name:           pulumi.String("url-map"),
/// Description:    pulumi.String("a description"),
/// DefaultService: defaultRegionBackendService.ID(),
/// HostRules: compute.RegionUrlMapHostRuleArray{
/// &compute.RegionUrlMapHostRuleArgs{
/// Hosts: pulumi.StringArray{
/// pulumi.String("mysite.com"),
/// },
/// PathMatcher: pulumi.String("allpaths"),
/// },
/// },
/// PathMatchers: compute.RegionUrlMapPathMatcherArray{
/// &compute.RegionUrlMapPathMatcherArgs{
/// Name:           pulumi.String("allpaths"),
/// DefaultService: defaultRegionBackendService.ID(),
/// PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// &compute.RegionUrlMapPathMatcherPathRuleArgs{
/// Paths: pulumi.StringArray{
/// pulumi.String("/*"),
/// },
/// Service: defaultRegionBackendService.ID(),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionTargetHttpsProxy(ctx, "default", &compute.RegionTargetHttpsProxyArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("test-mtls-proxy"),
/// UrlMap: defaultRegionUrlMap.ID(),
/// SslCertificates: pulumi.StringArray{
/// defaultRegionSslCertificate.ID(),
/// },
/// ServerTlsPolicy: defaultServerTlsPolicy.ID(),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyMtlsPolicyArgs;
/// import com.pulumi.gcp.compute.RegionSslCertificate;
/// import com.pulumi.gcp.compute.RegionSslCertificateArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxyArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var defaultTrustConfig = new TrustConfig("defaultTrustConfig", TrustConfigArgs.builder()
/// .location("us-central1")
/// .name("my-trust-config")
/// .description("sample description for trust config")
/// .trustStores(TrustConfigTrustStoreArgs.builder()
/// .trustAnchors(TrustConfigTrustStoreTrustAnchorArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/ca_cert.pem")
/// .build()).result())
/// .build())
/// .intermediateCas(TrustConfigTrustStoreIntermediateCaArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/ca_cert.pem")
/// .build()).result())
/// .build())
/// .build())
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// var defaultServerTlsPolicy = new ServerTlsPolicy("defaultServerTlsPolicy", ServerTlsPolicyArgs.builder()
/// .location("us-central1")
/// .name("my-tls-policy")
/// .description("my description")
/// .allowOpen(false)
/// .mtlsPolicy(ServerTlsPolicyMtlsPolicyArgs.builder()
/// .clientValidationMode("REJECT_INVALID")
/// .clientValidationTrustConfig(defaultTrustConfig.name().applyValue(_name -> String.format("projects/%s/locations/us-central1/trustConfigs/%s", project.number(),_name)))
/// .build())
/// .build());
///
/// var defaultRegionSslCertificate = new RegionSslCertificate("defaultRegionSslCertificate", RegionSslCertificateArgs.builder()
/// .region("us-central1")
/// .name("my-certificate")
/// .privateKey(StdFunctions.file(FileArgs.builder()
/// .input("path/to/private.key")
/// .build()).result())
/// .certificate(StdFunctions.file(FileArgs.builder()
/// .input("path/to/certificate.crt")
/// .build()).result())
/// .build());
///
/// var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
/// .region("us-central1")
/// .name("http-health-check")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .region("us-central1")
/// .name("backend-service")
/// .portName("http")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .healthChecks(defaultRegionHealthCheck.id())
/// .build());
///
/// var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
/// .region("us-central1")
/// .name("url-map")
/// .description("a description")
/// .defaultService(defaultRegionBackendService.id())
/// .hostRules(RegionUrlMapHostRuleArgs.builder()
/// .hosts("mysite.com")
/// .pathMatcher("allpaths")
/// .build())
/// .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
/// .name("allpaths")
/// .defaultService(defaultRegionBackendService.id())
/// .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
/// .paths("/*")
/// .service(defaultRegionBackendService.id())
/// .build())
/// .build())
/// .build());
///
/// var default_ = new RegionTargetHttpsProxy("default", RegionTargetHttpsProxyArgs.builder()
/// .region("us-central1")
/// .name("test-mtls-proxy")
/// .urlMap(defaultRegionUrlMap.id())
/// .sslCertificates(defaultRegionSslCertificate.id())
/// .serverTlsPolicy(defaultServerTlsPolicy.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:RegionTargetHttpsProxy
/// properties:
/// region: us-central1
/// name: test-mtls-proxy
/// urlMap: ${defaultRegionUrlMap.id}
/// sslCertificates:
/// - ${defaultRegionSslCertificate.id}
/// serverTlsPolicy: ${defaultServerTlsPolicy.id}
/// defaultTrustConfig:
/// type: gcp:certificatemanager:TrustConfig
/// name: default
/// properties:
/// location: us-central1
/// name: my-trust-config
/// description: sample description for trust config
/// trustStores:
/// - trustAnchors:
/// - pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/ca_cert.pem
/// return: result
/// intermediateCas:
/// - pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/ca_cert.pem
/// return: result
/// labels:
/// foo: bar
/// defaultServerTlsPolicy:
/// type: gcp:networksecurity:ServerTlsPolicy
/// name: default
/// properties:
/// location: us-central1
/// name: my-tls-policy
/// description: my description
/// allowOpen: 'false'
/// mtlsPolicy:
/// clientValidationMode: REJECT_INVALID
/// clientValidationTrustConfig: projects/${project.number}/locations/us-central1/trustConfigs/${defaultTrustConfig.name}
/// defaultRegionSslCertificate:
/// type: gcp:compute:RegionSslCertificate
/// name: default
/// properties:
/// region: us-central1
/// name: my-certificate
/// privateKey:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/private.key
/// return: result
/// certificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/certificate.crt
/// return: result
/// defaultRegionUrlMap:
/// type: gcp:compute:RegionUrlMap
/// name: default
/// properties:
/// region: us-central1
/// name: url-map
/// description: a description
/// defaultService: ${defaultRegionBackendService.id}
/// hostRules:
/// - hosts:
/// - mysite.com
/// pathMatcher: allpaths
/// pathMatchers:
/// - name: allpaths
/// defaultService: ${defaultRegionBackendService.id}
/// pathRules:
/// - paths:
/// - /*
/// service: ${defaultRegionBackendService.id}
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// region: us-central1
/// name: backend-service
/// portName: http
/// protocol: HTTP
/// timeoutSec: 10
/// loadBalancingScheme: INTERNAL_MANAGED
/// healthChecks: ${defaultRegionHealthCheck.id}
/// defaultRegionHealthCheck:
/// type: gcp:compute:RegionHealthCheck
/// name: default
/// properties:
/// region: us-central1
/// name: http-health-check
/// checkIntervalSec: 1
/// timeoutSec: 1
/// httpHealthCheck:
/// port: 80
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Region Target Https Proxy Certificate Manager Certificate
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultCertificate = new gcp.certificatemanager.Certificate("default", {
/// name: "my-certificate",
/// location: "us-central1",
/// selfManaged: {
/// pemCertificate: std.file({
/// input: "test-fixtures/cert.pem",
/// }).then(invoke => invoke.result),
/// pemPrivateKey: std.file({
/// input: "test-fixtures/private-key.pem",
/// }).then(invoke => invoke.result),
/// },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// name: "backend-service",
/// region: "us-central1",
/// protocol: "HTTPS",
/// timeoutSec: 30,
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
/// name: "url-map",
/// defaultService: defaultRegionBackendService.id,
/// region: "us-central1",
/// });
/// const _default = new gcp.compute.RegionTargetHttpsProxy("default", {
/// name: "target-http-proxy",
/// urlMap: defaultRegionUrlMap.id,
/// certificateManagerCertificates: [pulumi.interpolate`//certificatemanager.googleapis.com/${defaultCertificate.id}`],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_certificate = gcp.certificatemanager.Certificate("default",
/// name="my-certificate",
/// location="us-central1",
/// self_managed={
/// "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
/// "pem_private_key": std.file(input="test-fixtures/private-key.pem").result,
/// })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// name="backend-service",
/// region="us-central1",
/// protocol="HTTPS",
/// timeout_sec=30,
/// load_balancing_scheme="INTERNAL_MANAGED")
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
/// name="url-map",
/// default_service=default_region_backend_service.id,
/// region="us-central1")
/// default = gcp.compute.RegionTargetHttpsProxy("default",
/// name="target-http-proxy",
/// url_map=default_region_url_map.id,
/// certificate_manager_certificates=[default_certificate.id.apply(lambda id: f"//certificatemanager.googleapis.com/{id}")])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultCertificate = new Gcp.CertificateManager.Certificate("default", new()
/// {
/// Name = "my-certificate",
/// Location = "us-central1",
/// SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/cert.pem",
/// }).Apply(invoke => invoke.Result),
/// PemPrivateKey = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/private-key.pem",
/// }).Apply(invoke => invoke.Result),
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Name = "backend-service",
/// Region = "us-central1",
/// Protocol = "HTTPS",
/// TimeoutSec = 30,
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// });
///
/// var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
/// {
/// Name = "url-map",
/// DefaultService = defaultRegionBackendService.Id,
/// Region = "us-central1",
/// });
///
/// var @default = new Gcp.Compute.RegionTargetHttpsProxy("default", new()
/// {
/// Name = "target-http-proxy",
/// UrlMap = defaultRegionUrlMap.Id,
/// CertificateManagerCertificates = new[]
/// {
/// defaultCertificate.Id.Apply(id => $"//certificatemanager.googleapis.com/{id}"),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile1, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/private-key.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultCertificate, err := certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// Name:     pulumi.String("my-certificate"),
/// Location: pulumi.String("us-central1"),
/// SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// PemCertificate: pulumi.String(invokeFile.Result),
/// PemPrivateKey:  pulumi.String(invokeFile1.Result),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Name:                pulumi.String("backend-service"),
/// Region:              pulumi.String("us-central1"),
/// Protocol:            pulumi.String("HTTPS"),
/// TimeoutSec:          pulumi.Int(30),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// Name:           pulumi.String("url-map"),
/// DefaultService: defaultRegionBackendService.ID(),
/// Region:         pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionTargetHttpsProxy(ctx, "default", &compute.RegionTargetHttpsProxyArgs{
/// Name:   pulumi.String("target-http-proxy"),
/// UrlMap: defaultRegionUrlMap.ID(),
/// CertificateManagerCertificates: pulumi.StringArray{
/// defaultCertificate.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//certificatemanager.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpsProxyArgs;
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
/// var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
/// .name("my-certificate")
/// .location("us-central1")
/// .selfManaged(CertificateSelfManagedArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/cert.pem")
/// .build()).result())
/// .pemPrivateKey(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/private-key.pem")
/// .build()).result())
/// .build())
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .name("backend-service")
/// .region("us-central1")
/// .protocol("HTTPS")
/// .timeoutSec(30)
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .build());
///
/// var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
/// .name("url-map")
/// .defaultService(defaultRegionBackendService.id())
/// .region("us-central1")
/// .build());
///
/// var default_ = new RegionTargetHttpsProxy("default", RegionTargetHttpsProxyArgs.builder()
/// .name("target-http-proxy")
/// .urlMap(defaultRegionUrlMap.id())
/// .certificateManagerCertificates(defaultCertificate.id().applyValue(_id -> String.format("//certificatemanager.googleapis.com/%s", _id)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:RegionTargetHttpsProxy
/// properties:
/// name: target-http-proxy
/// urlMap: ${defaultRegionUrlMap.id}
/// certificateManagerCertificates: # [google_certificate_manager_certificate.default.id] is also acceptable
/// - //certificatemanager.googleapis.com/${defaultCertificate.id}
/// defaultCertificate:
/// type: gcp:certificatemanager:Certificate
/// name: default
/// properties:
/// name: my-certificate
/// location: us-central1
/// selfManaged:
/// pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/cert.pem
/// return: result
/// pemPrivateKey:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/private-key.pem
/// return: result
/// defaultRegionUrlMap:
/// type: gcp:compute:RegionUrlMap
/// name: default
/// properties:
/// name: url-map
/// defaultService: ${defaultRegionBackendService.id}
/// region: us-central1
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// name: backend-service
/// region: us-central1
/// protocol: HTTPS
/// timeoutSec: 30
/// loadBalancingScheme: INTERNAL_MANAGED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RegionTargetHttpsProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetHttpsProxies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionTargetHttpsProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default projects/{{project}}/regions/{{region}}/targetHttpsProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default {{name}}
/// ```
class RegionTargetHttpsProxy extends CustomResource {
  /// URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// sslCertificates and certificateManagerCertificates can't be defined together.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}` or just the<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>`projects/{project}/locations/{location}/certificates/{resourceName}`
  late final Output<List<String>?> certificateManagerCertificates;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regioanl
  /// HTTP(S) load balancer, the minimum allowed value is 5 seconds and the
  /// maximum allowed value is 600 seconds.
  late final Output<int?> httpKeepAliveTimeoutSec;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The unique identifier for the resource.
  late final Output<int> proxyId;

  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// A URL referring to a networksecurity.ServerTlsPolicy
  /// resource that describes how the proxy should authenticate inbound
  /// traffic. serverTlsPolicy only applies to a global TargetHttpsProxy
  /// attached to globalForwardingRules with the loadBalancingScheme
  /// set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
  /// For details which ServerTlsPolicy resources are accepted with
  /// INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
  /// loadBalancingScheme consult ServerTlsPolicy documentation.
  /// If left blank, communications are not encrypted.
  /// If you remove this field from your configuration at the same time as
  /// deleting or recreating a referenced ServerTlsPolicy resource, you will
  /// receive a resourceInUseByAnotherResource error. Use lifecycle.create_before_destroy
  /// within the ServerTlsPolicy resource to avoid this.
  late final Output<String?> serverTlsPolicy;

  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates.
  /// sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  late final Output<List<String>?> sslCertificates;

  /// A reference to the Region SslPolicy resource that will be associated with
  /// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
  /// resource will not have any SSL policy configured.
  late final Output<String?> sslPolicy;

  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the RegionBackendService.
  late final Output<String> urlMap;

  RegionTargetHttpsProxy(
    String name, {
    RegionTargetHttpsProxyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateManagerCertificates = Output.createUnknown<List<String>?>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.httpKeepAliveTimeoutSec = Output.createUnknown<int?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.proxyId = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.serverTlsPolicy = Output.createUnknown<String?>();
    this.sslCertificates = Output.createUnknown<List<String>?>();
    this.sslPolicy = Output.createUnknown<String?>();
    this.urlMap = Output.createUnknown<String>();
  }
}
