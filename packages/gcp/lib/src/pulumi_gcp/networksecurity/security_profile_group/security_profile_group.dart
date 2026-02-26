import 'package:pulumi/pulumi.dart';
import 'security_profile_group_args.dart';

/// A security profile group defines a container for security profiles.
///
///
/// To get more information about SecurityProfileGroup, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/organizations.locations.securityProfileGroups)
/// * How-to Guides
/// * [Create and manage security profile groups](https://cloud.google.com/firewall/docs/configure-security-profile-groups)
/// * [Security profile groups overview](https://cloud.google.com/firewall/docs/about-security-profile-groups)
///
/// ## Example Usage
///
/// ### Network Security Security Profile Group Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const securityProfile = new gcp.networksecurity.SecurityProfile("security_profile", {
/// name: "sec-profile",
/// type: "THREAT_PREVENTION",
/// parent: "organizations/123456789",
/// location: "global",
/// });
/// const _default = new gcp.networksecurity.SecurityProfileGroup("default", {
/// name: "sec-profile-group",
/// parent: "organizations/123456789",
/// description: "my description",
/// threatPreventionProfile: securityProfile.id,
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// security_profile = gcp.networksecurity.SecurityProfile("security_profile",
/// name="sec-profile",
/// type="THREAT_PREVENTION",
/// parent="organizations/123456789",
/// location="global")
/// default = gcp.networksecurity.SecurityProfileGroup("default",
/// name="sec-profile-group",
/// parent="organizations/123456789",
/// description="my description",
/// threat_prevention_profile=security_profile.id,
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
/// var securityProfile = new Gcp.NetworkSecurity.SecurityProfile("security_profile", new()
/// {
/// Name = "sec-profile",
/// Type = "THREAT_PREVENTION",
/// Parent = "organizations/123456789",
/// Location = "global",
/// });
///
/// var @default = new Gcp.NetworkSecurity.SecurityProfileGroup("default", new()
/// {
/// Name = "sec-profile-group",
/// Parent = "organizations/123456789",
/// Description = "my description",
/// ThreatPreventionProfile = securityProfile.Id,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// securityProfile, err := networksecurity.NewSecurityProfile(ctx, "security_profile", &networksecurity.SecurityProfileArgs{
/// Name:     pulumi.String("sec-profile"),
/// Type:     pulumi.String("THREAT_PREVENTION"),
/// Parent:   pulumi.String("organizations/123456789"),
/// Location: pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewSecurityProfileGroup(ctx, "default", &networksecurity.SecurityProfileGroupArgs{
/// Name:                    pulumi.String("sec-profile-group"),
/// Parent:                  pulumi.String("organizations/123456789"),
/// Description:             pulumi.String("my description"),
/// ThreatPreventionProfile: securityProfile.ID(),
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
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroup;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroupArgs;
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
/// var securityProfile = new SecurityProfile("securityProfile", SecurityProfileArgs.builder()
/// .name("sec-profile")
/// .type("THREAT_PREVENTION")
/// .parent("organizations/123456789")
/// .location("global")
/// .build());
///
/// var default_ = new SecurityProfileGroup("default", SecurityProfileGroupArgs.builder()
/// .name("sec-profile-group")
/// .parent("organizations/123456789")
/// .description("my description")
/// .threatPreventionProfile(securityProfile.id())
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:SecurityProfileGroup
/// properties:
/// name: sec-profile-group
/// parent: organizations/123456789
/// description: my description
/// threatPreventionProfile: ${securityProfile.id}
/// labels:
/// foo: bar
/// securityProfile:
/// type: gcp:networksecurity:SecurityProfile
/// name: security_profile
/// properties:
/// name: sec-profile
/// type: THREAT_PREVENTION
/// parent: organizations/123456789
/// location: global
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Security Profile Group Mirroring
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
/// name: "network",
/// autoCreateSubnetworks: false,
/// });
/// const defaultMirroringDeploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("default", {
/// mirroringDeploymentGroupId: "deployment-group",
/// location: "global",
/// network: _default.id,
/// });
/// const defaultMirroringEndpointGroup = new gcp.networksecurity.MirroringEndpointGroup("default", {
/// mirroringEndpointGroupId: "endpoint-group",
/// location: "global",
/// mirroringDeploymentGroup: defaultMirroringDeploymentGroup.id,
/// });
/// const defaultSecurityProfile = new gcp.networksecurity.SecurityProfile("default", {
/// name: "sec-profile",
/// parent: "organizations/123456789",
/// description: "my description",
/// type: "CUSTOM_MIRRORING",
/// customMirroringProfile: {
/// mirroringEndpointGroup: defaultMirroringEndpointGroup.id,
/// },
/// });
/// const defaultSecurityProfileGroup = new gcp.networksecurity.SecurityProfileGroup("default", {
/// name: "sec-profile-group",
/// parent: "organizations/123456789",
/// description: "my description",
/// customMirroringProfile: defaultSecurityProfile.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
/// name="network",
/// auto_create_subnetworks=False)
/// default_mirroring_deployment_group = gcp.networksecurity.MirroringDeploymentGroup("default",
/// mirroring_deployment_group_id="deployment-group",
/// location="global",
/// network=default.id)
/// default_mirroring_endpoint_group = gcp.networksecurity.MirroringEndpointGroup("default",
/// mirroring_endpoint_group_id="endpoint-group",
/// location="global",
/// mirroring_deployment_group=default_mirroring_deployment_group.id)
/// default_security_profile = gcp.networksecurity.SecurityProfile("default",
/// name="sec-profile",
/// parent="organizations/123456789",
/// description="my description",
/// type="CUSTOM_MIRRORING",
/// custom_mirroring_profile={
/// "mirroring_endpoint_group": default_mirroring_endpoint_group.id,
/// })
/// default_security_profile_group = gcp.networksecurity.SecurityProfileGroup("default",
/// name="sec-profile-group",
/// parent="organizations/123456789",
/// description="my description",
/// custom_mirroring_profile=default_security_profile.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultMirroringDeploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("default", new()
/// {
/// MirroringDeploymentGroupId = "deployment-group",
/// Location = "global",
/// Network = @default.Id,
/// });
///
/// var defaultMirroringEndpointGroup = new Gcp.NetworkSecurity.MirroringEndpointGroup("default", new()
/// {
/// MirroringEndpointGroupId = "endpoint-group",
/// Location = "global",
/// MirroringDeploymentGroup = defaultMirroringDeploymentGroup.Id,
/// });
///
/// var defaultSecurityProfile = new Gcp.NetworkSecurity.SecurityProfile("default", new()
/// {
/// Name = "sec-profile",
/// Parent = "organizations/123456789",
/// Description = "my description",
/// Type = "CUSTOM_MIRRORING",
/// CustomMirroringProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileCustomMirroringProfileArgs
/// {
/// MirroringEndpointGroup = defaultMirroringEndpointGroup.Id,
/// },
/// });
///
/// var defaultSecurityProfileGroup = new Gcp.NetworkSecurity.SecurityProfileGroup("default", new()
/// {
/// Name = "sec-profile-group",
/// Parent = "organizations/123456789",
/// Description = "my description",
/// CustomMirroringProfile = defaultSecurityProfile.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultMirroringDeploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "default", &networksecurity.MirroringDeploymentGroupArgs{
/// MirroringDeploymentGroupId: pulumi.String("deployment-group"),
/// Location:                   pulumi.String("global"),
/// Network:                    _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultMirroringEndpointGroup, err := networksecurity.NewMirroringEndpointGroup(ctx, "default", &networksecurity.MirroringEndpointGroupArgs{
/// MirroringEndpointGroupId: pulumi.String("endpoint-group"),
/// Location:                 pulumi.String("global"),
/// MirroringDeploymentGroup: defaultMirroringDeploymentGroup.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityProfile, err := networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// Name:        pulumi.String("sec-profile"),
/// Parent:      pulumi.String("organizations/123456789"),
/// Description: pulumi.String("my description"),
/// Type:        pulumi.String("CUSTOM_MIRRORING"),
/// CustomMirroringProfile: &networksecurity.SecurityProfileCustomMirroringProfileArgs{
/// MirroringEndpointGroup: defaultMirroringEndpointGroup.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewSecurityProfileGroup(ctx, "default", &networksecurity.SecurityProfileGroupArgs{
/// Name:                   pulumi.String("sec-profile-group"),
/// Parent:                 pulumi.String("organizations/123456789"),
/// Description:            pulumi.String("my description"),
/// CustomMirroringProfile: defaultSecurityProfile.ID(),
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
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroup;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileCustomMirroringProfileArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroup;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroupArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultMirroringDeploymentGroup = new MirroringDeploymentGroup("defaultMirroringDeploymentGroup", MirroringDeploymentGroupArgs.builder()
/// .mirroringDeploymentGroupId("deployment-group")
/// .location("global")
/// .network(default_.id())
/// .build());
///
/// var defaultMirroringEndpointGroup = new MirroringEndpointGroup("defaultMirroringEndpointGroup", MirroringEndpointGroupArgs.builder()
/// .mirroringEndpointGroupId("endpoint-group")
/// .location("global")
/// .mirroringDeploymentGroup(defaultMirroringDeploymentGroup.id())
/// .build());
///
/// var defaultSecurityProfile = new SecurityProfile("defaultSecurityProfile", SecurityProfileArgs.builder()
/// .name("sec-profile")
/// .parent("organizations/123456789")
/// .description("my description")
/// .type("CUSTOM_MIRRORING")
/// .customMirroringProfile(SecurityProfileCustomMirroringProfileArgs.builder()
/// .mirroringEndpointGroup(defaultMirroringEndpointGroup.id())
/// .build())
/// .build());
///
/// var defaultSecurityProfileGroup = new SecurityProfileGroup("defaultSecurityProfileGroup", SecurityProfileGroupArgs.builder()
/// .name("sec-profile-group")
/// .parent("organizations/123456789")
/// .description("my description")
/// .customMirroringProfile(defaultSecurityProfile.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: network
/// autoCreateSubnetworks: false
/// defaultMirroringDeploymentGroup:
/// type: gcp:networksecurity:MirroringDeploymentGroup
/// name: default
/// properties:
/// mirroringDeploymentGroupId: deployment-group
/// location: global
/// network: ${default.id}
/// defaultMirroringEndpointGroup:
/// type: gcp:networksecurity:MirroringEndpointGroup
/// name: default
/// properties:
/// mirroringEndpointGroupId: endpoint-group
/// location: global
/// mirroringDeploymentGroup: ${defaultMirroringDeploymentGroup.id}
/// defaultSecurityProfile:
/// type: gcp:networksecurity:SecurityProfile
/// name: default
/// properties:
/// name: sec-profile
/// parent: organizations/123456789
/// description: my description
/// type: CUSTOM_MIRRORING
/// customMirroringProfile:
/// mirroringEndpointGroup: ${defaultMirroringEndpointGroup.id}
/// defaultSecurityProfileGroup:
/// type: gcp:networksecurity:SecurityProfileGroup
/// name: default
/// properties:
/// name: sec-profile-group
/// parent: organizations/123456789
/// description: my description
/// customMirroringProfile: ${defaultSecurityProfile.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Security Profile Group Intercept
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
/// name: "network",
/// autoCreateSubnetworks: false,
/// });
/// const defaultInterceptDeploymentGroup = new gcp.networksecurity.InterceptDeploymentGroup("default", {
/// interceptDeploymentGroupId: "deployment-group",
/// location: "global",
/// network: _default.id,
/// });
/// const defaultInterceptEndpointGroup = new gcp.networksecurity.InterceptEndpointGroup("default", {
/// interceptEndpointGroupId: "endpoint-group",
/// location: "global",
/// interceptDeploymentGroup: defaultInterceptDeploymentGroup.id,
/// });
/// const defaultSecurityProfile = new gcp.networksecurity.SecurityProfile("default", {
/// name: "sec-profile",
/// parent: "organizations/123456789",
/// description: "my description",
/// type: "CUSTOM_INTERCEPT",
/// customInterceptProfile: {
/// interceptEndpointGroup: defaultInterceptEndpointGroup.id,
/// },
/// });
/// const defaultSecurityProfileGroup = new gcp.networksecurity.SecurityProfileGroup("default", {
/// name: "sec-profile-group",
/// parent: "organizations/123456789",
/// description: "my description",
/// customInterceptProfile: defaultSecurityProfile.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
/// name="network",
/// auto_create_subnetworks=False)
/// default_intercept_deployment_group = gcp.networksecurity.InterceptDeploymentGroup("default",
/// intercept_deployment_group_id="deployment-group",
/// location="global",
/// network=default.id)
/// default_intercept_endpoint_group = gcp.networksecurity.InterceptEndpointGroup("default",
/// intercept_endpoint_group_id="endpoint-group",
/// location="global",
/// intercept_deployment_group=default_intercept_deployment_group.id)
/// default_security_profile = gcp.networksecurity.SecurityProfile("default",
/// name="sec-profile",
/// parent="organizations/123456789",
/// description="my description",
/// type="CUSTOM_INTERCEPT",
/// custom_intercept_profile={
/// "intercept_endpoint_group": default_intercept_endpoint_group.id,
/// })
/// default_security_profile_group = gcp.networksecurity.SecurityProfileGroup("default",
/// name="sec-profile-group",
/// parent="organizations/123456789",
/// description="my description",
/// custom_intercept_profile=default_security_profile.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultInterceptDeploymentGroup = new Gcp.NetworkSecurity.InterceptDeploymentGroup("default", new()
/// {
/// InterceptDeploymentGroupId = "deployment-group",
/// Location = "global",
/// Network = @default.Id,
/// });
///
/// var defaultInterceptEndpointGroup = new Gcp.NetworkSecurity.InterceptEndpointGroup("default", new()
/// {
/// InterceptEndpointGroupId = "endpoint-group",
/// Location = "global",
/// InterceptDeploymentGroup = defaultInterceptDeploymentGroup.Id,
/// });
///
/// var defaultSecurityProfile = new Gcp.NetworkSecurity.SecurityProfile("default", new()
/// {
/// Name = "sec-profile",
/// Parent = "organizations/123456789",
/// Description = "my description",
/// Type = "CUSTOM_INTERCEPT",
/// CustomInterceptProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileCustomInterceptProfileArgs
/// {
/// InterceptEndpointGroup = defaultInterceptEndpointGroup.Id,
/// },
/// });
///
/// var defaultSecurityProfileGroup = new Gcp.NetworkSecurity.SecurityProfileGroup("default", new()
/// {
/// Name = "sec-profile-group",
/// Parent = "organizations/123456789",
/// Description = "my description",
/// CustomInterceptProfile = defaultSecurityProfile.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultInterceptDeploymentGroup, err := networksecurity.NewInterceptDeploymentGroup(ctx, "default", &networksecurity.InterceptDeploymentGroupArgs{
/// InterceptDeploymentGroupId: pulumi.String("deployment-group"),
/// Location:                   pulumi.String("global"),
/// Network:                    _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultInterceptEndpointGroup, err := networksecurity.NewInterceptEndpointGroup(ctx, "default", &networksecurity.InterceptEndpointGroupArgs{
/// InterceptEndpointGroupId: pulumi.String("endpoint-group"),
/// Location:                 pulumi.String("global"),
/// InterceptDeploymentGroup: defaultInterceptDeploymentGroup.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityProfile, err := networksecurity.NewSecurityProfile(ctx, "default", &networksecurity.SecurityProfileArgs{
/// Name:        pulumi.String("sec-profile"),
/// Parent:      pulumi.String("organizations/123456789"),
/// Description: pulumi.String("my description"),
/// Type:        pulumi.String("CUSTOM_INTERCEPT"),
/// CustomInterceptProfile: &networksecurity.SecurityProfileCustomInterceptProfileArgs{
/// InterceptEndpointGroup: defaultInterceptEndpointGroup.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewSecurityProfileGroup(ctx, "default", &networksecurity.SecurityProfileGroupArgs{
/// Name:                   pulumi.String("sec-profile-group"),
/// Parent:                 pulumi.String("organizations/123456789"),
/// Description:            pulumi.String("my description"),
/// CustomInterceptProfile: defaultSecurityProfile.ID(),
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
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroupArgs;
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroup;
/// import com.pulumi.gcp.networksecurity.InterceptEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileCustomInterceptProfileArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroup;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroupArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultInterceptDeploymentGroup = new InterceptDeploymentGroup("defaultInterceptDeploymentGroup", InterceptDeploymentGroupArgs.builder()
/// .interceptDeploymentGroupId("deployment-group")
/// .location("global")
/// .network(default_.id())
/// .build());
///
/// var defaultInterceptEndpointGroup = new InterceptEndpointGroup("defaultInterceptEndpointGroup", InterceptEndpointGroupArgs.builder()
/// .interceptEndpointGroupId("endpoint-group")
/// .location("global")
/// .interceptDeploymentGroup(defaultInterceptDeploymentGroup.id())
/// .build());
///
/// var defaultSecurityProfile = new SecurityProfile("defaultSecurityProfile", SecurityProfileArgs.builder()
/// .name("sec-profile")
/// .parent("organizations/123456789")
/// .description("my description")
/// .type("CUSTOM_INTERCEPT")
/// .customInterceptProfile(SecurityProfileCustomInterceptProfileArgs.builder()
/// .interceptEndpointGroup(defaultInterceptEndpointGroup.id())
/// .build())
/// .build());
///
/// var defaultSecurityProfileGroup = new SecurityProfileGroup("defaultSecurityProfileGroup", SecurityProfileGroupArgs.builder()
/// .name("sec-profile-group")
/// .parent("organizations/123456789")
/// .description("my description")
/// .customInterceptProfile(defaultSecurityProfile.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: network
/// autoCreateSubnetworks: false
/// defaultInterceptDeploymentGroup:
/// type: gcp:networksecurity:InterceptDeploymentGroup
/// name: default
/// properties:
/// interceptDeploymentGroupId: deployment-group
/// location: global
/// network: ${default.id}
/// defaultInterceptEndpointGroup:
/// type: gcp:networksecurity:InterceptEndpointGroup
/// name: default
/// properties:
/// interceptEndpointGroupId: endpoint-group
/// location: global
/// interceptDeploymentGroup: ${defaultInterceptDeploymentGroup.id}
/// defaultSecurityProfile:
/// type: gcp:networksecurity:SecurityProfile
/// name: default
/// properties:
/// name: sec-profile
/// parent: organizations/123456789
/// description: my description
/// type: CUSTOM_INTERCEPT
/// customInterceptProfile:
/// interceptEndpointGroup: ${defaultInterceptEndpointGroup.id}
/// defaultSecurityProfileGroup:
/// type: gcp:networksecurity:SecurityProfileGroup
/// name: default
/// properties:
/// name: sec-profile-group
/// parent: organizations/123456789
/// description: my description
/// customInterceptProfile: ${defaultSecurityProfile.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Security Profile Group Url Filtering
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const securityProfile = new gcp.networksecurity.SecurityProfile("security_profile", {
/// name: "sec-profile",
/// location: "global",
/// type: "URL_FILTERING",
/// urlFilteringProfile: {
/// urlFilters: [{
/// priority: 1,
/// filteringAction: "ALLOW",
/// urls: [
/// "*example.com",
/// "*about.example.com",
/// "*help.example.com",
/// ],
/// }],
/// },
/// parent: "organizations/123456789",
/// });
/// const _default = new gcp.networksecurity.SecurityProfileGroup("default", {
/// name: "sec-profile-group",
/// parent: "organizations/123456789",
/// description: "my description",
/// urlFilteringProfile: securityProfile.id,
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// security_profile = gcp.networksecurity.SecurityProfile("security_profile",
/// name="sec-profile",
/// location="global",
/// type="URL_FILTERING",
/// url_filtering_profile={
/// "url_filters": [{
/// "priority": 1,
/// "filtering_action": "ALLOW",
/// "urls": [
/// "*example.com",
/// "*about.example.com",
/// "*help.example.com",
/// ],
/// }],
/// },
/// parent="organizations/123456789")
/// default = gcp.networksecurity.SecurityProfileGroup("default",
/// name="sec-profile-group",
/// parent="organizations/123456789",
/// description="my description",
/// url_filtering_profile=security_profile.id,
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
/// var securityProfile = new Gcp.NetworkSecurity.SecurityProfile("security_profile", new()
/// {
/// Name = "sec-profile",
/// Location = "global",
/// Type = "URL_FILTERING",
/// UrlFilteringProfile = new Gcp.NetworkSecurity.Inputs.SecurityProfileUrlFilteringProfileArgs
/// {
/// UrlFilters = new[]
/// {
/// new Gcp.NetworkSecurity.Inputs.SecurityProfileUrlFilteringProfileUrlFilterArgs
/// {
/// Priority = 1,
/// FilteringAction = "ALLOW",
/// Urls = new[]
/// {
/// "*example.com",
/// "*about.example.com",
/// "*help.example.com",
/// },
/// },
/// },
/// },
/// Parent = "organizations/123456789",
/// });
///
/// var @default = new Gcp.NetworkSecurity.SecurityProfileGroup("default", new()
/// {
/// Name = "sec-profile-group",
/// Parent = "organizations/123456789",
/// Description = "my description",
/// UrlFilteringProfile = securityProfile.Id,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// securityProfile, err := networksecurity.NewSecurityProfile(ctx, "security_profile", &networksecurity.SecurityProfileArgs{
/// Name:     pulumi.String("sec-profile"),
/// Location: pulumi.String("global"),
/// Type:     pulumi.String("URL_FILTERING"),
/// UrlFilteringProfile: &networksecurity.SecurityProfileUrlFilteringProfileArgs{
/// UrlFilters: networksecurity.SecurityProfileUrlFilteringProfileUrlFilterArray{
/// &networksecurity.SecurityProfileUrlFilteringProfileUrlFilterArgs{
/// Priority:        pulumi.Int(1),
/// FilteringAction: pulumi.String("ALLOW"),
/// Urls: pulumi.StringArray{
/// pulumi.String("*example.com"),
/// pulumi.String("*about.example.com"),
/// pulumi.String("*help.example.com"),
/// },
/// },
/// },
/// },
/// Parent: pulumi.String("organizations/123456789"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewSecurityProfileGroup(ctx, "default", &networksecurity.SecurityProfileGroupArgs{
/// Name:                pulumi.String("sec-profile-group"),
/// Parent:              pulumi.String("organizations/123456789"),
/// Description:         pulumi.String("my description"),
/// UrlFilteringProfile: securityProfile.ID(),
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
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SecurityProfileUrlFilteringProfileArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroup;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroupArgs;
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
/// var securityProfile = new SecurityProfile("securityProfile", SecurityProfileArgs.builder()
/// .name("sec-profile")
/// .location("global")
/// .type("URL_FILTERING")
/// .urlFilteringProfile(SecurityProfileUrlFilteringProfileArgs.builder()
/// .urlFilters(SecurityProfileUrlFilteringProfileUrlFilterArgs.builder()
/// .priority(1)
/// .filteringAction("ALLOW")
/// .urls(
/// "*example.com",
/// "*about.example.com",
/// "*help.example.com")
/// .build())
/// .build())
/// .parent("organizations/123456789")
/// .build());
///
/// var default_ = new SecurityProfileGroup("default", SecurityProfileGroupArgs.builder()
/// .name("sec-profile-group")
/// .parent("organizations/123456789")
/// .description("my description")
/// .urlFilteringProfile(securityProfile.id())
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:SecurityProfileGroup
/// properties:
/// name: sec-profile-group
/// parent: organizations/123456789
/// description: my description
/// urlFilteringProfile: ${securityProfile.id}
/// labels:
/// foo: bar
/// securityProfile:
/// type: gcp:networksecurity:SecurityProfile
/// name: security_profile
/// properties:
/// name: sec-profile
/// location: global
/// type: URL_FILTERING
/// urlFilteringProfile:
/// urlFilters:
/// - priority: 1
/// filteringAction: ALLOW
/// urls:
/// - '*example.com'
/// - '*about.example.com'
/// - '*help.example.com'
/// parent: organizations/123456789
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// SecurityProfileGroup can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/securityProfileGroups/{{name}}`
///
/// When using the `pulumi import` command, SecurityProfileGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/securityProfileGroup:SecurityProfileGroup default {{parent}}/locations/{{location}}/securityProfileGroups/{{name}}
/// ```
class SecurityProfileGroup extends CustomResource {
  /// Time the security profile group was created in UTC.
  late final Output<String> createTime;

  /// Reference to a SecurityProfile with the CustomIntercept configuration.
  late final Output<String?> customInterceptProfile;

  /// Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  late final Output<String?> customMirroringProfile;

  /// An optional description of the profile. The Max length is 512 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an up-to-date
  /// value before proceeding.
  late final Output<String> etag;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the security profile group.
  /// The default value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String?> location;

  /// The name of the security profile group resource.
  late final Output<String> name;

  /// The name of the parent this security profile group belongs to.
  /// Format: organizations/{organization_id}.
  late final Output<String?> parent;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  late final Output<String?> threatPreventionProfile;

  /// Time the security profile group was updated in UTC.
  late final Output<String> updateTime;

  /// Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  late final Output<String?> urlFilteringProfile;

  SecurityProfileGroup(
    String name, {
    SecurityProfileGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/securityProfileGroup:SecurityProfileGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customInterceptProfile =
        registerOutput<String?>('customInterceptProfile');
    this.customMirroringProfile =
        registerOutput<String?>('customMirroringProfile');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.threatPreventionProfile =
        registerOutput<String?>('threatPreventionProfile');
    this.updateTime = registerOutput<String>('updateTime');
    this.urlFilteringProfile = registerOutput<String?>('urlFilteringProfile');
  }
}
