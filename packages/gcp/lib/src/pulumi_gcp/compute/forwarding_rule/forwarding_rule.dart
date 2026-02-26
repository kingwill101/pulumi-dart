import 'package:pulumi/pulumi.dart';
import '../forwarding_rule_service_directory_registrations/forwarding_rule_service_directory_registrations.dart';
import 'forwarding_rule_args.dart';

/// A ForwardingRule resource. A ForwardingRule resource specifies which pool
/// of target virtual machines to forward a packet to if it matches the given
/// [IPAddress, IPProtocol, portRange] tuple.
///
///
/// To get more information about ForwardingRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/forwardingRules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/network/forwarding-rules)
///
/// ## Example Usage
///
/// ### Forwarding Rule Externallb
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hc = new gcp.compute.RegionHealthCheck("hc", {
/// name: "check-website-backend",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// region: "us-central1",
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const backend = new gcp.compute.RegionBackendService("backend", {
/// name: "website-backend",
/// region: "us-central1",
/// loadBalancingScheme: "EXTERNAL",
/// healthChecks: hc.id,
/// });
/// // Forwarding rule for External Network Load Balancing using Backend Services
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "website-forwarding-rule",
/// region: "us-central1",
/// portRange: "80",
/// backendService: backend.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hc = gcp.compute.RegionHealthCheck("hc",
/// name="check-website-backend",
/// check_interval_sec=1,
/// timeout_sec=1,
/// region="us-central1",
/// tcp_health_check={
/// "port": 80,
/// })
/// backend = gcp.compute.RegionBackendService("backend",
/// name="website-backend",
/// region="us-central1",
/// load_balancing_scheme="EXTERNAL",
/// health_checks=hc.id)
/// # Forwarding rule for External Network Load Balancing using Backend Services
/// default = gcp.compute.ForwardingRule("default",
/// name="website-forwarding-rule",
/// region="us-central1",
/// port_range="80",
/// backend_service=backend.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hc = new Gcp.Compute.RegionHealthCheck("hc", new()
/// {
/// Name = "check-website-backend",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// Region = "us-central1",
/// TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var backend = new Gcp.Compute.RegionBackendService("backend", new()
/// {
/// Name = "website-backend",
/// Region = "us-central1",
/// LoadBalancingScheme = "EXTERNAL",
/// HealthChecks = hc.Id,
/// });
///
/// // Forwarding rule for External Network Load Balancing using Backend Services
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "website-forwarding-rule",
/// Region = "us-central1",
/// PortRange = "80",
/// BackendService = backend.Id,
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
/// hc, err := compute.NewRegionHealthCheck(ctx, "hc", &compute.RegionHealthCheckArgs{
/// Name:             pulumi.String("check-website-backend"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// Region:           pulumi.String("us-central1"),
/// TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// Name:                pulumi.String("website-backend"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// HealthChecks:        hc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Forwarding rule for External Network Load Balancing using Backend Services
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:           pulumi.String("website-forwarding-rule"),
/// Region:         pulumi.String("us-central1"),
/// PortRange:      pulumi.String("80"),
/// BackendService: backend.ID(),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
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
/// var hc = new RegionHealthCheck("hc", RegionHealthCheckArgs.builder()
/// .name("check-website-backend")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .region("us-central1")
/// .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
/// .name("website-backend")
/// .region("us-central1")
/// .loadBalancingScheme("EXTERNAL")
/// .healthChecks(hc.id())
/// .build());
///
/// // Forwarding rule for External Network Load Balancing using Backend Services
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("website-forwarding-rule")
/// .region("us-central1")
/// .portRange("80")
/// .backendService(backend.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Forwarding rule for External Network Load Balancing using Backend Services
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: website-forwarding-rule
/// region: us-central1
/// portRange: 80
/// backendService: ${backend.id}
/// backend:
/// type: gcp:compute:RegionBackendService
/// properties:
/// name: website-backend
/// region: us-central1
/// loadBalancingScheme: EXTERNAL
/// healthChecks: ${hc.id}
/// hc:
/// type: gcp:compute:RegionHealthCheck
/// properties:
/// name: check-website-backend
/// checkIntervalSec: 1
/// timeoutSec: 1
/// region: us-central1
/// tcpHealthCheck:
/// port: '80'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Global Internallb
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hc = new gcp.compute.HealthCheck("hc", {
/// name: "check-website-backend",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const backend = new gcp.compute.RegionBackendService("backend", {
/// name: "website-backend",
/// region: "us-central1",
/// healthChecks: hc.id,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
/// name: "website-net",
/// autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "website-net",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: defaultNetwork.id,
/// });
/// // Forwarding rule for Internal Load Balancing
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "website-forwarding-rule",
/// region: "us-central1",
/// loadBalancingScheme: "INTERNAL",
/// backendService: backend.id,
/// allPorts: true,
/// allowGlobalAccess: true,
/// network: defaultNetwork.name,
/// subnetwork: defaultSubnetwork.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hc = gcp.compute.HealthCheck("hc",
/// name="check-website-backend",
/// check_interval_sec=1,
/// timeout_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// backend = gcp.compute.RegionBackendService("backend",
/// name="website-backend",
/// region="us-central1",
/// health_checks=hc.id)
/// default_network = gcp.compute.Network("default",
/// name="website-net",
/// auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="website-net",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=default_network.id)
/// # Forwarding rule for Internal Load Balancing
/// default = gcp.compute.ForwardingRule("default",
/// name="website-forwarding-rule",
/// region="us-central1",
/// load_balancing_scheme="INTERNAL",
/// backend_service=backend.id,
/// all_ports=True,
/// allow_global_access=True,
/// network=default_network.name,
/// subnetwork=default_subnetwork.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hc = new Gcp.Compute.HealthCheck("hc", new()
/// {
/// Name = "check-website-backend",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var backend = new Gcp.Compute.RegionBackendService("backend", new()
/// {
/// Name = "website-backend",
/// Region = "us-central1",
/// HealthChecks = hc.Id,
/// });
///
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "website-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "website-net",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = defaultNetwork.Id,
/// });
///
/// // Forwarding rule for Internal Load Balancing
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "website-forwarding-rule",
/// Region = "us-central1",
/// LoadBalancingScheme = "INTERNAL",
/// BackendService = backend.Id,
/// AllPorts = true,
/// AllowGlobalAccess = true,
/// Network = defaultNetwork.Name,
/// Subnetwork = defaultSubnetwork.Name,
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
/// hc, err := compute.NewHealthCheck(ctx, "hc", &compute.HealthCheckArgs{
/// Name:             pulumi.String("check-website-backend"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// Name:         pulumi.String("website-backend"),
/// Region:       pulumi.String("us-central1"),
/// HealthChecks: hc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("website-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("website-net"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Forwarding rule for Internal Load Balancing
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("website-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("INTERNAL"),
/// BackendService:      backend.ID(),
/// AllPorts:            pulumi.Bool(true),
/// AllowGlobalAccess:   pulumi.Bool(true),
/// Network:             defaultNetwork.Name,
/// Subnetwork:          defaultSubnetwork.Name,
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
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
/// var hc = new HealthCheck("hc", HealthCheckArgs.builder()
/// .name("check-website-backend")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
/// .name("website-backend")
/// .region("us-central1")
/// .healthChecks(hc.id())
/// .build());
///
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("website-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("website-net")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(defaultNetwork.id())
/// .build());
///
/// // Forwarding rule for Internal Load Balancing
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("website-forwarding-rule")
/// .region("us-central1")
/// .loadBalancingScheme("INTERNAL")
/// .backendService(backend.id())
/// .allPorts(true)
/// .allowGlobalAccess(true)
/// .network(defaultNetwork.name())
/// .subnetwork(defaultSubnetwork.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Forwarding rule for Internal Load Balancing
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: website-forwarding-rule
/// region: us-central1
/// loadBalancingScheme: INTERNAL
/// backendService: ${backend.id}
/// allPorts: true
/// allowGlobalAccess: true
/// network: ${defaultNetwork.name}
/// subnetwork: ${defaultSubnetwork.name}
/// backend:
/// type: gcp:compute:RegionBackendService
/// properties:
/// name: website-backend
/// region: us-central1
/// healthChecks: ${hc.id}
/// hc:
/// type: gcp:compute:HealthCheck
/// properties:
/// name: check-website-backend
/// checkIntervalSec: 1
/// timeoutSec: 1
/// tcpHealthCheck:
/// port: '80'
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: website-net
/// autoCreateSubnetworks: false
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: website-net
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${defaultNetwork.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultTargetPool = new gcp.compute.TargetPool("default", {name: "website-target-pool"});
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "website-forwarding-rule",
/// target: defaultTargetPool.id,
/// portRange: "80",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_target_pool = gcp.compute.TargetPool("default", name="website-target-pool")
/// default = gcp.compute.ForwardingRule("default",
/// name="website-forwarding-rule",
/// target=default_target_pool.id,
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
/// var defaultTargetPool = new Gcp.Compute.TargetPool("default", new()
/// {
/// Name = "website-target-pool",
/// });
///
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "website-forwarding-rule",
/// Target = defaultTargetPool.Id,
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
/// defaultTargetPool, err := compute.NewTargetPool(ctx, "default", &compute.TargetPoolArgs{
/// Name: pulumi.String("website-target-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:      pulumi.String("website-forwarding-rule"),
/// Target:    defaultTargetPool.ID(),
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
/// import com.pulumi.gcp.compute.TargetPool;
/// import com.pulumi.gcp.compute.TargetPoolArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
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
/// var defaultTargetPool = new TargetPool("defaultTargetPool", TargetPoolArgs.builder()
/// .name("website-target-pool")
/// .build());
///
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("website-forwarding-rule")
/// .target(defaultTargetPool.id())
/// .portRange("80")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: website-forwarding-rule
/// target: ${defaultTargetPool.id}
/// portRange: '80'
/// defaultTargetPool:
/// type: gcp:compute:TargetPool
/// name: default
/// properties:
/// name: website-target-pool
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule L3 Default
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.RegionHealthCheck("health_check", {
/// name: "health-check",
/// region: "us-central1",
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const service = new gcp.compute.RegionBackendService("service", {
/// region: "us-central1",
/// name: "service",
/// healthChecks: healthCheck.id,
/// protocol: "UNSPECIFIED",
/// loadBalancingScheme: "EXTERNAL",
/// });
/// const fwdRule = new gcp.compute.ForwardingRule("fwd_rule", {
/// name: "l3-forwarding-rule",
/// backendService: service.id,
/// ipProtocol: "L3_DEFAULT",
/// allPorts: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.RegionHealthCheck("health_check",
/// name="health-check",
/// region="us-central1",
/// tcp_health_check={
/// "port": 80,
/// })
/// service = gcp.compute.RegionBackendService("service",
/// region="us-central1",
/// name="service",
/// health_checks=health_check.id,
/// protocol="UNSPECIFIED",
/// load_balancing_scheme="EXTERNAL")
/// fwd_rule = gcp.compute.ForwardingRule("fwd_rule",
/// name="l3-forwarding-rule",
/// backend_service=service.id,
/// ip_protocol="L3_DEFAULT",
/// all_ports=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var healthCheck = new Gcp.Compute.RegionHealthCheck("health_check", new()
/// {
/// Name = "health-check",
/// Region = "us-central1",
/// TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var service = new Gcp.Compute.RegionBackendService("service", new()
/// {
/// Region = "us-central1",
/// Name = "service",
/// HealthChecks = healthCheck.Id,
/// Protocol = "UNSPECIFIED",
/// LoadBalancingScheme = "EXTERNAL",
/// });
///
/// var fwdRule = new Gcp.Compute.ForwardingRule("fwd_rule", new()
/// {
/// Name = "l3-forwarding-rule",
/// BackendService = service.Id,
/// IpProtocol = "L3_DEFAULT",
/// AllPorts = true,
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
/// healthCheck, err := compute.NewRegionHealthCheck(ctx, "health_check", &compute.RegionHealthCheckArgs{
/// Name:   pulumi.String("health-check"),
/// Region: pulumi.String("us-central1"),
/// TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// service, err := compute.NewRegionBackendService(ctx, "service", &compute.RegionBackendServiceArgs{
/// Region:              pulumi.String("us-central1"),
/// Name:                pulumi.String("service"),
/// HealthChecks:        healthCheck.ID(),
/// Protocol:            pulumi.String("UNSPECIFIED"),
/// LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewForwardingRule(ctx, "fwd_rule", &compute.ForwardingRuleArgs{
/// Name:           pulumi.String("l3-forwarding-rule"),
/// BackendService: service.ID(),
/// IpProtocol:     pulumi.String("L3_DEFAULT"),
/// AllPorts:       pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
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
/// var healthCheck = new RegionHealthCheck("healthCheck", RegionHealthCheckArgs.builder()
/// .name("health-check")
/// .region("us-central1")
/// .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var service = new RegionBackendService("service", RegionBackendServiceArgs.builder()
/// .region("us-central1")
/// .name("service")
/// .healthChecks(healthCheck.id())
/// .protocol("UNSPECIFIED")
/// .loadBalancingScheme("EXTERNAL")
/// .build());
///
/// var fwdRule = new ForwardingRule("fwdRule", ForwardingRuleArgs.builder()
/// .name("l3-forwarding-rule")
/// .backendService(service.id())
/// .ipProtocol("L3_DEFAULT")
/// .allPorts(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// fwdRule:
/// type: gcp:compute:ForwardingRule
/// name: fwd_rule
/// properties:
/// name: l3-forwarding-rule
/// backendService: ${service.id}
/// ipProtocol: L3_DEFAULT
/// allPorts: true
/// service:
/// type: gcp:compute:RegionBackendService
/// properties:
/// region: us-central1
/// name: service
/// healthChecks: ${healthCheck.id}
/// protocol: UNSPECIFIED
/// loadBalancingScheme: EXTERNAL
/// healthCheck:
/// type: gcp:compute:RegionHealthCheck
/// name: health_check
/// properties:
/// name: health-check
/// region: us-central1
/// tcpHealthCheck:
/// port: 80
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Internallb
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hc = new gcp.compute.HealthCheck("hc", {
/// name: "check-website-backend",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const backend = new gcp.compute.RegionBackendService("backend", {
/// name: "website-backend",
/// region: "us-central1",
/// healthChecks: hc.id,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
/// name: "website-net",
/// autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "website-net",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: defaultNetwork.id,
/// });
/// // Forwarding rule for Internal Load Balancing
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "website-forwarding-rule",
/// region: "us-central1",
/// loadBalancingScheme: "INTERNAL",
/// backendService: backend.id,
/// allPorts: true,
/// network: defaultNetwork.name,
/// subnetwork: defaultSubnetwork.name,
/// ipVersion: "IPV4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hc = gcp.compute.HealthCheck("hc",
/// name="check-website-backend",
/// check_interval_sec=1,
/// timeout_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// backend = gcp.compute.RegionBackendService("backend",
/// name="website-backend",
/// region="us-central1",
/// health_checks=hc.id)
/// default_network = gcp.compute.Network("default",
/// name="website-net",
/// auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="website-net",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=default_network.id)
/// # Forwarding rule for Internal Load Balancing
/// default = gcp.compute.ForwardingRule("default",
/// name="website-forwarding-rule",
/// region="us-central1",
/// load_balancing_scheme="INTERNAL",
/// backend_service=backend.id,
/// all_ports=True,
/// network=default_network.name,
/// subnetwork=default_subnetwork.name,
/// ip_version="IPV4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hc = new Gcp.Compute.HealthCheck("hc", new()
/// {
/// Name = "check-website-backend",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var backend = new Gcp.Compute.RegionBackendService("backend", new()
/// {
/// Name = "website-backend",
/// Region = "us-central1",
/// HealthChecks = hc.Id,
/// });
///
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "website-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "website-net",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = defaultNetwork.Id,
/// });
///
/// // Forwarding rule for Internal Load Balancing
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "website-forwarding-rule",
/// Region = "us-central1",
/// LoadBalancingScheme = "INTERNAL",
/// BackendService = backend.Id,
/// AllPorts = true,
/// Network = defaultNetwork.Name,
/// Subnetwork = defaultSubnetwork.Name,
/// IpVersion = "IPV4",
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
/// hc, err := compute.NewHealthCheck(ctx, "hc", &compute.HealthCheckArgs{
/// Name:             pulumi.String("check-website-backend"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// Name:         pulumi.String("website-backend"),
/// Region:       pulumi.String("us-central1"),
/// HealthChecks: hc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("website-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("website-net"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Forwarding rule for Internal Load Balancing
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("website-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("INTERNAL"),
/// BackendService:      backend.ID(),
/// AllPorts:            pulumi.Bool(true),
/// Network:             defaultNetwork.Name,
/// Subnetwork:          defaultSubnetwork.Name,
/// IpVersion:           pulumi.String("IPV4"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
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
/// var hc = new HealthCheck("hc", HealthCheckArgs.builder()
/// .name("check-website-backend")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
/// .name("website-backend")
/// .region("us-central1")
/// .healthChecks(hc.id())
/// .build());
///
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("website-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("website-net")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(defaultNetwork.id())
/// .build());
///
/// // Forwarding rule for Internal Load Balancing
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("website-forwarding-rule")
/// .region("us-central1")
/// .loadBalancingScheme("INTERNAL")
/// .backendService(backend.id())
/// .allPorts(true)
/// .network(defaultNetwork.name())
/// .subnetwork(defaultSubnetwork.name())
/// .ipVersion("IPV4")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Forwarding rule for Internal Load Balancing
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: website-forwarding-rule
/// region: us-central1
/// loadBalancingScheme: INTERNAL
/// backendService: ${backend.id}
/// allPorts: true
/// network: ${defaultNetwork.name}
/// subnetwork: ${defaultSubnetwork.name}
/// ipVersion: IPV4
/// backend:
/// type: gcp:compute:RegionBackendService
/// properties:
/// name: website-backend
/// region: us-central1
/// healthChecks: ${hc.id}
/// hc:
/// type: gcp:compute:HealthCheck
/// properties:
/// name: check-website-backend
/// checkIntervalSec: 1
/// timeoutSec: 1
/// tcpHealthCheck:
/// port: '80'
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: website-net
/// autoCreateSubnetworks: false
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: website-net
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${defaultNetwork.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Http Lb
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
/// const defaultNetwork = new gcp.compute.Network("default", {
/// name: "website-net",
/// autoCreateSubnetworks: false,
/// routingMode: "REGIONAL",
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "website-net-default",
/// ipCidrRange: "10.1.2.0/24",
/// region: "us-central1",
/// network: defaultNetwork.id,
/// });
/// const instanceTemplate = new gcp.compute.InstanceTemplate("instance_template", {
/// name: "template-website-backend",
/// machineType: "e2-medium",
/// networkInterfaces: [{
/// network: defaultNetwork.id,
/// subnetwork: defaultSubnetwork.id,
/// }],
/// disks: [{
/// sourceImage: debianImage.then(debianImage => debianImage.selfLink),
/// autoDelete: true,
/// boot: true,
/// }],
/// tags: [
/// "allow-ssh",
/// "load-balanced-backend",
/// ],
/// });
/// const rigm = new gcp.compute.RegionInstanceGroupManager("rigm", {
/// region: "us-central1",
/// name: "website-rigm",
/// versions: [{
/// instanceTemplate: instanceTemplate.id,
/// name: "primary",
/// }],
/// baseInstanceName: "internal-glb",
/// targetSize: 1,
/// });
/// const fw1 = new gcp.compute.Firewall("fw1", {
/// name: "website-fw-1",
/// network: defaultNetwork.id,
/// sourceRanges: ["10.1.2.0/24"],
/// allows: [
/// {
/// protocol: "tcp",
/// },
/// {
/// protocol: "udp",
/// },
/// {
/// protocol: "icmp",
/// },
/// ],
/// direction: "INGRESS",
/// });
/// const fw2 = new gcp.compute.Firewall("fw2", {
/// name: "website-fw-2",
/// network: defaultNetwork.id,
/// sourceRanges: ["0.0.0.0/0"],
/// allows: [{
/// protocol: "tcp",
/// ports: ["22"],
/// }],
/// targetTags: ["allow-ssh"],
/// direction: "INGRESS",
/// }, {
/// dependsOn: [fw1],
/// });
/// const fw3 = new gcp.compute.Firewall("fw3", {
/// name: "website-fw-3",
/// network: defaultNetwork.id,
/// sourceRanges: [
/// "130.211.0.0/22",
/// "35.191.0.0/16",
/// ],
/// allows: [{
/// protocol: "tcp",
/// }],
/// targetTags: ["load-balanced-backend"],
/// direction: "INGRESS",
/// }, {
/// dependsOn: [fw2],
/// });
/// const fw4 = new gcp.compute.Firewall("fw4", {
/// name: "website-fw-4",
/// network: defaultNetwork.id,
/// sourceRanges: ["10.129.0.0/26"],
/// targetTags: ["load-balanced-backend"],
/// allows: [
/// {
/// protocol: "tcp",
/// ports: ["80"],
/// },
/// {
/// protocol: "tcp",
/// ports: ["443"],
/// },
/// {
/// protocol: "tcp",
/// ports: ["8000"],
/// },
/// ],
/// direction: "INGRESS",
/// }, {
/// dependsOn: [fw3],
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
/// region: "us-central1",
/// name: "website-hc",
/// httpHealthCheck: {
/// portSpecification: "USE_SERVING_PORT",
/// },
/// }, {
/// dependsOn: [fw4],
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// backends: [{
/// group: rigm.instanceGroup,
/// balancingMode: "UTILIZATION",
/// capacityScaler: 1,
/// }],
/// region: "us-central1",
/// name: "website-backend",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// healthChecks: defaultRegionHealthCheck.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
/// region: "us-central1",
/// name: "website-map",
/// defaultService: defaultRegionBackendService.id,
/// });
/// const defaultRegionTargetHttpProxy = new gcp.compute.RegionTargetHttpProxy("default", {
/// region: "us-central1",
/// name: "website-proxy",
/// urlMap: defaultRegionUrlMap.id,
/// });
/// const proxy = new gcp.compute.Subnetwork("proxy", {
/// name: "website-net-proxy",
/// ipCidrRange: "10.129.0.0/26",
/// region: "us-central1",
/// network: defaultNetwork.id,
/// purpose: "REGIONAL_MANAGED_PROXY",
/// role: "ACTIVE",
/// });
/// // Forwarding rule for Internal Load Balancing
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "website-forwarding-rule",
/// region: "us-central1",
/// ipProtocol: "TCP",
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// portRange: "80",
/// target: defaultRegionTargetHttpProxy.id,
/// network: defaultNetwork.id,
/// subnetwork: defaultSubnetwork.id,
/// networkTier: "PREMIUM",
/// }, {
/// dependsOn: [proxy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian_image = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// default_network = gcp.compute.Network("default",
/// name="website-net",
/// auto_create_subnetworks=False,
/// routing_mode="REGIONAL")
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="website-net-default",
/// ip_cidr_range="10.1.2.0/24",
/// region="us-central1",
/// network=default_network.id)
/// instance_template = gcp.compute.InstanceTemplate("instance_template",
/// name="template-website-backend",
/// machine_type="e2-medium",
/// network_interfaces=[{
/// "network": default_network.id,
/// "subnetwork": default_subnetwork.id,
/// }],
/// disks=[{
/// "source_image": debian_image.self_link,
/// "auto_delete": True,
/// "boot": True,
/// }],
/// tags=[
/// "allow-ssh",
/// "load-balanced-backend",
/// ])
/// rigm = gcp.compute.RegionInstanceGroupManager("rigm",
/// region="us-central1",
/// name="website-rigm",
/// versions=[{
/// "instance_template": instance_template.id,
/// "name": "primary",
/// }],
/// base_instance_name="internal-glb",
/// target_size=1)
/// fw1 = gcp.compute.Firewall("fw1",
/// name="website-fw-1",
/// network=default_network.id,
/// source_ranges=["10.1.2.0/24"],
/// allows=[
/// {
/// "protocol": "tcp",
/// },
/// {
/// "protocol": "udp",
/// },
/// {
/// "protocol": "icmp",
/// },
/// ],
/// direction="INGRESS")
/// fw2 = gcp.compute.Firewall("fw2",
/// name="website-fw-2",
/// network=default_network.id,
/// source_ranges=["0.0.0.0/0"],
/// allows=[{
/// "protocol": "tcp",
/// "ports": ["22"],
/// }],
/// target_tags=["allow-ssh"],
/// direction="INGRESS",
/// opts = pulumi.ResourceOptions(depends_on=[fw1]))
/// fw3 = gcp.compute.Firewall("fw3",
/// name="website-fw-3",
/// network=default_network.id,
/// source_ranges=[
/// "130.211.0.0/22",
/// "35.191.0.0/16",
/// ],
/// allows=[{
/// "protocol": "tcp",
/// }],
/// target_tags=["load-balanced-backend"],
/// direction="INGRESS",
/// opts = pulumi.ResourceOptions(depends_on=[fw2]))
/// fw4 = gcp.compute.Firewall("fw4",
/// name="website-fw-4",
/// network=default_network.id,
/// source_ranges=["10.129.0.0/26"],
/// target_tags=["load-balanced-backend"],
/// allows=[
/// {
/// "protocol": "tcp",
/// "ports": ["80"],
/// },
/// {
/// "protocol": "tcp",
/// "ports": ["443"],
/// },
/// {
/// "protocol": "tcp",
/// "ports": ["8000"],
/// },
/// ],
/// direction="INGRESS",
/// opts = pulumi.ResourceOptions(depends_on=[fw3]))
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
/// region="us-central1",
/// name="website-hc",
/// http_health_check={
/// "port_specification": "USE_SERVING_PORT",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[fw4]))
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// load_balancing_scheme="INTERNAL_MANAGED",
/// backends=[{
/// "group": rigm.instance_group,
/// "balancing_mode": "UTILIZATION",
/// "capacity_scaler": 1,
/// }],
/// region="us-central1",
/// name="website-backend",
/// protocol="HTTP",
/// timeout_sec=10,
/// health_checks=default_region_health_check.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
/// region="us-central1",
/// name="website-map",
/// default_service=default_region_backend_service.id)
/// default_region_target_http_proxy = gcp.compute.RegionTargetHttpProxy("default",
/// region="us-central1",
/// name="website-proxy",
/// url_map=default_region_url_map.id)
/// proxy = gcp.compute.Subnetwork("proxy",
/// name="website-net-proxy",
/// ip_cidr_range="10.129.0.0/26",
/// region="us-central1",
/// network=default_network.id,
/// purpose="REGIONAL_MANAGED_PROXY",
/// role="ACTIVE")
/// # Forwarding rule for Internal Load Balancing
/// default = gcp.compute.ForwardingRule("default",
/// name="website-forwarding-rule",
/// region="us-central1",
/// ip_protocol="TCP",
/// load_balancing_scheme="INTERNAL_MANAGED",
/// port_range="80",
/// target=default_region_target_http_proxy.id,
/// network=default_network.id,
/// subnetwork=default_subnetwork.id,
/// network_tier="PREMIUM",
/// opts = pulumi.ResourceOptions(depends_on=[proxy]))
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
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "website-net",
/// AutoCreateSubnetworks = false,
/// RoutingMode = "REGIONAL",
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "website-net-default",
/// IpCidrRange = "10.1.2.0/24",
/// Region = "us-central1",
/// Network = defaultNetwork.Id,
/// });
///
/// var instanceTemplate = new Gcp.Compute.InstanceTemplate("instance_template", new()
/// {
/// Name = "template-website-backend",
/// MachineType = "e2-medium",
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
/// {
/// Network = defaultNetwork.Id,
/// Subnetwork = defaultSubnetwork.Id,
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
/// Tags = new[]
/// {
/// "allow-ssh",
/// "load-balanced-backend",
/// },
/// });
///
/// var rigm = new Gcp.Compute.RegionInstanceGroupManager("rigm", new()
/// {
/// Region = "us-central1",
/// Name = "website-rigm",
/// Versions = new[]
/// {
/// new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
/// {
/// InstanceTemplate = instanceTemplate.Id,
/// Name = "primary",
/// },
/// },
/// BaseInstanceName = "internal-glb",
/// TargetSize = 1,
/// });
///
/// var fw1 = new Gcp.Compute.Firewall("fw1", new()
/// {
/// Name = "website-fw-1",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "10.1.2.0/24",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "udp",
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "icmp",
/// },
/// },
/// Direction = "INGRESS",
/// });
///
/// var fw2 = new Gcp.Compute.Firewall("fw2", new()
/// {
/// Name = "website-fw-2",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "0.0.0.0/0",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "22",
/// },
/// },
/// },
/// TargetTags = new[]
/// {
/// "allow-ssh",
/// },
/// Direction = "INGRESS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw1,
/// },
/// });
///
/// var fw3 = new Gcp.Compute.Firewall("fw3", new()
/// {
/// Name = "website-fw-3",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "130.211.0.0/22",
/// "35.191.0.0/16",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// },
/// },
/// TargetTags = new[]
/// {
/// "load-balanced-backend",
/// },
/// Direction = "INGRESS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw2,
/// },
/// });
///
/// var fw4 = new Gcp.Compute.Firewall("fw4", new()
/// {
/// Name = "website-fw-4",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "10.129.0.0/26",
/// },
/// TargetTags = new[]
/// {
/// "load-balanced-backend",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "80",
/// },
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "443",
/// },
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "8000",
/// },
/// },
/// },
/// Direction = "INGRESS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw3,
/// },
/// });
///
/// var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
/// {
/// Region = "us-central1",
/// Name = "website-hc",
/// HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
/// {
/// PortSpecification = "USE_SERVING_PORT",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw4,
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// Backends = new[]
/// {
/// new Gcp.Compute.Inputs.RegionBackendServiceBackendArgs
/// {
/// Group = rigm.InstanceGroup,
/// BalancingMode = "UTILIZATION",
/// CapacityScaler = 1,
/// },
/// },
/// Region = "us-central1",
/// Name = "website-backend",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// HealthChecks = defaultRegionHealthCheck.Id,
/// });
///
/// var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
/// {
/// Region = "us-central1",
/// Name = "website-map",
/// DefaultService = defaultRegionBackendService.Id,
/// });
///
/// var defaultRegionTargetHttpProxy = new Gcp.Compute.RegionTargetHttpProxy("default", new()
/// {
/// Region = "us-central1",
/// Name = "website-proxy",
/// UrlMap = defaultRegionUrlMap.Id,
/// });
///
/// var proxy = new Gcp.Compute.Subnetwork("proxy", new()
/// {
/// Name = "website-net-proxy",
/// IpCidrRange = "10.129.0.0/26",
/// Region = "us-central1",
/// Network = defaultNetwork.Id,
/// Purpose = "REGIONAL_MANAGED_PROXY",
/// Role = "ACTIVE",
/// });
///
/// // Forwarding rule for Internal Load Balancing
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "website-forwarding-rule",
/// Region = "us-central1",
/// IpProtocol = "TCP",
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// PortRange = "80",
/// Target = defaultRegionTargetHttpProxy.Id,
/// Network = defaultNetwork.Id,
/// Subnetwork = defaultSubnetwork.Id,
/// NetworkTier = "PREMIUM",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// proxy,
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
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("website-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// RoutingMode:           pulumi.String("REGIONAL"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("website-net-default"),
/// IpCidrRange: pulumi.String("10.1.2.0/24"),
/// Region:      pulumi.String("us-central1"),
/// Network:     defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// instanceTemplate, err := compute.NewInstanceTemplate(ctx, "instance_template", &compute.InstanceTemplateArgs{
/// Name:        pulumi.String("template-website-backend"),
/// MachineType: pulumi.String("e2-medium"),
/// NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// &compute.InstanceTemplateNetworkInterfaceArgs{
/// Network:    defaultNetwork.ID(),
/// Subnetwork: defaultSubnetwork.ID(),
/// },
/// },
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String(debianImage.SelfLink),
/// AutoDelete:  pulumi.Bool(true),
/// Boot:        pulumi.Bool(true),
/// },
/// },
/// Tags: pulumi.StringArray{
/// pulumi.String("allow-ssh"),
/// pulumi.String("load-balanced-backend"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// rigm, err := compute.NewRegionInstanceGroupManager(ctx, "rigm", &compute.RegionInstanceGroupManagerArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("website-rigm"),
/// Versions: compute.RegionInstanceGroupManagerVersionArray{
/// &compute.RegionInstanceGroupManagerVersionArgs{
/// InstanceTemplate: instanceTemplate.ID(),
/// Name:             pulumi.String("primary"),
/// },
/// },
/// BaseInstanceName: pulumi.String("internal-glb"),
/// TargetSize:       pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// fw1, err := compute.NewFirewall(ctx, "fw1", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-1"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("10.1.2.0/24"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("udp"),
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("icmp"),
/// },
/// },
/// Direction: pulumi.String("INGRESS"),
/// })
/// if err != nil {
/// return err
/// }
/// fw2, err := compute.NewFirewall(ctx, "fw2", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-2"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("22"),
/// },
/// },
/// },
/// TargetTags: pulumi.StringArray{
/// pulumi.String("allow-ssh"),
/// },
/// Direction: pulumi.String("INGRESS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw1,
/// }))
/// if err != nil {
/// return err
/// }
/// fw3, err := compute.NewFirewall(ctx, "fw3", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-3"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("130.211.0.0/22"),
/// pulumi.String("35.191.0.0/16"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// },
/// },
/// TargetTags: pulumi.StringArray{
/// pulumi.String("load-balanced-backend"),
/// },
/// Direction: pulumi.String("INGRESS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw2,
/// }))
/// if err != nil {
/// return err
/// }
/// fw4, err := compute.NewFirewall(ctx, "fw4", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-4"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("10.129.0.0/26"),
/// },
/// TargetTags: pulumi.StringArray{
/// pulumi.String("load-balanced-backend"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("80"),
/// },
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("443"),
/// },
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("8000"),
/// },
/// },
/// },
/// Direction: pulumi.String("INGRESS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw3,
/// }))
/// if err != nil {
/// return err
/// }
/// defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("website-hc"),
/// HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// PortSpecification: pulumi.String("USE_SERVING_PORT"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw4,
/// }))
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// Backends: compute.RegionBackendServiceBackendArray{
/// &compute.RegionBackendServiceBackendArgs{
/// Group:          rigm.InstanceGroup,
/// BalancingMode:  pulumi.String("UTILIZATION"),
/// CapacityScaler: pulumi.Float64(1),
/// },
/// },
/// Region:       pulumi.String("us-central1"),
/// Name:         pulumi.String("website-backend"),
/// Protocol:     pulumi.String("HTTP"),
/// TimeoutSec:   pulumi.Int(10),
/// HealthChecks: defaultRegionHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// Region:         pulumi.String("us-central1"),
/// Name:           pulumi.String("website-map"),
/// DefaultService: defaultRegionBackendService.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionTargetHttpProxy, err := compute.NewRegionTargetHttpProxy(ctx, "default", &compute.RegionTargetHttpProxyArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("website-proxy"),
/// UrlMap: defaultRegionUrlMap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// proxy, err := compute.NewSubnetwork(ctx, "proxy", &compute.SubnetworkArgs{
/// Name:        pulumi.String("website-net-proxy"),
/// IpCidrRange: pulumi.String("10.129.0.0/26"),
/// Region:      pulumi.String("us-central1"),
/// Network:     defaultNetwork.ID(),
/// Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// Role:        pulumi.String("ACTIVE"),
/// })
/// if err != nil {
/// return err
/// }
/// // Forwarding rule for Internal Load Balancing
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("website-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// IpProtocol:          pulumi.String("TCP"),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// PortRange:           pulumi.String("80"),
/// Target:              defaultRegionTargetHttpProxy.ID(),
/// Network:             defaultNetwork.ID(),
/// Subnetwork:          defaultSubnetwork.ID(),
/// NetworkTier:         pulumi.String("PREMIUM"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// proxy,
/// }))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxyArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("website-net")
/// .autoCreateSubnetworks(false)
/// .routingMode("REGIONAL")
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("website-net-default")
/// .ipCidrRange("10.1.2.0/24")
/// .region("us-central1")
/// .network(defaultNetwork.id())
/// .build());
///
/// var instanceTemplate = new InstanceTemplate("instanceTemplate", InstanceTemplateArgs.builder()
/// .name("template-website-backend")
/// .machineType("e2-medium")
/// .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
/// .network(defaultNetwork.id())
/// .subnetwork(defaultSubnetwork.id())
/// .build())
/// .disks(InstanceTemplateDiskArgs.builder()
/// .sourceImage(debianImage.selfLink())
/// .autoDelete(true)
/// .boot(true)
/// .build())
/// .tags(
/// "allow-ssh",
/// "load-balanced-backend")
/// .build());
///
/// var rigm = new RegionInstanceGroupManager("rigm", RegionInstanceGroupManagerArgs.builder()
/// .region("us-central1")
/// .name("website-rigm")
/// .versions(RegionInstanceGroupManagerVersionArgs.builder()
/// .instanceTemplate(instanceTemplate.id())
/// .name("primary")
/// .build())
/// .baseInstanceName("internal-glb")
/// .targetSize(1)
/// .build());
///
/// var fw1 = new Firewall("fw1", FirewallArgs.builder()
/// .name("website-fw-1")
/// .network(defaultNetwork.id())
/// .sourceRanges("10.1.2.0/24")
/// .allows(
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("udp")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("icmp")
/// .build())
/// .direction("INGRESS")
/// .build());
///
/// var fw2 = new Firewall("fw2", FirewallArgs.builder()
/// .name("website-fw-2")
/// .network(defaultNetwork.id())
/// .sourceRanges("0.0.0.0/0")
/// .allows(FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("22")
/// .build())
/// .targetTags("allow-ssh")
/// .direction("INGRESS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw1)
/// .build());
///
/// var fw3 = new Firewall("fw3", FirewallArgs.builder()
/// .name("website-fw-3")
/// .network(defaultNetwork.id())
/// .sourceRanges(
/// "130.211.0.0/22",
/// "35.191.0.0/16")
/// .allows(FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .build())
/// .targetTags("load-balanced-backend")
/// .direction("INGRESS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw2)
/// .build());
///
/// var fw4 = new Firewall("fw4", FirewallArgs.builder()
/// .name("website-fw-4")
/// .network(defaultNetwork.id())
/// .sourceRanges("10.129.0.0/26")
/// .targetTags("load-balanced-backend")
/// .allows(
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("80")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("443")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("8000")
/// .build())
/// .direction("INGRESS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw3)
/// .build());
///
/// var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
/// .region("us-central1")
/// .name("website-hc")
/// .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
/// .portSpecification("USE_SERVING_PORT")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw4)
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .backends(RegionBackendServiceBackendArgs.builder()
/// .group(rigm.instanceGroup())
/// .balancingMode("UTILIZATION")
/// .capacityScaler(1.0)
/// .build())
/// .region("us-central1")
/// .name("website-backend")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .healthChecks(defaultRegionHealthCheck.id())
/// .build());
///
/// var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
/// .region("us-central1")
/// .name("website-map")
/// .defaultService(defaultRegionBackendService.id())
/// .build());
///
/// var defaultRegionTargetHttpProxy = new RegionTargetHttpProxy("defaultRegionTargetHttpProxy", RegionTargetHttpProxyArgs.builder()
/// .region("us-central1")
/// .name("website-proxy")
/// .urlMap(defaultRegionUrlMap.id())
/// .build());
///
/// var proxy = new Subnetwork("proxy", SubnetworkArgs.builder()
/// .name("website-net-proxy")
/// .ipCidrRange("10.129.0.0/26")
/// .region("us-central1")
/// .network(defaultNetwork.id())
/// .purpose("REGIONAL_MANAGED_PROXY")
/// .role("ACTIVE")
/// .build());
///
/// // Forwarding rule for Internal Load Balancing
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("website-forwarding-rule")
/// .region("us-central1")
/// .ipProtocol("TCP")
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .portRange("80")
/// .target(defaultRegionTargetHttpProxy.id())
/// .network(defaultNetwork.id())
/// .subnetwork(defaultSubnetwork.id())
/// .networkTier("PREMIUM")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(proxy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Forwarding rule for Internal Load Balancing
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: website-forwarding-rule
/// region: us-central1
/// ipProtocol: TCP
/// loadBalancingScheme: INTERNAL_MANAGED
/// portRange: '80'
/// target: ${defaultRegionTargetHttpProxy.id}
/// network: ${defaultNetwork.id}
/// subnetwork: ${defaultSubnetwork.id}
/// networkTier: PREMIUM
/// options:
/// dependsOn:
/// - ${proxy}
/// defaultRegionTargetHttpProxy:
/// type: gcp:compute:RegionTargetHttpProxy
/// name: default
/// properties:
/// region: us-central1
/// name: website-proxy
/// urlMap: ${defaultRegionUrlMap.id}
/// defaultRegionUrlMap:
/// type: gcp:compute:RegionUrlMap
/// name: default
/// properties:
/// region: us-central1
/// name: website-map
/// defaultService: ${defaultRegionBackendService.id}
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// loadBalancingScheme: INTERNAL_MANAGED
/// backends:
/// - group: ${rigm.instanceGroup}
/// balancingMode: UTILIZATION
/// capacityScaler: 1
/// region: us-central1
/// name: website-backend
/// protocol: HTTP
/// timeoutSec: 10
/// healthChecks: ${defaultRegionHealthCheck.id}
/// rigm:
/// type: gcp:compute:RegionInstanceGroupManager
/// properties:
/// region: us-central1
/// name: website-rigm
/// versions:
/// - instanceTemplate: ${instanceTemplate.id}
/// name: primary
/// baseInstanceName: internal-glb
/// targetSize: 1
/// instanceTemplate:
/// type: gcp:compute:InstanceTemplate
/// name: instance_template
/// properties:
/// name: template-website-backend
/// machineType: e2-medium
/// networkInterfaces:
/// - network: ${defaultNetwork.id}
/// subnetwork: ${defaultSubnetwork.id}
/// disks:
/// - sourceImage: ${debianImage.selfLink}
/// autoDelete: true
/// boot: true
/// tags:
/// - allow-ssh
/// - load-balanced-backend
/// defaultRegionHealthCheck:
/// type: gcp:compute:RegionHealthCheck
/// name: default
/// properties:
/// region: us-central1
/// name: website-hc
/// httpHealthCheck:
/// portSpecification: USE_SERVING_PORT
/// options:
/// dependsOn:
/// - ${fw4}
/// fw1:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-1
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 10.1.2.0/24
/// allows:
/// - protocol: tcp
/// - protocol: udp
/// - protocol: icmp
/// direction: INGRESS
/// fw2:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-2
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 0.0.0.0/0
/// allows:
/// - protocol: tcp
/// ports:
/// - '22'
/// targetTags:
/// - allow-ssh
/// direction: INGRESS
/// options:
/// dependsOn:
/// - ${fw1}
/// fw3:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-3
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 130.211.0.0/22
/// - 35.191.0.0/16
/// allows:
/// - protocol: tcp
/// targetTags:
/// - load-balanced-backend
/// direction: INGRESS
/// options:
/// dependsOn:
/// - ${fw2}
/// fw4:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-4
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 10.129.0.0/26
/// targetTags:
/// - load-balanced-backend
/// allows:
/// - protocol: tcp
/// ports:
/// - '80'
/// - protocol: tcp
/// ports:
/// - '443'
/// - protocol: tcp
/// ports:
/// - '8000'
/// direction: INGRESS
/// options:
/// dependsOn:
/// - ${fw3}
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: website-net
/// autoCreateSubnetworks: false
/// routingMode: REGIONAL
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: website-net-default
/// ipCidrRange: 10.1.2.0/24
/// region: us-central1
/// network: ${defaultNetwork.id}
/// proxy:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: website-net-proxy
/// ipCidrRange: 10.129.0.0/26
/// region: us-central1
/// network: ${defaultNetwork.id}
/// purpose: REGIONAL_MANAGED_PROXY
/// role: ACTIVE
/// variables:
/// debianImage:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Regional Http Xlb
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
/// const defaultNetwork = new gcp.compute.Network("default", {
/// name: "website-net",
/// autoCreateSubnetworks: false,
/// routingMode: "REGIONAL",
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "website-net-default",
/// ipCidrRange: "10.1.2.0/24",
/// region: "us-central1",
/// network: defaultNetwork.id,
/// });
/// const instanceTemplate = new gcp.compute.InstanceTemplate("instance_template", {
/// name: "template-website-backend",
/// machineType: "e2-medium",
/// networkInterfaces: [{
/// network: defaultNetwork.id,
/// subnetwork: defaultSubnetwork.id,
/// }],
/// disks: [{
/// sourceImage: debianImage.then(debianImage => debianImage.selfLink),
/// autoDelete: true,
/// boot: true,
/// }],
/// tags: [
/// "allow-ssh",
/// "load-balanced-backend",
/// ],
/// });
/// const rigm = new gcp.compute.RegionInstanceGroupManager("rigm", {
/// region: "us-central1",
/// name: "website-rigm",
/// versions: [{
/// instanceTemplate: instanceTemplate.id,
/// name: "primary",
/// }],
/// baseInstanceName: "internal-glb",
/// targetSize: 1,
/// });
/// const fw1 = new gcp.compute.Firewall("fw1", {
/// name: "website-fw-1",
/// network: defaultNetwork.id,
/// sourceRanges: ["10.1.2.0/24"],
/// allows: [
/// {
/// protocol: "tcp",
/// },
/// {
/// protocol: "udp",
/// },
/// {
/// protocol: "icmp",
/// },
/// ],
/// direction: "INGRESS",
/// });
/// const fw2 = new gcp.compute.Firewall("fw2", {
/// name: "website-fw-2",
/// network: defaultNetwork.id,
/// sourceRanges: ["0.0.0.0/0"],
/// allows: [{
/// protocol: "tcp",
/// ports: ["22"],
/// }],
/// targetTags: ["allow-ssh"],
/// direction: "INGRESS",
/// }, {
/// dependsOn: [fw1],
/// });
/// const fw3 = new gcp.compute.Firewall("fw3", {
/// name: "website-fw-3",
/// network: defaultNetwork.id,
/// sourceRanges: [
/// "130.211.0.0/22",
/// "35.191.0.0/16",
/// ],
/// allows: [{
/// protocol: "tcp",
/// }],
/// targetTags: ["load-balanced-backend"],
/// direction: "INGRESS",
/// }, {
/// dependsOn: [fw2],
/// });
/// const fw4 = new gcp.compute.Firewall("fw4", {
/// name: "website-fw-4",
/// network: defaultNetwork.id,
/// sourceRanges: ["10.129.0.0/26"],
/// targetTags: ["load-balanced-backend"],
/// allows: [
/// {
/// protocol: "tcp",
/// ports: ["80"],
/// },
/// {
/// protocol: "tcp",
/// ports: ["443"],
/// },
/// {
/// protocol: "tcp",
/// ports: ["8000"],
/// },
/// ],
/// direction: "INGRESS",
/// }, {
/// dependsOn: [fw3],
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
/// region: "us-central1",
/// name: "website-hc",
/// httpHealthCheck: {
/// portSpecification: "USE_SERVING_PORT",
/// },
/// }, {
/// dependsOn: [fw4],
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// backends: [{
/// group: rigm.instanceGroup,
/// balancingMode: "UTILIZATION",
/// capacityScaler: 1,
/// }],
/// region: "us-central1",
/// name: "website-backend",
/// protocol: "HTTP",
/// timeoutSec: 10,
/// healthChecks: defaultRegionHealthCheck.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
/// region: "us-central1",
/// name: "website-map",
/// defaultService: defaultRegionBackendService.id,
/// });
/// const defaultRegionTargetHttpProxy = new gcp.compute.RegionTargetHttpProxy("default", {
/// region: "us-central1",
/// name: "website-proxy",
/// urlMap: defaultRegionUrlMap.id,
/// });
/// const defaultAddress = new gcp.compute.Address("default", {
/// name: "website-ip-1",
/// region: "us-central1",
/// networkTier: "STANDARD",
/// });
/// const proxy = new gcp.compute.Subnetwork("proxy", {
/// name: "website-net-proxy",
/// ipCidrRange: "10.129.0.0/26",
/// region: "us-central1",
/// network: defaultNetwork.id,
/// purpose: "REGIONAL_MANAGED_PROXY",
/// role: "ACTIVE",
/// });
/// // Forwarding rule for Regional External Load Balancing
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "website-forwarding-rule",
/// region: "us-central1",
/// ipProtocol: "TCP",
/// loadBalancingScheme: "EXTERNAL_MANAGED",
/// portRange: "80",
/// target: defaultRegionTargetHttpProxy.id,
/// network: defaultNetwork.id,
/// ipAddress: defaultAddress.address,
/// networkTier: "STANDARD",
/// }, {
/// dependsOn: [proxy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian_image = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// default_network = gcp.compute.Network("default",
/// name="website-net",
/// auto_create_subnetworks=False,
/// routing_mode="REGIONAL")
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="website-net-default",
/// ip_cidr_range="10.1.2.0/24",
/// region="us-central1",
/// network=default_network.id)
/// instance_template = gcp.compute.InstanceTemplate("instance_template",
/// name="template-website-backend",
/// machine_type="e2-medium",
/// network_interfaces=[{
/// "network": default_network.id,
/// "subnetwork": default_subnetwork.id,
/// }],
/// disks=[{
/// "source_image": debian_image.self_link,
/// "auto_delete": True,
/// "boot": True,
/// }],
/// tags=[
/// "allow-ssh",
/// "load-balanced-backend",
/// ])
/// rigm = gcp.compute.RegionInstanceGroupManager("rigm",
/// region="us-central1",
/// name="website-rigm",
/// versions=[{
/// "instance_template": instance_template.id,
/// "name": "primary",
/// }],
/// base_instance_name="internal-glb",
/// target_size=1)
/// fw1 = gcp.compute.Firewall("fw1",
/// name="website-fw-1",
/// network=default_network.id,
/// source_ranges=["10.1.2.0/24"],
/// allows=[
/// {
/// "protocol": "tcp",
/// },
/// {
/// "protocol": "udp",
/// },
/// {
/// "protocol": "icmp",
/// },
/// ],
/// direction="INGRESS")
/// fw2 = gcp.compute.Firewall("fw2",
/// name="website-fw-2",
/// network=default_network.id,
/// source_ranges=["0.0.0.0/0"],
/// allows=[{
/// "protocol": "tcp",
/// "ports": ["22"],
/// }],
/// target_tags=["allow-ssh"],
/// direction="INGRESS",
/// opts = pulumi.ResourceOptions(depends_on=[fw1]))
/// fw3 = gcp.compute.Firewall("fw3",
/// name="website-fw-3",
/// network=default_network.id,
/// source_ranges=[
/// "130.211.0.0/22",
/// "35.191.0.0/16",
/// ],
/// allows=[{
/// "protocol": "tcp",
/// }],
/// target_tags=["load-balanced-backend"],
/// direction="INGRESS",
/// opts = pulumi.ResourceOptions(depends_on=[fw2]))
/// fw4 = gcp.compute.Firewall("fw4",
/// name="website-fw-4",
/// network=default_network.id,
/// source_ranges=["10.129.0.0/26"],
/// target_tags=["load-balanced-backend"],
/// allows=[
/// {
/// "protocol": "tcp",
/// "ports": ["80"],
/// },
/// {
/// "protocol": "tcp",
/// "ports": ["443"],
/// },
/// {
/// "protocol": "tcp",
/// "ports": ["8000"],
/// },
/// ],
/// direction="INGRESS",
/// opts = pulumi.ResourceOptions(depends_on=[fw3]))
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
/// region="us-central1",
/// name="website-hc",
/// http_health_check={
/// "port_specification": "USE_SERVING_PORT",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[fw4]))
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
/// load_balancing_scheme="EXTERNAL_MANAGED",
/// backends=[{
/// "group": rigm.instance_group,
/// "balancing_mode": "UTILIZATION",
/// "capacity_scaler": 1,
/// }],
/// region="us-central1",
/// name="website-backend",
/// protocol="HTTP",
/// timeout_sec=10,
/// health_checks=default_region_health_check.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
/// region="us-central1",
/// name="website-map",
/// default_service=default_region_backend_service.id)
/// default_region_target_http_proxy = gcp.compute.RegionTargetHttpProxy("default",
/// region="us-central1",
/// name="website-proxy",
/// url_map=default_region_url_map.id)
/// default_address = gcp.compute.Address("default",
/// name="website-ip-1",
/// region="us-central1",
/// network_tier="STANDARD")
/// proxy = gcp.compute.Subnetwork("proxy",
/// name="website-net-proxy",
/// ip_cidr_range="10.129.0.0/26",
/// region="us-central1",
/// network=default_network.id,
/// purpose="REGIONAL_MANAGED_PROXY",
/// role="ACTIVE")
/// # Forwarding rule for Regional External Load Balancing
/// default = gcp.compute.ForwardingRule("default",
/// name="website-forwarding-rule",
/// region="us-central1",
/// ip_protocol="TCP",
/// load_balancing_scheme="EXTERNAL_MANAGED",
/// port_range="80",
/// target=default_region_target_http_proxy.id,
/// network=default_network.id,
/// ip_address=default_address.address,
/// network_tier="STANDARD",
/// opts = pulumi.ResourceOptions(depends_on=[proxy]))
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
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "website-net",
/// AutoCreateSubnetworks = false,
/// RoutingMode = "REGIONAL",
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "website-net-default",
/// IpCidrRange = "10.1.2.0/24",
/// Region = "us-central1",
/// Network = defaultNetwork.Id,
/// });
///
/// var instanceTemplate = new Gcp.Compute.InstanceTemplate("instance_template", new()
/// {
/// Name = "template-website-backend",
/// MachineType = "e2-medium",
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
/// {
/// Network = defaultNetwork.Id,
/// Subnetwork = defaultSubnetwork.Id,
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
/// Tags = new[]
/// {
/// "allow-ssh",
/// "load-balanced-backend",
/// },
/// });
///
/// var rigm = new Gcp.Compute.RegionInstanceGroupManager("rigm", new()
/// {
/// Region = "us-central1",
/// Name = "website-rigm",
/// Versions = new[]
/// {
/// new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
/// {
/// InstanceTemplate = instanceTemplate.Id,
/// Name = "primary",
/// },
/// },
/// BaseInstanceName = "internal-glb",
/// TargetSize = 1,
/// });
///
/// var fw1 = new Gcp.Compute.Firewall("fw1", new()
/// {
/// Name = "website-fw-1",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "10.1.2.0/24",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "udp",
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "icmp",
/// },
/// },
/// Direction = "INGRESS",
/// });
///
/// var fw2 = new Gcp.Compute.Firewall("fw2", new()
/// {
/// Name = "website-fw-2",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "0.0.0.0/0",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "22",
/// },
/// },
/// },
/// TargetTags = new[]
/// {
/// "allow-ssh",
/// },
/// Direction = "INGRESS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw1,
/// },
/// });
///
/// var fw3 = new Gcp.Compute.Firewall("fw3", new()
/// {
/// Name = "website-fw-3",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "130.211.0.0/22",
/// "35.191.0.0/16",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// },
/// },
/// TargetTags = new[]
/// {
/// "load-balanced-backend",
/// },
/// Direction = "INGRESS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw2,
/// },
/// });
///
/// var fw4 = new Gcp.Compute.Firewall("fw4", new()
/// {
/// Name = "website-fw-4",
/// Network = defaultNetwork.Id,
/// SourceRanges = new[]
/// {
/// "10.129.0.0/26",
/// },
/// TargetTags = new[]
/// {
/// "load-balanced-backend",
/// },
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "80",
/// },
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "443",
/// },
/// },
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "8000",
/// },
/// },
/// },
/// Direction = "INGRESS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw3,
/// },
/// });
///
/// var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
/// {
/// Region = "us-central1",
/// Name = "website-hc",
/// HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
/// {
/// PortSpecification = "USE_SERVING_PORT",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fw4,
/// },
/// });
///
/// var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// Backends = new[]
/// {
/// new Gcp.Compute.Inputs.RegionBackendServiceBackendArgs
/// {
/// Group = rigm.InstanceGroup,
/// BalancingMode = "UTILIZATION",
/// CapacityScaler = 1,
/// },
/// },
/// Region = "us-central1",
/// Name = "website-backend",
/// Protocol = "HTTP",
/// TimeoutSec = 10,
/// HealthChecks = defaultRegionHealthCheck.Id,
/// });
///
/// var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
/// {
/// Region = "us-central1",
/// Name = "website-map",
/// DefaultService = defaultRegionBackendService.Id,
/// });
///
/// var defaultRegionTargetHttpProxy = new Gcp.Compute.RegionTargetHttpProxy("default", new()
/// {
/// Region = "us-central1",
/// Name = "website-proxy",
/// UrlMap = defaultRegionUrlMap.Id,
/// });
///
/// var defaultAddress = new Gcp.Compute.Address("default", new()
/// {
/// Name = "website-ip-1",
/// Region = "us-central1",
/// NetworkTier = "STANDARD",
/// });
///
/// var proxy = new Gcp.Compute.Subnetwork("proxy", new()
/// {
/// Name = "website-net-proxy",
/// IpCidrRange = "10.129.0.0/26",
/// Region = "us-central1",
/// Network = defaultNetwork.Id,
/// Purpose = "REGIONAL_MANAGED_PROXY",
/// Role = "ACTIVE",
/// });
///
/// // Forwarding rule for Regional External Load Balancing
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "website-forwarding-rule",
/// Region = "us-central1",
/// IpProtocol = "TCP",
/// LoadBalancingScheme = "EXTERNAL_MANAGED",
/// PortRange = "80",
/// Target = defaultRegionTargetHttpProxy.Id,
/// Network = defaultNetwork.Id,
/// IpAddress = defaultAddress.IPAddress,
/// NetworkTier = "STANDARD",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// proxy,
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
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("website-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// RoutingMode:           pulumi.String("REGIONAL"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("website-net-default"),
/// IpCidrRange: pulumi.String("10.1.2.0/24"),
/// Region:      pulumi.String("us-central1"),
/// Network:     defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// instanceTemplate, err := compute.NewInstanceTemplate(ctx, "instance_template", &compute.InstanceTemplateArgs{
/// Name:        pulumi.String("template-website-backend"),
/// MachineType: pulumi.String("e2-medium"),
/// NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// &compute.InstanceTemplateNetworkInterfaceArgs{
/// Network:    defaultNetwork.ID(),
/// Subnetwork: defaultSubnetwork.ID(),
/// },
/// },
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String(debianImage.SelfLink),
/// AutoDelete:  pulumi.Bool(true),
/// Boot:        pulumi.Bool(true),
/// },
/// },
/// Tags: pulumi.StringArray{
/// pulumi.String("allow-ssh"),
/// pulumi.String("load-balanced-backend"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// rigm, err := compute.NewRegionInstanceGroupManager(ctx, "rigm", &compute.RegionInstanceGroupManagerArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("website-rigm"),
/// Versions: compute.RegionInstanceGroupManagerVersionArray{
/// &compute.RegionInstanceGroupManagerVersionArgs{
/// InstanceTemplate: instanceTemplate.ID(),
/// Name:             pulumi.String("primary"),
/// },
/// },
/// BaseInstanceName: pulumi.String("internal-glb"),
/// TargetSize:       pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// fw1, err := compute.NewFirewall(ctx, "fw1", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-1"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("10.1.2.0/24"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("udp"),
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("icmp"),
/// },
/// },
/// Direction: pulumi.String("INGRESS"),
/// })
/// if err != nil {
/// return err
/// }
/// fw2, err := compute.NewFirewall(ctx, "fw2", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-2"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("22"),
/// },
/// },
/// },
/// TargetTags: pulumi.StringArray{
/// pulumi.String("allow-ssh"),
/// },
/// Direction: pulumi.String("INGRESS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw1,
/// }))
/// if err != nil {
/// return err
/// }
/// fw3, err := compute.NewFirewall(ctx, "fw3", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-3"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("130.211.0.0/22"),
/// pulumi.String("35.191.0.0/16"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// },
/// },
/// TargetTags: pulumi.StringArray{
/// pulumi.String("load-balanced-backend"),
/// },
/// Direction: pulumi.String("INGRESS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw2,
/// }))
/// if err != nil {
/// return err
/// }
/// fw4, err := compute.NewFirewall(ctx, "fw4", &compute.FirewallArgs{
/// Name:    pulumi.String("website-fw-4"),
/// Network: defaultNetwork.ID(),
/// SourceRanges: pulumi.StringArray{
/// pulumi.String("10.129.0.0/26"),
/// },
/// TargetTags: pulumi.StringArray{
/// pulumi.String("load-balanced-backend"),
/// },
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("80"),
/// },
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("443"),
/// },
/// },
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("8000"),
/// },
/// },
/// },
/// Direction: pulumi.String("INGRESS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw3,
/// }))
/// if err != nil {
/// return err
/// }
/// defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("website-hc"),
/// HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// PortSpecification: pulumi.String("USE_SERVING_PORT"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fw4,
/// }))
/// if err != nil {
/// return err
/// }
/// defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// Backends: compute.RegionBackendServiceBackendArray{
/// &compute.RegionBackendServiceBackendArgs{
/// Group:          rigm.InstanceGroup,
/// BalancingMode:  pulumi.String("UTILIZATION"),
/// CapacityScaler: pulumi.Float64(1),
/// },
/// },
/// Region:       pulumi.String("us-central1"),
/// Name:         pulumi.String("website-backend"),
/// Protocol:     pulumi.String("HTTP"),
/// TimeoutSec:   pulumi.Int(10),
/// HealthChecks: defaultRegionHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// Region:         pulumi.String("us-central1"),
/// Name:           pulumi.String("website-map"),
/// DefaultService: defaultRegionBackendService.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegionTargetHttpProxy, err := compute.NewRegionTargetHttpProxy(ctx, "default", &compute.RegionTargetHttpProxyArgs{
/// Region: pulumi.String("us-central1"),
/// Name:   pulumi.String("website-proxy"),
/// UrlMap: defaultRegionUrlMap.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultAddress, err := compute.NewAddress(ctx, "default", &compute.AddressArgs{
/// Name:        pulumi.String("website-ip-1"),
/// Region:      pulumi.String("us-central1"),
/// NetworkTier: pulumi.String("STANDARD"),
/// })
/// if err != nil {
/// return err
/// }
/// proxy, err := compute.NewSubnetwork(ctx, "proxy", &compute.SubnetworkArgs{
/// Name:        pulumi.String("website-net-proxy"),
/// IpCidrRange: pulumi.String("10.129.0.0/26"),
/// Region:      pulumi.String("us-central1"),
/// Network:     defaultNetwork.ID(),
/// Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// Role:        pulumi.String("ACTIVE"),
/// })
/// if err != nil {
/// return err
/// }
/// // Forwarding rule for Regional External Load Balancing
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("website-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// IpProtocol:          pulumi.String("TCP"),
/// LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// PortRange:           pulumi.String("80"),
/// Target:              defaultRegionTargetHttpProxy.ID(),
/// Network:             defaultNetwork.ID(),
/// IpAddress:           defaultAddress.Address,
/// NetworkTier:         pulumi.String("STANDARD"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// proxy,
/// }))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxyArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("website-net")
/// .autoCreateSubnetworks(false)
/// .routingMode("REGIONAL")
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("website-net-default")
/// .ipCidrRange("10.1.2.0/24")
/// .region("us-central1")
/// .network(defaultNetwork.id())
/// .build());
///
/// var instanceTemplate = new InstanceTemplate("instanceTemplate", InstanceTemplateArgs.builder()
/// .name("template-website-backend")
/// .machineType("e2-medium")
/// .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
/// .network(defaultNetwork.id())
/// .subnetwork(defaultSubnetwork.id())
/// .build())
/// .disks(InstanceTemplateDiskArgs.builder()
/// .sourceImage(debianImage.selfLink())
/// .autoDelete(true)
/// .boot(true)
/// .build())
/// .tags(
/// "allow-ssh",
/// "load-balanced-backend")
/// .build());
///
/// var rigm = new RegionInstanceGroupManager("rigm", RegionInstanceGroupManagerArgs.builder()
/// .region("us-central1")
/// .name("website-rigm")
/// .versions(RegionInstanceGroupManagerVersionArgs.builder()
/// .instanceTemplate(instanceTemplate.id())
/// .name("primary")
/// .build())
/// .baseInstanceName("internal-glb")
/// .targetSize(1)
/// .build());
///
/// var fw1 = new Firewall("fw1", FirewallArgs.builder()
/// .name("website-fw-1")
/// .network(defaultNetwork.id())
/// .sourceRanges("10.1.2.0/24")
/// .allows(
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("udp")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("icmp")
/// .build())
/// .direction("INGRESS")
/// .build());
///
/// var fw2 = new Firewall("fw2", FirewallArgs.builder()
/// .name("website-fw-2")
/// .network(defaultNetwork.id())
/// .sourceRanges("0.0.0.0/0")
/// .allows(FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("22")
/// .build())
/// .targetTags("allow-ssh")
/// .direction("INGRESS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw1)
/// .build());
///
/// var fw3 = new Firewall("fw3", FirewallArgs.builder()
/// .name("website-fw-3")
/// .network(defaultNetwork.id())
/// .sourceRanges(
/// "130.211.0.0/22",
/// "35.191.0.0/16")
/// .allows(FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .build())
/// .targetTags("load-balanced-backend")
/// .direction("INGRESS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw2)
/// .build());
///
/// var fw4 = new Firewall("fw4", FirewallArgs.builder()
/// .name("website-fw-4")
/// .network(defaultNetwork.id())
/// .sourceRanges("10.129.0.0/26")
/// .targetTags("load-balanced-backend")
/// .allows(
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("80")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("443")
/// .build(),
/// FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("8000")
/// .build())
/// .direction("INGRESS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw3)
/// .build());
///
/// var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
/// .region("us-central1")
/// .name("website-hc")
/// .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
/// .portSpecification("USE_SERVING_PORT")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fw4)
/// .build());
///
/// var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .backends(RegionBackendServiceBackendArgs.builder()
/// .group(rigm.instanceGroup())
/// .balancingMode("UTILIZATION")
/// .capacityScaler(1.0)
/// .build())
/// .region("us-central1")
/// .name("website-backend")
/// .protocol("HTTP")
/// .timeoutSec(10)
/// .healthChecks(defaultRegionHealthCheck.id())
/// .build());
///
/// var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
/// .region("us-central1")
/// .name("website-map")
/// .defaultService(defaultRegionBackendService.id())
/// .build());
///
/// var defaultRegionTargetHttpProxy = new RegionTargetHttpProxy("defaultRegionTargetHttpProxy", RegionTargetHttpProxyArgs.builder()
/// .region("us-central1")
/// .name("website-proxy")
/// .urlMap(defaultRegionUrlMap.id())
/// .build());
///
/// var defaultAddress = new Address("defaultAddress", AddressArgs.builder()
/// .name("website-ip-1")
/// .region("us-central1")
/// .networkTier("STANDARD")
/// .build());
///
/// var proxy = new Subnetwork("proxy", SubnetworkArgs.builder()
/// .name("website-net-proxy")
/// .ipCidrRange("10.129.0.0/26")
/// .region("us-central1")
/// .network(defaultNetwork.id())
/// .purpose("REGIONAL_MANAGED_PROXY")
/// .role("ACTIVE")
/// .build());
///
/// // Forwarding rule for Regional External Load Balancing
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("website-forwarding-rule")
/// .region("us-central1")
/// .ipProtocol("TCP")
/// .loadBalancingScheme("EXTERNAL_MANAGED")
/// .portRange("80")
/// .target(defaultRegionTargetHttpProxy.id())
/// .network(defaultNetwork.id())
/// .ipAddress(defaultAddress.address())
/// .networkTier("STANDARD")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(proxy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Forwarding rule for Regional External Load Balancing
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: website-forwarding-rule
/// region: us-central1
/// ipProtocol: TCP
/// loadBalancingScheme: EXTERNAL_MANAGED
/// portRange: '80'
/// target: ${defaultRegionTargetHttpProxy.id}
/// network: ${defaultNetwork.id}
/// ipAddress: ${defaultAddress.address}
/// networkTier: STANDARD
/// options:
/// dependsOn:
/// - ${proxy}
/// defaultRegionTargetHttpProxy:
/// type: gcp:compute:RegionTargetHttpProxy
/// name: default
/// properties:
/// region: us-central1
/// name: website-proxy
/// urlMap: ${defaultRegionUrlMap.id}
/// defaultRegionUrlMap:
/// type: gcp:compute:RegionUrlMap
/// name: default
/// properties:
/// region: us-central1
/// name: website-map
/// defaultService: ${defaultRegionBackendService.id}
/// defaultRegionBackendService:
/// type: gcp:compute:RegionBackendService
/// name: default
/// properties:
/// loadBalancingScheme: EXTERNAL_MANAGED
/// backends:
/// - group: ${rigm.instanceGroup}
/// balancingMode: UTILIZATION
/// capacityScaler: 1
/// region: us-central1
/// name: website-backend
/// protocol: HTTP
/// timeoutSec: 10
/// healthChecks: ${defaultRegionHealthCheck.id}
/// rigm:
/// type: gcp:compute:RegionInstanceGroupManager
/// properties:
/// region: us-central1
/// name: website-rigm
/// versions:
/// - instanceTemplate: ${instanceTemplate.id}
/// name: primary
/// baseInstanceName: internal-glb
/// targetSize: 1
/// instanceTemplate:
/// type: gcp:compute:InstanceTemplate
/// name: instance_template
/// properties:
/// name: template-website-backend
/// machineType: e2-medium
/// networkInterfaces:
/// - network: ${defaultNetwork.id}
/// subnetwork: ${defaultSubnetwork.id}
/// disks:
/// - sourceImage: ${debianImage.selfLink}
/// autoDelete: true
/// boot: true
/// tags:
/// - allow-ssh
/// - load-balanced-backend
/// defaultRegionHealthCheck:
/// type: gcp:compute:RegionHealthCheck
/// name: default
/// properties:
/// region: us-central1
/// name: website-hc
/// httpHealthCheck:
/// portSpecification: USE_SERVING_PORT
/// options:
/// dependsOn:
/// - ${fw4}
/// defaultAddress:
/// type: gcp:compute:Address
/// name: default
/// properties:
/// name: website-ip-1
/// region: us-central1
/// networkTier: STANDARD
/// fw1:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-1
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 10.1.2.0/24
/// allows:
/// - protocol: tcp
/// - protocol: udp
/// - protocol: icmp
/// direction: INGRESS
/// fw2:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-2
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 0.0.0.0/0
/// allows:
/// - protocol: tcp
/// ports:
/// - '22'
/// targetTags:
/// - allow-ssh
/// direction: INGRESS
/// options:
/// dependsOn:
/// - ${fw1}
/// fw3:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-3
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 130.211.0.0/22
/// - 35.191.0.0/16
/// allows:
/// - protocol: tcp
/// targetTags:
/// - load-balanced-backend
/// direction: INGRESS
/// options:
/// dependsOn:
/// - ${fw2}
/// fw4:
/// type: gcp:compute:Firewall
/// properties:
/// name: website-fw-4
/// network: ${defaultNetwork.id}
/// sourceRanges:
/// - 10.129.0.0/26
/// targetTags:
/// - load-balanced-backend
/// allows:
/// - protocol: tcp
/// ports:
/// - '80'
/// - protocol: tcp
/// ports:
/// - '443'
/// - protocol: tcp
/// ports:
/// - '8000'
/// direction: INGRESS
/// options:
/// dependsOn:
/// - ${fw3}
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: website-net
/// autoCreateSubnetworks: false
/// routingMode: REGIONAL
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: website-net-default
/// ipCidrRange: 10.1.2.0/24
/// region: us-central1
/// network: ${defaultNetwork.id}
/// proxy:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: website-net-proxy
/// ipCidrRange: 10.129.0.0/26
/// region: us-central1
/// network: ${defaultNetwork.id}
/// purpose: REGIONAL_MANAGED_PROXY
/// role: ACTIVE
/// variables:
/// debianImage:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Vpc Psc
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Consumer service endpoint
/// const consumerNet = new gcp.compute.Network("consumer_net", {
/// name: "consumer-net",
/// autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
/// name: "consumer-net",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: consumerNet.id,
/// });
/// const consumerAddress = new gcp.compute.Address("consumer_address", {
/// name: "website-ip-1",
/// region: "us-central1",
/// subnetwork: consumerSubnet.id,
/// addressType: "INTERNAL",
/// });
/// // Producer service attachment
/// const producerNet = new gcp.compute.Network("producer_net", {
/// name: "producer-net",
/// autoCreateSubnetworks: false,
/// });
/// const pscProducerSubnet = new gcp.compute.Subnetwork("psc_producer_subnet", {
/// name: "producer-psc-net",
/// ipCidrRange: "10.1.0.0/16",
/// region: "us-central1",
/// purpose: "PRIVATE_SERVICE_CONNECT",
/// network: producerNet.id,
/// });
/// const producerSubnet = new gcp.compute.Subnetwork("producer_subnet", {
/// name: "producer-net",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: producerNet.id,
/// });
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
/// name: "producer-service-health-check",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
/// name: "producer-service-backend",
/// region: "us-central1",
/// healthChecks: producerServiceHealthCheck.id,
/// });
/// const producerTargetService = new gcp.compute.ForwardingRule("producer_target_service", {
/// name: "producer-forwarding-rule",
/// region: "us-central1",
/// loadBalancingScheme: "INTERNAL",
/// backendService: producerServiceBackend.id,
/// allPorts: true,
/// network: producerNet.name,
/// subnetwork: producerSubnet.name,
/// });
/// const producerServiceAttachment = new gcp.compute.ServiceAttachment("producer_service_attachment", {
/// name: "producer-service",
/// region: "us-central1",
/// description: "A service attachment configured with Terraform",
/// enableProxyProtocol: true,
/// connectionPreference: "ACCEPT_AUTOMATIC",
/// natSubnets: [pscProducerSubnet.name],
/// targetService: producerTargetService.id,
/// });
/// // Forwarding rule for VPC private service connect
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "psc-endpoint",
/// region: "us-central1",
/// loadBalancingScheme: "",
/// target: producerServiceAttachment.id,
/// network: consumerNet.name,
/// ipAddress: consumerAddress.id,
/// allowPscGlobalAccess: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Consumer service endpoint
/// consumer_net = gcp.compute.Network("consumer_net",
/// name="consumer-net",
/// auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
/// name="consumer-net",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=consumer_net.id)
/// consumer_address = gcp.compute.Address("consumer_address",
/// name="website-ip-1",
/// region="us-central1",
/// subnetwork=consumer_subnet.id,
/// address_type="INTERNAL")
/// # Producer service attachment
/// producer_net = gcp.compute.Network("producer_net",
/// name="producer-net",
/// auto_create_subnetworks=False)
/// psc_producer_subnet = gcp.compute.Subnetwork("psc_producer_subnet",
/// name="producer-psc-net",
/// ip_cidr_range="10.1.0.0/16",
/// region="us-central1",
/// purpose="PRIVATE_SERVICE_CONNECT",
/// network=producer_net.id)
/// producer_subnet = gcp.compute.Subnetwork("producer_subnet",
/// name="producer-net",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=producer_net.id)
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
/// name="producer-service-health-check",
/// check_interval_sec=1,
/// timeout_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
/// name="producer-service-backend",
/// region="us-central1",
/// health_checks=producer_service_health_check.id)
/// producer_target_service = gcp.compute.ForwardingRule("producer_target_service",
/// name="producer-forwarding-rule",
/// region="us-central1",
/// load_balancing_scheme="INTERNAL",
/// backend_service=producer_service_backend.id,
/// all_ports=True,
/// network=producer_net.name,
/// subnetwork=producer_subnet.name)
/// producer_service_attachment = gcp.compute.ServiceAttachment("producer_service_attachment",
/// name="producer-service",
/// region="us-central1",
/// description="A service attachment configured with Terraform",
/// enable_proxy_protocol=True,
/// connection_preference="ACCEPT_AUTOMATIC",
/// nat_subnets=[psc_producer_subnet.name],
/// target_service=producer_target_service.id)
/// # Forwarding rule for VPC private service connect
/// default = gcp.compute.ForwardingRule("default",
/// name="psc-endpoint",
/// region="us-central1",
/// load_balancing_scheme="",
/// target=producer_service_attachment.id,
/// network=consumer_net.name,
/// ip_address=consumer_address.id,
/// allow_psc_global_access=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Consumer service endpoint
/// var consumerNet = new Gcp.Compute.Network("consumer_net", new()
/// {
/// Name = "consumer-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
/// {
/// Name = "consumer-net",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = consumerNet.Id,
/// });
///
/// var consumerAddress = new Gcp.Compute.Address("consumer_address", new()
/// {
/// Name = "website-ip-1",
/// Region = "us-central1",
/// Subnetwork = consumerSubnet.Id,
/// AddressType = "INTERNAL",
/// });
///
/// // Producer service attachment
/// var producerNet = new Gcp.Compute.Network("producer_net", new()
/// {
/// Name = "producer-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var pscProducerSubnet = new Gcp.Compute.Subnetwork("psc_producer_subnet", new()
/// {
/// Name = "producer-psc-net",
/// IpCidrRange = "10.1.0.0/16",
/// Region = "us-central1",
/// Purpose = "PRIVATE_SERVICE_CONNECT",
/// Network = producerNet.Id,
/// });
///
/// var producerSubnet = new Gcp.Compute.Subnetwork("producer_subnet", new()
/// {
/// Name = "producer-net",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = producerNet.Id,
/// });
///
/// var producerServiceHealthCheck = new Gcp.Compute.HealthCheck("producer_service_health_check", new()
/// {
/// Name = "producer-service-health-check",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
/// {
/// Name = "producer-service-backend",
/// Region = "us-central1",
/// HealthChecks = producerServiceHealthCheck.Id,
/// });
///
/// var producerTargetService = new Gcp.Compute.ForwardingRule("producer_target_service", new()
/// {
/// Name = "producer-forwarding-rule",
/// Region = "us-central1",
/// LoadBalancingScheme = "INTERNAL",
/// BackendService = producerServiceBackend.Id,
/// AllPorts = true,
/// Network = producerNet.Name,
/// Subnetwork = producerSubnet.Name,
/// });
///
/// var producerServiceAttachment = new Gcp.Compute.ServiceAttachment("producer_service_attachment", new()
/// {
/// Name = "producer-service",
/// Region = "us-central1",
/// Description = "A service attachment configured with Terraform",
/// EnableProxyProtocol = true,
/// ConnectionPreference = "ACCEPT_AUTOMATIC",
/// NatSubnets = new[]
/// {
/// pscProducerSubnet.Name,
/// },
/// TargetService = producerTargetService.Id,
/// });
///
/// // Forwarding rule for VPC private service connect
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "psc-endpoint",
/// Region = "us-central1",
/// LoadBalancingScheme = "",
/// Target = producerServiceAttachment.Id,
/// Network = consumerNet.Name,
/// IpAddress = consumerAddress.Id,
/// AllowPscGlobalAccess = true,
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
/// // Consumer service endpoint
/// consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// Name:                  pulumi.String("consumer-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("consumer-net"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     consumerNet.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// consumerAddress, err := compute.NewAddress(ctx, "consumer_address", &compute.AddressArgs{
/// Name:        pulumi.String("website-ip-1"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  consumerSubnet.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// // Producer service attachment
/// producerNet, err := compute.NewNetwork(ctx, "producer_net", &compute.NetworkArgs{
/// Name:                  pulumi.String("producer-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// pscProducerSubnet, err := compute.NewSubnetwork(ctx, "psc_producer_subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("producer-psc-net"),
/// IpCidrRange: pulumi.String("10.1.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// Network:     producerNet.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// producerSubnet, err := compute.NewSubnetwork(ctx, "producer_subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("producer-net"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     producerNet.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// producerServiceHealthCheck, err := compute.NewHealthCheck(ctx, "producer_service_health_check", &compute.HealthCheckArgs{
/// Name:             pulumi.String("producer-service-health-check"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// Name:         pulumi.String("producer-service-backend"),
/// Region:       pulumi.String("us-central1"),
/// HealthChecks: producerServiceHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// producerTargetService, err := compute.NewForwardingRule(ctx, "producer_target_service", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("producer-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("INTERNAL"),
/// BackendService:      producerServiceBackend.ID(),
/// AllPorts:            pulumi.Bool(true),
/// Network:             producerNet.Name,
/// Subnetwork:          producerSubnet.Name,
/// })
/// if err != nil {
/// return err
/// }
/// producerServiceAttachment, err := compute.NewServiceAttachment(ctx, "producer_service_attachment", &compute.ServiceAttachmentArgs{
/// Name:                 pulumi.String("producer-service"),
/// Region:               pulumi.String("us-central1"),
/// Description:          pulumi.String("A service attachment configured with Terraform"),
/// EnableProxyProtocol:  pulumi.Bool(true),
/// ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// NatSubnets: pulumi.StringArray{
/// pscProducerSubnet.Name,
/// },
/// TargetService: producerTargetService.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Forwarding rule for VPC private service connect
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                 pulumi.String("psc-endpoint"),
/// Region:               pulumi.String("us-central1"),
/// LoadBalancingScheme:  pulumi.String(""),
/// Target:               producerServiceAttachment.ID(),
/// Network:              consumerNet.Name,
/// IpAddress:            consumerAddress.ID(),
/// AllowPscGlobalAccess: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
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
/// // Consumer service endpoint
/// var consumerNet = new Network("consumerNet", NetworkArgs.builder()
/// .name("consumer-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
/// .name("consumer-net")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(consumerNet.id())
/// .build());
///
/// var consumerAddress = new Address("consumerAddress", AddressArgs.builder()
/// .name("website-ip-1")
/// .region("us-central1")
/// .subnetwork(consumerSubnet.id())
/// .addressType("INTERNAL")
/// .build());
///
/// // Producer service attachment
/// var producerNet = new Network("producerNet", NetworkArgs.builder()
/// .name("producer-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var pscProducerSubnet = new Subnetwork("pscProducerSubnet", SubnetworkArgs.builder()
/// .name("producer-psc-net")
/// .ipCidrRange("10.1.0.0/16")
/// .region("us-central1")
/// .purpose("PRIVATE_SERVICE_CONNECT")
/// .network(producerNet.id())
/// .build());
///
/// var producerSubnet = new Subnetwork("producerSubnet", SubnetworkArgs.builder()
/// .name("producer-net")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(producerNet.id())
/// .build());
///
/// var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
/// .name("producer-service-health-check")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
/// .name("producer-service-backend")
/// .region("us-central1")
/// .healthChecks(producerServiceHealthCheck.id())
/// .build());
///
/// var producerTargetService = new ForwardingRule("producerTargetService", ForwardingRuleArgs.builder()
/// .name("producer-forwarding-rule")
/// .region("us-central1")
/// .loadBalancingScheme("INTERNAL")
/// .backendService(producerServiceBackend.id())
/// .allPorts(true)
/// .network(producerNet.name())
/// .subnetwork(producerSubnet.name())
/// .build());
///
/// var producerServiceAttachment = new ServiceAttachment("producerServiceAttachment", ServiceAttachmentArgs.builder()
/// .name("producer-service")
/// .region("us-central1")
/// .description("A service attachment configured with Terraform")
/// .enableProxyProtocol(true)
/// .connectionPreference("ACCEPT_AUTOMATIC")
/// .natSubnets(pscProducerSubnet.name())
/// .targetService(producerTargetService.id())
/// .build());
///
/// // Forwarding rule for VPC private service connect
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("psc-endpoint")
/// .region("us-central1")
/// .loadBalancingScheme("")
/// .target(producerServiceAttachment.id())
/// .network(consumerNet.name())
/// .ipAddress(consumerAddress.id())
/// .allowPscGlobalAccess(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Forwarding rule for VPC private service connect
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: psc-endpoint
/// region: us-central1
/// loadBalancingScheme: ""
/// target: ${producerServiceAttachment.id}
/// network: ${consumerNet.name}
/// ipAddress: ${consumerAddress.id}
/// allowPscGlobalAccess: true
/// # Consumer service endpoint
/// consumerNet:
/// type: gcp:compute:Network
/// name: consumer_net
/// properties:
/// name: consumer-net
/// autoCreateSubnetworks: false
/// consumerSubnet:
/// type: gcp:compute:Subnetwork
/// name: consumer_subnet
/// properties:
/// name: consumer-net
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${consumerNet.id}
/// consumerAddress:
/// type: gcp:compute:Address
/// name: consumer_address
/// properties:
/// name: website-ip-1
/// region: us-central1
/// subnetwork: ${consumerSubnet.id}
/// addressType: INTERNAL
/// # Producer service attachment
/// producerNet:
/// type: gcp:compute:Network
/// name: producer_net
/// properties:
/// name: producer-net
/// autoCreateSubnetworks: false
/// producerSubnet:
/// type: gcp:compute:Subnetwork
/// name: producer_subnet
/// properties:
/// name: producer-net
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${producerNet.id}
/// pscProducerSubnet:
/// type: gcp:compute:Subnetwork
/// name: psc_producer_subnet
/// properties:
/// name: producer-psc-net
/// ipCidrRange: 10.1.0.0/16
/// region: us-central1
/// purpose: PRIVATE_SERVICE_CONNECT
/// network: ${producerNet.id}
/// producerServiceAttachment:
/// type: gcp:compute:ServiceAttachment
/// name: producer_service_attachment
/// properties:
/// name: producer-service
/// region: us-central1
/// description: A service attachment configured with Terraform
/// enableProxyProtocol: true
/// connectionPreference: ACCEPT_AUTOMATIC
/// natSubnets:
/// - ${pscProducerSubnet.name}
/// targetService: ${producerTargetService.id}
/// producerTargetService:
/// type: gcp:compute:ForwardingRule
/// name: producer_target_service
/// properties:
/// name: producer-forwarding-rule
/// region: us-central1
/// loadBalancingScheme: INTERNAL
/// backendService: ${producerServiceBackend.id}
/// allPorts: true
/// network: ${producerNet.name}
/// subnetwork: ${producerSubnet.name}
/// producerServiceBackend:
/// type: gcp:compute:RegionBackendService
/// name: producer_service_backend
/// properties:
/// name: producer-service-backend
/// region: us-central1
/// healthChecks: ${producerServiceHealthCheck.id}
/// producerServiceHealthCheck:
/// type: gcp:compute:HealthCheck
/// name: producer_service_health_check
/// properties:
/// name: producer-service-health-check
/// checkIntervalSec: 1
/// timeoutSec: 1
/// tcpHealthCheck:
/// port: '80'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Vpc Psc No Automate Dns
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const consumerNet = new gcp.compute.Network("consumer_net", {
/// name: "consumer-net",
/// autoCreateSubnetworks: false,
/// });
/// const consumerSubnet = new gcp.compute.Subnetwork("consumer_subnet", {
/// name: "consumer-net",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: consumerNet.id,
/// });
/// const consumerAddress = new gcp.compute.Address("consumer_address", {
/// name: "website-ip-1",
/// region: "us-central1",
/// subnetwork: consumerSubnet.id,
/// addressType: "INTERNAL",
/// });
/// const producerNet = new gcp.compute.Network("producer_net", {
/// name: "producer-net",
/// autoCreateSubnetworks: false,
/// });
/// const pscProducerSubnet = new gcp.compute.Subnetwork("psc_producer_subnet", {
/// name: "producer-psc-net",
/// ipCidrRange: "10.1.0.0/16",
/// region: "us-central1",
/// purpose: "PRIVATE_SERVICE_CONNECT",
/// network: producerNet.id,
/// });
/// const producerSubnet = new gcp.compute.Subnetwork("producer_subnet", {
/// name: "producer-net",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: producerNet.id,
/// });
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
/// name: "producer-service-health-check",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
/// name: "producer-service-backend",
/// region: "us-central1",
/// healthChecks: producerServiceHealthCheck.id,
/// });
/// const producerTargetService = new gcp.compute.ForwardingRule("producer_target_service", {
/// name: "producer-forwarding-rule",
/// region: "us-central1",
/// loadBalancingScheme: "INTERNAL",
/// backendService: producerServiceBackend.id,
/// allPorts: true,
/// network: producerNet.name,
/// subnetwork: producerSubnet.name,
/// });
/// const producerServiceAttachment = new gcp.compute.ServiceAttachment("producer_service_attachment", {
/// name: "producer-service",
/// region: "us-central1",
/// description: "A service attachment configured with Terraform",
/// enableProxyProtocol: true,
/// connectionPreference: "ACCEPT_AUTOMATIC",
/// natSubnets: [pscProducerSubnet.name],
/// targetService: producerTargetService.id,
/// });
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "psc-endpoint",
/// region: "us-central1",
/// loadBalancingScheme: "",
/// target: producerServiceAttachment.id,
/// network: consumerNet.name,
/// ipAddress: consumerAddress.id,
/// allowPscGlobalAccess: true,
/// noAutomateDnsZone: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// consumer_net = gcp.compute.Network("consumer_net",
/// name="consumer-net",
/// auto_create_subnetworks=False)
/// consumer_subnet = gcp.compute.Subnetwork("consumer_subnet",
/// name="consumer-net",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=consumer_net.id)
/// consumer_address = gcp.compute.Address("consumer_address",
/// name="website-ip-1",
/// region="us-central1",
/// subnetwork=consumer_subnet.id,
/// address_type="INTERNAL")
/// producer_net = gcp.compute.Network("producer_net",
/// name="producer-net",
/// auto_create_subnetworks=False)
/// psc_producer_subnet = gcp.compute.Subnetwork("psc_producer_subnet",
/// name="producer-psc-net",
/// ip_cidr_range="10.1.0.0/16",
/// region="us-central1",
/// purpose="PRIVATE_SERVICE_CONNECT",
/// network=producer_net.id)
/// producer_subnet = gcp.compute.Subnetwork("producer_subnet",
/// name="producer-net",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=producer_net.id)
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
/// name="producer-service-health-check",
/// check_interval_sec=1,
/// timeout_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
/// name="producer-service-backend",
/// region="us-central1",
/// health_checks=producer_service_health_check.id)
/// producer_target_service = gcp.compute.ForwardingRule("producer_target_service",
/// name="producer-forwarding-rule",
/// region="us-central1",
/// load_balancing_scheme="INTERNAL",
/// backend_service=producer_service_backend.id,
/// all_ports=True,
/// network=producer_net.name,
/// subnetwork=producer_subnet.name)
/// producer_service_attachment = gcp.compute.ServiceAttachment("producer_service_attachment",
/// name="producer-service",
/// region="us-central1",
/// description="A service attachment configured with Terraform",
/// enable_proxy_protocol=True,
/// connection_preference="ACCEPT_AUTOMATIC",
/// nat_subnets=[psc_producer_subnet.name],
/// target_service=producer_target_service.id)
/// default = gcp.compute.ForwardingRule("default",
/// name="psc-endpoint",
/// region="us-central1",
/// load_balancing_scheme="",
/// target=producer_service_attachment.id,
/// network=consumer_net.name,
/// ip_address=consumer_address.id,
/// allow_psc_global_access=True,
/// no_automate_dns_zone=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var consumerNet = new Gcp.Compute.Network("consumer_net", new()
/// {
/// Name = "consumer-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var consumerSubnet = new Gcp.Compute.Subnetwork("consumer_subnet", new()
/// {
/// Name = "consumer-net",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = consumerNet.Id,
/// });
///
/// var consumerAddress = new Gcp.Compute.Address("consumer_address", new()
/// {
/// Name = "website-ip-1",
/// Region = "us-central1",
/// Subnetwork = consumerSubnet.Id,
/// AddressType = "INTERNAL",
/// });
///
/// var producerNet = new Gcp.Compute.Network("producer_net", new()
/// {
/// Name = "producer-net",
/// AutoCreateSubnetworks = false,
/// });
///
/// var pscProducerSubnet = new Gcp.Compute.Subnetwork("psc_producer_subnet", new()
/// {
/// Name = "producer-psc-net",
/// IpCidrRange = "10.1.0.0/16",
/// Region = "us-central1",
/// Purpose = "PRIVATE_SERVICE_CONNECT",
/// Network = producerNet.Id,
/// });
///
/// var producerSubnet = new Gcp.Compute.Subnetwork("producer_subnet", new()
/// {
/// Name = "producer-net",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = producerNet.Id,
/// });
///
/// var producerServiceHealthCheck = new Gcp.Compute.HealthCheck("producer_service_health_check", new()
/// {
/// Name = "producer-service-health-check",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
/// {
/// Name = "producer-service-backend",
/// Region = "us-central1",
/// HealthChecks = producerServiceHealthCheck.Id,
/// });
///
/// var producerTargetService = new Gcp.Compute.ForwardingRule("producer_target_service", new()
/// {
/// Name = "producer-forwarding-rule",
/// Region = "us-central1",
/// LoadBalancingScheme = "INTERNAL",
/// BackendService = producerServiceBackend.Id,
/// AllPorts = true,
/// Network = producerNet.Name,
/// Subnetwork = producerSubnet.Name,
/// });
///
/// var producerServiceAttachment = new Gcp.Compute.ServiceAttachment("producer_service_attachment", new()
/// {
/// Name = "producer-service",
/// Region = "us-central1",
/// Description = "A service attachment configured with Terraform",
/// EnableProxyProtocol = true,
/// ConnectionPreference = "ACCEPT_AUTOMATIC",
/// NatSubnets = new[]
/// {
/// pscProducerSubnet.Name,
/// },
/// TargetService = producerTargetService.Id,
/// });
///
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "psc-endpoint",
/// Region = "us-central1",
/// LoadBalancingScheme = "",
/// Target = producerServiceAttachment.Id,
/// Network = consumerNet.Name,
/// IpAddress = consumerAddress.Id,
/// AllowPscGlobalAccess = true,
/// NoAutomateDnsZone = true,
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
/// consumerNet, err := compute.NewNetwork(ctx, "consumer_net", &compute.NetworkArgs{
/// Name:                  pulumi.String("consumer-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// consumerSubnet, err := compute.NewSubnetwork(ctx, "consumer_subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("consumer-net"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     consumerNet.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// consumerAddress, err := compute.NewAddress(ctx, "consumer_address", &compute.AddressArgs{
/// Name:        pulumi.String("website-ip-1"),
/// Region:      pulumi.String("us-central1"),
/// Subnetwork:  consumerSubnet.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// producerNet, err := compute.NewNetwork(ctx, "producer_net", &compute.NetworkArgs{
/// Name:                  pulumi.String("producer-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// pscProducerSubnet, err := compute.NewSubnetwork(ctx, "psc_producer_subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("producer-psc-net"),
/// IpCidrRange: pulumi.String("10.1.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// Network:     producerNet.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// producerSubnet, err := compute.NewSubnetwork(ctx, "producer_subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("producer-net"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     producerNet.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// producerServiceHealthCheck, err := compute.NewHealthCheck(ctx, "producer_service_health_check", &compute.HealthCheckArgs{
/// Name:             pulumi.String("producer-service-health-check"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// Name:         pulumi.String("producer-service-backend"),
/// Region:       pulumi.String("us-central1"),
/// HealthChecks: producerServiceHealthCheck.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// producerTargetService, err := compute.NewForwardingRule(ctx, "producer_target_service", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("producer-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("INTERNAL"),
/// BackendService:      producerServiceBackend.ID(),
/// AllPorts:            pulumi.Bool(true),
/// Network:             producerNet.Name,
/// Subnetwork:          producerSubnet.Name,
/// })
/// if err != nil {
/// return err
/// }
/// producerServiceAttachment, err := compute.NewServiceAttachment(ctx, "producer_service_attachment", &compute.ServiceAttachmentArgs{
/// Name:                 pulumi.String("producer-service"),
/// Region:               pulumi.String("us-central1"),
/// Description:          pulumi.String("A service attachment configured with Terraform"),
/// EnableProxyProtocol:  pulumi.Bool(true),
/// ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// NatSubnets: pulumi.StringArray{
/// pscProducerSubnet.Name,
/// },
/// TargetService: producerTargetService.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                 pulumi.String("psc-endpoint"),
/// Region:               pulumi.String("us-central1"),
/// LoadBalancingScheme:  pulumi.String(""),
/// Target:               producerServiceAttachment.ID(),
/// Network:              consumerNet.Name,
/// IpAddress:            consumerAddress.ID(),
/// AllowPscGlobalAccess: pulumi.Bool(true),
/// NoAutomateDnsZone:    pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
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
/// var consumerNet = new Network("consumerNet", NetworkArgs.builder()
/// .name("consumer-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var consumerSubnet = new Subnetwork("consumerSubnet", SubnetworkArgs.builder()
/// .name("consumer-net")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(consumerNet.id())
/// .build());
///
/// var consumerAddress = new Address("consumerAddress", AddressArgs.builder()
/// .name("website-ip-1")
/// .region("us-central1")
/// .subnetwork(consumerSubnet.id())
/// .addressType("INTERNAL")
/// .build());
///
/// var producerNet = new Network("producerNet", NetworkArgs.builder()
/// .name("producer-net")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var pscProducerSubnet = new Subnetwork("pscProducerSubnet", SubnetworkArgs.builder()
/// .name("producer-psc-net")
/// .ipCidrRange("10.1.0.0/16")
/// .region("us-central1")
/// .purpose("PRIVATE_SERVICE_CONNECT")
/// .network(producerNet.id())
/// .build());
///
/// var producerSubnet = new Subnetwork("producerSubnet", SubnetworkArgs.builder()
/// .name("producer-net")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(producerNet.id())
/// .build());
///
/// var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
/// .name("producer-service-health-check")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
/// .name("producer-service-backend")
/// .region("us-central1")
/// .healthChecks(producerServiceHealthCheck.id())
/// .build());
///
/// var producerTargetService = new ForwardingRule("producerTargetService", ForwardingRuleArgs.builder()
/// .name("producer-forwarding-rule")
/// .region("us-central1")
/// .loadBalancingScheme("INTERNAL")
/// .backendService(producerServiceBackend.id())
/// .allPorts(true)
/// .network(producerNet.name())
/// .subnetwork(producerSubnet.name())
/// .build());
///
/// var producerServiceAttachment = new ServiceAttachment("producerServiceAttachment", ServiceAttachmentArgs.builder()
/// .name("producer-service")
/// .region("us-central1")
/// .description("A service attachment configured with Terraform")
/// .enableProxyProtocol(true)
/// .connectionPreference("ACCEPT_AUTOMATIC")
/// .natSubnets(pscProducerSubnet.name())
/// .targetService(producerTargetService.id())
/// .build());
///
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("psc-endpoint")
/// .region("us-central1")
/// .loadBalancingScheme("")
/// .target(producerServiceAttachment.id())
/// .network(consumerNet.name())
/// .ipAddress(consumerAddress.id())
/// .allowPscGlobalAccess(true)
/// .noAutomateDnsZone(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: psc-endpoint
/// region: us-central1
/// loadBalancingScheme: ""
/// target: ${producerServiceAttachment.id}
/// network: ${consumerNet.name}
/// ipAddress: ${consumerAddress.id}
/// allowPscGlobalAccess: true
/// noAutomateDnsZone: true
/// consumerNet:
/// type: gcp:compute:Network
/// name: consumer_net
/// properties:
/// name: consumer-net
/// autoCreateSubnetworks: false
/// consumerSubnet:
/// type: gcp:compute:Subnetwork
/// name: consumer_subnet
/// properties:
/// name: consumer-net
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${consumerNet.id}
/// consumerAddress:
/// type: gcp:compute:Address
/// name: consumer_address
/// properties:
/// name: website-ip-1
/// region: us-central1
/// subnetwork: ${consumerSubnet.id}
/// addressType: INTERNAL
/// producerNet:
/// type: gcp:compute:Network
/// name: producer_net
/// properties:
/// name: producer-net
/// autoCreateSubnetworks: false
/// producerSubnet:
/// type: gcp:compute:Subnetwork
/// name: producer_subnet
/// properties:
/// name: producer-net
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${producerNet.id}
/// pscProducerSubnet:
/// type: gcp:compute:Subnetwork
/// name: psc_producer_subnet
/// properties:
/// name: producer-psc-net
/// ipCidrRange: 10.1.0.0/16
/// region: us-central1
/// purpose: PRIVATE_SERVICE_CONNECT
/// network: ${producerNet.id}
/// producerServiceAttachment:
/// type: gcp:compute:ServiceAttachment
/// name: producer_service_attachment
/// properties:
/// name: producer-service
/// region: us-central1
/// description: A service attachment configured with Terraform
/// enableProxyProtocol: true
/// connectionPreference: ACCEPT_AUTOMATIC
/// natSubnets:
/// - ${pscProducerSubnet.name}
/// targetService: ${producerTargetService.id}
/// producerTargetService:
/// type: gcp:compute:ForwardingRule
/// name: producer_target_service
/// properties:
/// name: producer-forwarding-rule
/// region: us-central1
/// loadBalancingScheme: INTERNAL
/// backendService: ${producerServiceBackend.id}
/// allPorts: true
/// network: ${producerNet.name}
/// subnetwork: ${producerSubnet.name}
/// producerServiceBackend:
/// type: gcp:compute:RegionBackendService
/// name: producer_service_backend
/// properties:
/// name: producer-service-backend
/// region: us-central1
/// healthChecks: ${producerServiceHealthCheck.id}
/// producerServiceHealthCheck:
/// type: gcp:compute:HealthCheck
/// name: producer_service_health_check
/// properties:
/// name: producer-service-health-check
/// checkIntervalSec: 1
/// timeoutSec: 1
/// tcpHealthCheck:
/// port: '80'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Regional Steering
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.compute.Address("basic", {
/// name: "website-ip",
/// region: "us-central1",
/// });
/// const external = new gcp.compute.RegionBackendService("external", {
/// name: "service-backend",
/// region: "us-central1",
/// loadBalancingScheme: "EXTERNAL",
/// });
/// const externalForwardingRule = new gcp.compute.ForwardingRule("external", {
/// name: "external-forwarding-rule",
/// region: "us-central1",
/// ipAddress: basic.address,
/// backendService: external.selfLink,
/// loadBalancingScheme: "EXTERNAL",
/// });
/// const steering = new gcp.compute.ForwardingRule("steering", {
/// name: "steering-rule",
/// region: "us-central1",
/// ipAddress: basic.address,
/// backendService: external.selfLink,
/// loadBalancingScheme: "EXTERNAL",
/// sourceIpRanges: [
/// "34.121.88.0/24",
/// "35.187.239.137",
/// ],
/// }, {
/// dependsOn: [externalForwardingRule],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.compute.Address("basic",
/// name="website-ip",
/// region="us-central1")
/// external = gcp.compute.RegionBackendService("external",
/// name="service-backend",
/// region="us-central1",
/// load_balancing_scheme="EXTERNAL")
/// external_forwarding_rule = gcp.compute.ForwardingRule("external",
/// name="external-forwarding-rule",
/// region="us-central1",
/// ip_address=basic.address,
/// backend_service=external.self_link,
/// load_balancing_scheme="EXTERNAL")
/// steering = gcp.compute.ForwardingRule("steering",
/// name="steering-rule",
/// region="us-central1",
/// ip_address=basic.address,
/// backend_service=external.self_link,
/// load_balancing_scheme="EXTERNAL",
/// source_ip_ranges=[
/// "34.121.88.0/24",
/// "35.187.239.137",
/// ],
/// opts = pulumi.ResourceOptions(depends_on=[external_forwarding_rule]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = new Gcp.Compute.Address("basic", new()
/// {
/// Name = "website-ip",
/// Region = "us-central1",
/// });
///
/// var external = new Gcp.Compute.RegionBackendService("external", new()
/// {
/// Name = "service-backend",
/// Region = "us-central1",
/// LoadBalancingScheme = "EXTERNAL",
/// });
///
/// var externalForwardingRule = new Gcp.Compute.ForwardingRule("external", new()
/// {
/// Name = "external-forwarding-rule",
/// Region = "us-central1",
/// IpAddress = basic.IPAddress,
/// BackendService = external.SelfLink,
/// LoadBalancingScheme = "EXTERNAL",
/// });
///
/// var steering = new Gcp.Compute.ForwardingRule("steering", new()
/// {
/// Name = "steering-rule",
/// Region = "us-central1",
/// IpAddress = basic.IPAddress,
/// BackendService = external.SelfLink,
/// LoadBalancingScheme = "EXTERNAL",
/// SourceIpRanges = new[]
/// {
/// "34.121.88.0/24",
/// "35.187.239.137",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// externalForwardingRule,
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
/// basic, err := compute.NewAddress(ctx, "basic", &compute.AddressArgs{
/// Name:   pulumi.String("website-ip"),
/// Region: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// external, err := compute.NewRegionBackendService(ctx, "external", &compute.RegionBackendServiceArgs{
/// Name:                pulumi.String("service-backend"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// externalForwardingRule, err := compute.NewForwardingRule(ctx, "external", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("external-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           basic.Address,
/// BackendService:      external.SelfLink,
/// LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewForwardingRule(ctx, "steering", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("steering-rule"),
/// Region:              pulumi.String("us-central1"),
/// IpAddress:           basic.Address,
/// BackendService:      external.SelfLink,
/// LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// SourceIpRanges: pulumi.StringArray{
/// pulumi.String("34.121.88.0/24"),
/// pulumi.String("35.187.239.137"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// externalForwardingRule,
/// }))
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var basic = new Address("basic", AddressArgs.builder()
/// .name("website-ip")
/// .region("us-central1")
/// .build());
///
/// var external = new RegionBackendService("external", RegionBackendServiceArgs.builder()
/// .name("service-backend")
/// .region("us-central1")
/// .loadBalancingScheme("EXTERNAL")
/// .build());
///
/// var externalForwardingRule = new ForwardingRule("externalForwardingRule", ForwardingRuleArgs.builder()
/// .name("external-forwarding-rule")
/// .region("us-central1")
/// .ipAddress(basic.address())
/// .backendService(external.selfLink())
/// .loadBalancingScheme("EXTERNAL")
/// .build());
///
/// var steering = new ForwardingRule("steering", ForwardingRuleArgs.builder()
/// .name("steering-rule")
/// .region("us-central1")
/// .ipAddress(basic.address())
/// .backendService(external.selfLink())
/// .loadBalancingScheme("EXTERNAL")
/// .sourceIpRanges(
/// "34.121.88.0/24",
/// "35.187.239.137")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(externalForwardingRule)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// steering:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: steering-rule
/// region: us-central1
/// ipAddress: ${basic.address}
/// backendService: ${external.selfLink}
/// loadBalancingScheme: EXTERNAL
/// sourceIpRanges:
/// - 34.121.88.0/24
/// - 35.187.239.137
/// options:
/// dependsOn:
/// - ${externalForwardingRule}
/// basic:
/// type: gcp:compute:Address
/// properties:
/// name: website-ip
/// region: us-central1
/// external:
/// type: gcp:compute:RegionBackendService
/// properties:
/// name: service-backend
/// region: us-central1
/// loadBalancingScheme: EXTERNAL
/// externalForwardingRule:
/// type: gcp:compute:ForwardingRule
/// name: external
/// properties:
/// name: external-forwarding-rule
/// region: us-central1
/// ipAddress: ${basic.address}
/// backendService: ${external.selfLink}
/// loadBalancingScheme: EXTERNAL
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Forwarding Rule Internallb Ipv6
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hc = new gcp.compute.HealthCheck("hc", {
/// name: "check-ilb-ipv6-backend",
/// checkIntervalSec: 1,
/// timeoutSec: 1,
/// tcpHealthCheck: {
/// port: 80,
/// },
/// });
/// const backend = new gcp.compute.RegionBackendService("backend", {
/// name: "ilb-ipv6-backend",
/// region: "us-central1",
/// healthChecks: hc.id,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
/// name: "net-ipv6",
/// autoCreateSubnetworks: false,
/// enableUlaInternalIpv6: true,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "subnet-internal-ipv6",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// stackType: "IPV4_IPV6",
/// ipv6AccessType: "INTERNAL",
/// network: defaultNetwork.id,
/// });
/// // Forwarding rule for Internal Load Balancing
/// const _default = new gcp.compute.ForwardingRule("default", {
/// name: "ilb-ipv6-forwarding-rule",
/// region: "us-central1",
/// loadBalancingScheme: "INTERNAL",
/// backendService: backend.id,
/// allPorts: true,
/// network: defaultNetwork.name,
/// subnetwork: defaultSubnetwork.name,
/// ipVersion: "IPV6",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hc = gcp.compute.HealthCheck("hc",
/// name="check-ilb-ipv6-backend",
/// check_interval_sec=1,
/// timeout_sec=1,
/// tcp_health_check={
/// "port": 80,
/// })
/// backend = gcp.compute.RegionBackendService("backend",
/// name="ilb-ipv6-backend",
/// region="us-central1",
/// health_checks=hc.id)
/// default_network = gcp.compute.Network("default",
/// name="net-ipv6",
/// auto_create_subnetworks=False,
/// enable_ula_internal_ipv6=True)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="subnet-internal-ipv6",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// stack_type="IPV4_IPV6",
/// ipv6_access_type="INTERNAL",
/// network=default_network.id)
/// # Forwarding rule for Internal Load Balancing
/// default = gcp.compute.ForwardingRule("default",
/// name="ilb-ipv6-forwarding-rule",
/// region="us-central1",
/// load_balancing_scheme="INTERNAL",
/// backend_service=backend.id,
/// all_ports=True,
/// network=default_network.name,
/// subnetwork=default_subnetwork.name,
/// ip_version="IPV6")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hc = new Gcp.Compute.HealthCheck("hc", new()
/// {
/// Name = "check-ilb-ipv6-backend",
/// CheckIntervalSec = 1,
/// TimeoutSec = 1,
/// TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
/// {
/// Port = 80,
/// },
/// });
///
/// var backend = new Gcp.Compute.RegionBackendService("backend", new()
/// {
/// Name = "ilb-ipv6-backend",
/// Region = "us-central1",
/// HealthChecks = hc.Id,
/// });
///
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "net-ipv6",
/// AutoCreateSubnetworks = false,
/// EnableUlaInternalIpv6 = true,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "subnet-internal-ipv6",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// StackType = "IPV4_IPV6",
/// Ipv6AccessType = "INTERNAL",
/// Network = defaultNetwork.Id,
/// });
///
/// // Forwarding rule for Internal Load Balancing
/// var @default = new Gcp.Compute.ForwardingRule("default", new()
/// {
/// Name = "ilb-ipv6-forwarding-rule",
/// Region = "us-central1",
/// LoadBalancingScheme = "INTERNAL",
/// BackendService = backend.Id,
/// AllPorts = true,
/// Network = defaultNetwork.Name,
/// Subnetwork = defaultSubnetwork.Name,
/// IpVersion = "IPV6",
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
/// hc, err := compute.NewHealthCheck(ctx, "hc", &compute.HealthCheckArgs{
/// Name:             pulumi.String("check-ilb-ipv6-backend"),
/// CheckIntervalSec: pulumi.Int(1),
/// TimeoutSec:       pulumi.Int(1),
/// TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// Port: pulumi.Int(80),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// Name:         pulumi.String("ilb-ipv6-backend"),
/// Region:       pulumi.String("us-central1"),
/// HealthChecks: hc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("net-ipv6"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// EnableUlaInternalIpv6: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:           pulumi.String("subnet-internal-ipv6"),
/// IpCidrRange:    pulumi.String("10.0.0.0/16"),
/// Region:         pulumi.String("us-central1"),
/// StackType:      pulumi.String("IPV4_IPV6"),
/// Ipv6AccessType: pulumi.String("INTERNAL"),
/// Network:        defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Forwarding rule for Internal Load Balancing
/// _, err = compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// Name:                pulumi.String("ilb-ipv6-forwarding-rule"),
/// Region:              pulumi.String("us-central1"),
/// LoadBalancingScheme: pulumi.String("INTERNAL"),
/// BackendService:      backend.ID(),
/// AllPorts:            pulumi.Bool(true),
/// Network:             defaultNetwork.Name,
/// Subnetwork:          defaultSubnetwork.Name,
/// IpVersion:           pulumi.String("IPV6"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
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
/// var hc = new HealthCheck("hc", HealthCheckArgs.builder()
/// .name("check-ilb-ipv6-backend")
/// .checkIntervalSec(1)
/// .timeoutSec(1)
/// .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
/// .port(80)
/// .build())
/// .build());
///
/// var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
/// .name("ilb-ipv6-backend")
/// .region("us-central1")
/// .healthChecks(hc.id())
/// .build());
///
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("net-ipv6")
/// .autoCreateSubnetworks(false)
/// .enableUlaInternalIpv6(true)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("subnet-internal-ipv6")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .stackType("IPV4_IPV6")
/// .ipv6AccessType("INTERNAL")
/// .network(defaultNetwork.id())
/// .build());
///
/// // Forwarding rule for Internal Load Balancing
/// var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
/// .name("ilb-ipv6-forwarding-rule")
/// .region("us-central1")
/// .loadBalancingScheme("INTERNAL")
/// .backendService(backend.id())
/// .allPorts(true)
/// .network(defaultNetwork.name())
/// .subnetwork(defaultSubnetwork.name())
/// .ipVersion("IPV6")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Forwarding rule for Internal Load Balancing
/// default:
/// type: gcp:compute:ForwardingRule
/// properties:
/// name: ilb-ipv6-forwarding-rule
/// region: us-central1
/// loadBalancingScheme: INTERNAL
/// backendService: ${backend.id}
/// allPorts: true
/// network: ${defaultNetwork.name}
/// subnetwork: ${defaultSubnetwork.name}
/// ipVersion: IPV6
/// backend:
/// type: gcp:compute:RegionBackendService
/// properties:
/// name: ilb-ipv6-backend
/// region: us-central1
/// healthChecks: ${hc.id}
/// hc:
/// type: gcp:compute:HealthCheck
/// properties:
/// name: check-ilb-ipv6-backend
/// checkIntervalSec: 1
/// timeoutSec: 1
/// tcpHealthCheck:
/// port: '80'
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: net-ipv6
/// autoCreateSubnetworks: false
/// enableUlaInternalIpv6: true
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: subnet-internal-ipv6
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// stackType: IPV4_IPV6
/// ipv6AccessType: INTERNAL
/// network: ${defaultNetwork.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ForwardingRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/forwardingRules/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ForwardingRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default projects/{{project}}/regions/{{region}}/forwardingRules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default {{name}}
/// ```
class ForwardingRule extends CustomResource {
  /// The <span pulumi-lang-nodejs="`ports`" pulumi-lang-dotnet="`Ports`" pulumi-lang-go="`ports`" pulumi-lang-python="`ports`" pulumi-lang-yaml="`ports`" pulumi-lang-java="`ports`">`ports`</span>, `portRange`, and `allPorts` fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  /// The `allPorts` field has the following limitations:
  /// * It requires that the forwarding rule `IPProtocol` be TCP, UDP, SCTP, or
  /// L3_DEFAULT.
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal and external protocol forwarding.
  /// * Set this field to true to allow packets addressed to any port or packets
  /// lacking destination port information (for example, UDP fragments after the
  /// first fragment) to be forwarded to the backends configured with this
  /// forwarding rule. The L3_DEFAULT protocol requires `allPorts` be set to
  /// true.
  late final Output<bool?> allPorts;

  /// This field is used along with the <span pulumi-lang-nodejs="`backendService`" pulumi-lang-dotnet="`BackendService`" pulumi-lang-go="`backendService`" pulumi-lang-python="`backend_service`" pulumi-lang-yaml="`backendService`" pulumi-lang-java="`backendService`">`backend_service`</span> field for
  /// internal load balancing or with the <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> field for internal
  /// TargetInstance.
  /// If the field is set to `TRUE`, clients can access ILB from all
  /// regions.
  /// Otherwise only allows access from clients in the same region as the
  /// internal load balancer.
  late final Output<bool?> allowGlobalAccess;

  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  late final Output<bool?> allowPscGlobalAccess;

  /// Identifies the backend service to which the forwarding rule sends traffic.
  /// Required for Internal TCP/UDP Load Balancing and Network Load Balancing;
  /// must be omitted for all other load balancer types.
  late final Output<String?> backendService;

  /// [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  late final Output<String> baseForwardingRule;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final Output<int> forwardingRuleId;

  /// IP address for which this forwarding rule accepts traffic. When a client
  /// sends traffic to this IP address, the forwarding rule directs the traffic
  /// to the referenced <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> or `backendService`.
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
  /// The forwarding rule's <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> or `backendService`,
  /// and in most cases, also the `loadBalancingScheme`, determine the
  /// type of IP address that you can use. For detailed information, see
  /// [IP address
  /// specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// When reading an `IPAddress`, the API always returns the IP
  /// address number.
  late final Output<String> ipAddress;

  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_FORWARDING_RULE_CREATION mode.
  /// Use one of the following formats to specify a sub-PDP when creating an
  /// IPv6 NetLB forwarding rule using BYOIP:
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  late final Output<String?> ipCollection;

  /// The IP protocol to which this rule applies.
  /// For protocol forwarding, valid
  /// options are `TCP`, `UDP`, `ESP`,
  /// `AH`, `SCTP`, `ICMP` and
  /// `L3_DEFAULT`.
  /// The valid IP protocols are different for different load balancing products
  /// as described in [Load balancing
  /// features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  /// A Forwarding Rule with protocol L3_DEFAULT can attach with target instance or
  /// backend service with UNSPECIFIED protocol.
  /// A forwarding rule with "L3_DEFAULT" IPProtocal cannot be attached to a backend service with TCP or UDP.
  /// Possible values are: `TCP`, `UDP`, `ESP`, `AH`, `SCTP`, `ICMP`, `L3_DEFAULT`.
  late final Output<String> ipProtocol;

  /// The IP address version that will be used by this forwarding rule.
  /// Valid options are IPV4 and IPV6.
  /// If not set, the IPv4 address will be used by default.
  /// Possible values are: `IPV4`, `IPV6`.
  late final Output<String> ipVersion;

  /// Indicates whether or not this load balancer can be used as a collector for
  /// packet mirroring. To prevent mirroring loops, instances behind this
  /// load balancer will not have their traffic mirrored even if a
  /// `PacketMirroring` rule applies to them.
  /// This can only be set to true for load balancers that have their
  /// `loadBalancingScheme` set to `INTERNAL`.
  late final Output<bool?> isMirroringCollector;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this forwarding rule.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Specifies the forwarding rule type.
  /// Note that an empty string value (`""`) is also supported for some use
  /// cases, for example PSC (private service connection) regional forwarding
  /// rules.
  /// For more information about forwarding rules, refer to
  /// [Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL`, `INTERNAL_MANAGED`.
  late final Output<String?> loadBalancingScheme;

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

  /// The <span pulumi-lang-nodejs="`ports`" pulumi-lang-dotnet="`Ports`" pulumi-lang-go="`ports`" pulumi-lang-python="`ports`" pulumi-lang-yaml="`ports`" pulumi-lang-java="`ports`">`ports`</span>, `portRange`, and `allPorts` fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
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
  late final Output<String> portRange;

  /// The <span pulumi-lang-nodejs="`ports`" pulumi-lang-dotnet="`Ports`" pulumi-lang-go="`ports`" pulumi-lang-python="`ports`" pulumi-lang-yaml="`ports`" pulumi-lang-java="`ports`">`ports`</span>, `portRange`, and `allPorts` fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  /// The <span pulumi-lang-nodejs="`ports`" pulumi-lang-dotnet="`Ports`" pulumi-lang-go="`ports`" pulumi-lang-python="`ports`" pulumi-lang-yaml="`ports`" pulumi-lang-java="`ports`">`ports`</span> field has the following limitations:
  /// * It requires that the forwarding rule `IPProtocol` be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal protocol forwarding.
  /// * You can specify a list of up to five ports by number, separated by
  /// commas. The ports can be contiguous or discontiguous.
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same `[IPAddress, IPProtocol]` pair if they share at least one port
  /// number.
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same `[IPAddress, IPProtocol]` pair if
  /// they share at least one port number.
  /// @pattern: \d+(?:-\d+)?
  late final Output<List<String>?> ports;

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
  late final Output<bool?> recreateClosedPsc;

  /// A reference to the region where the regional forwarding rule resides.
  /// This field is not applicable to global forwarding rules.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Service Directory resources to register this forwarding rule with.
  /// Currently, only supports a single Service Directory resource.
  /// Structure is documented below.
  late final Output<ForwardingRuleServiceDirectoryRegistrations>
      serviceDirectoryRegistrations;

  /// An optional prefix to the service name for this Forwarding Rule.
  /// If specified, will be the first label of the fully qualified service
  /// name.
  /// The label must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the label must be 1-63 characters long and match the
  /// regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// This field is only used for INTERNAL load balancing.
  late final Output<String?> serviceLabel;

  /// The internal fully qualified service name for this Forwarding Rule.
  /// This field is only used for INTERNAL load balancing.
  late final Output<String> serviceName;

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
  /// For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.
  late final Output<String?> target;

  ForwardingRule(
    String name, {
    ForwardingRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/forwardingRule:ForwardingRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allPorts = Output.createUnknown<bool?>();
    this.allowGlobalAccess = Output.createUnknown<bool?>();
    this.allowPscGlobalAccess = Output.createUnknown<bool?>();
    this.backendService = Output.createUnknown<String?>();
    this.baseForwardingRule = Output.createUnknown<String>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.forwardingRuleId = Output.createUnknown<int>();
    this.ipAddress = Output.createUnknown<String>();
    this.ipCollection = Output.createUnknown<String?>();
    this.ipProtocol = Output.createUnknown<String>();
    this.ipVersion = Output.createUnknown<String>();
    this.isMirroringCollector = Output.createUnknown<bool?>();
    this.labelFingerprint = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.loadBalancingScheme = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.networkTier = Output.createUnknown<String>();
    this.noAutomateDnsZone = Output.createUnknown<bool?>();
    this.portRange = Output.createUnknown<String>();
    this.ports = Output.createUnknown<List<String>?>();
    this.project = Output.createUnknown<String>();
    this.pscConnectionId = Output.createUnknown<String>();
    this.pscConnectionStatus = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.recreateClosedPsc = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.serviceDirectoryRegistrations =
        Output.createUnknown<ForwardingRuleServiceDirectoryRegistrations>();
    this.serviceLabel = Output.createUnknown<String?>();
    this.serviceName = Output.createUnknown<String>();
    this.sourceIpRanges = Output.createUnknown<List<String>?>();
    this.subnetwork = Output.createUnknown<String>();
    this.target = Output.createUnknown<String?>();
  }
}
