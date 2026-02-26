import 'package:pulumi/pulumi.dart';
import '../hosting_custom_domain_cert/hosting_custom_domain_cert.dart';
import '../hosting_custom_domain_issue/hosting_custom_domain_issue.dart';
import '../hosting_custom_domain_required_dns_update/hosting_custom_domain_required_dns_update.dart';
import 'hosting_custom_domain_args.dart';

/// Manages Custom Domains for Firebase Hosting. Custom Domains link your
/// domain names with Firebase Hosting sites, allowing Hosting to serve content
/// on those domain names.
///
/// To get more information about CustomDomain, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/projects.sites.customDomains)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Customdomain Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingCustomDomain("default", {
/// project: "my-project-name",
/// siteId: "site-id",
/// customDomain: "custom.domain.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingCustomDomain("default",
/// project="my-project-name",
/// site_id="site-id",
/// custom_domain="custom.domain.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Firebase.HostingCustomDomain("default", new()
/// {
/// Project = "my-project-name",
/// SiteId = "site-id",
/// CustomDomain = "custom.domain.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := firebase.NewHostingCustomDomain(ctx, "default", &firebase.HostingCustomDomainArgs{
/// Project:      pulumi.String("my-project-name"),
/// SiteId:       pulumi.String("site-id"),
/// CustomDomain: pulumi.String("custom.domain.com"),
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
/// import com.pulumi.gcp.firebase.HostingCustomDomain;
/// import com.pulumi.gcp.firebase.HostingCustomDomainArgs;
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
/// var default_ = new HostingCustomDomain("default", HostingCustomDomainArgs.builder()
/// .project("my-project-name")
/// .siteId("site-id")
/// .customDomain("custom.domain.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:firebase:HostingCustomDomain
/// properties:
/// project: my-project-name
/// siteId: site-id
/// customDomain: custom.domain.com
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Firebasehosting Customdomain Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
/// project: "my-project-name",
/// siteId: "site-id-full",
/// });
/// const defaultHostingCustomDomain = new gcp.firebase.HostingCustomDomain("default", {
/// project: "my-project-name",
/// siteId: _default.siteId,
/// customDomain: "source.domain.com",
/// certPreference: "GROUPED",
/// redirectTarget: "destination.domain.com",
/// waitDnsVerification: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
/// project="my-project-name",
/// site_id="site-id-full")
/// default_hosting_custom_domain = gcp.firebase.HostingCustomDomain("default",
/// project="my-project-name",
/// site_id=default.site_id,
/// custom_domain="source.domain.com",
/// cert_preference="GROUPED",
/// redirect_target="destination.domain.com",
/// wait_dns_verification=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Firebase.HostingSite("default", new()
/// {
/// Project = "my-project-name",
/// SiteId = "site-id-full",
/// });
///
/// var defaultHostingCustomDomain = new Gcp.Firebase.HostingCustomDomain("default", new()
/// {
/// Project = "my-project-name",
/// SiteId = @default.SiteId,
/// CustomDomain = "source.domain.com",
/// CertPreference = "GROUPED",
/// RedirectTarget = "destination.domain.com",
/// WaitDnsVerification = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// Project: pulumi.String("my-project-name"),
/// SiteId:  pulumi.String("site-id-full"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewHostingCustomDomain(ctx, "default", &firebase.HostingCustomDomainArgs{
/// Project:             pulumi.String("my-project-name"),
/// SiteId:              _default.SiteId,
/// CustomDomain:        pulumi.String("source.domain.com"),
/// CertPreference:      pulumi.String("GROUPED"),
/// RedirectTarget:      pulumi.String("destination.domain.com"),
/// WaitDnsVerification: pulumi.Bool(false),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.firebase.HostingCustomDomain;
/// import com.pulumi.gcp.firebase.HostingCustomDomainArgs;
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
/// var default_ = new HostingSite("default", HostingSiteArgs.builder()
/// .project("my-project-name")
/// .siteId("site-id-full")
/// .build());
///
/// var defaultHostingCustomDomain = new HostingCustomDomain("defaultHostingCustomDomain", HostingCustomDomainArgs.builder()
/// .project("my-project-name")
/// .siteId(default_.siteId())
/// .customDomain("source.domain.com")
/// .certPreference("GROUPED")
/// .redirectTarget("destination.domain.com")
/// .waitDnsVerification(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:firebase:HostingSite
/// properties:
/// project: my-project-name
/// siteId: site-id-full
/// defaultHostingCustomDomain:
/// type: gcp:firebase:HostingCustomDomain
/// name: default
/// properties:
/// project: my-project-name
/// siteId: ${default.siteId}
/// customDomain: source.domain.com
/// certPreference: GROUPED
/// redirectTarget: destination.domain.com
/// waitDnsVerification: false
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Firebasehosting Customdomain Cloud Run
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
/// project: "my-project-name",
/// siteId: "site-id",
/// });
/// const defaultService = new gcp.cloudrunv2.Service("default", {
/// project: "my-project-name",
/// name: "cloud-run-service-via-hosting",
/// location: "us-central1",
/// ingress: "INGRESS_TRAFFIC_ALL",
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// },
/// deletionProtection: true,
/// });
/// const defaultHostingVersion = new gcp.firebase.HostingVersion("default", {
/// siteId: _default.siteId,
/// config: {
/// rewrites: [{
/// glob: "/hello/**",
/// run: {
/// serviceId: defaultService.name,
/// region: defaultService.location,
/// },
/// }],
/// },
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
/// siteId: _default.siteId,
/// versionName: defaultHostingVersion.name,
/// message: "Cloud Run Integration",
/// });
/// const defaultHostingCustomDomain = new gcp.firebase.HostingCustomDomain("default", {
/// project: "my-project-name",
/// siteId: _default.siteId,
/// customDomain: "run.custom.domain.com",
/// waitDnsVerification: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
/// project="my-project-name",
/// site_id="site-id")
/// default_service = gcp.cloudrunv2.Service("default",
/// project="my-project-name",
/// name="cloud-run-service-via-hosting",
/// location="us-central1",
/// ingress="INGRESS_TRAFFIC_ALL",
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// },
/// deletion_protection=True)
/// default_hosting_version = gcp.firebase.HostingVersion("default",
/// site_id=default.site_id,
/// config={
/// "rewrites": [{
/// "glob": "/hello/**",
/// "run": {
/// "service_id": default_service.name,
/// "region": default_service.location,
/// },
/// }],
/// })
/// default_hosting_release = gcp.firebase.HostingRelease("default",
/// site_id=default.site_id,
/// version_name=default_hosting_version.name,
/// message="Cloud Run Integration")
/// default_hosting_custom_domain = gcp.firebase.HostingCustomDomain("default",
/// project="my-project-name",
/// site_id=default.site_id,
/// custom_domain="run.custom.domain.com",
/// wait_dns_verification=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Firebase.HostingSite("default", new()
/// {
/// Project = "my-project-name",
/// SiteId = "site-id",
/// });
///
/// var defaultService = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Project = "my-project-name",
/// Name = "cloud-run-service-via-hosting",
/// Location = "us-central1",
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// },
/// },
/// },
/// DeletionProtection = true,
/// });
///
/// var defaultHostingVersion = new Gcp.Firebase.HostingVersion("default", new()
/// {
/// SiteId = @default.SiteId,
/// Config = new Gcp.Firebase.Inputs.HostingVersionConfigArgs
/// {
/// Rewrites = new[]
/// {
/// new Gcp.Firebase.Inputs.HostingVersionConfigRewriteArgs
/// {
/// Glob = "/hello/**",
/// Run = new Gcp.Firebase.Inputs.HostingVersionConfigRewriteRunArgs
/// {
/// ServiceId = defaultService.Name,
/// Region = defaultService.Location,
/// },
/// },
/// },
/// },
/// });
///
/// var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
/// {
/// SiteId = @default.SiteId,
/// VersionName = defaultHostingVersion.Name,
/// Message = "Cloud Run Integration",
/// });
///
/// var defaultHostingCustomDomain = new Gcp.Firebase.HostingCustomDomain("default", new()
/// {
/// Project = "my-project-name",
/// SiteId = @default.SiteId,
/// CustomDomain = "run.custom.domain.com",
/// WaitDnsVerification = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// Project: pulumi.String("my-project-name"),
/// SiteId:  pulumi.String("site-id"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultService, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Project:  pulumi.String("my-project-name"),
/// Name:     pulumi.String("cloud-run-service-via-hosting"),
/// Location: pulumi.String("us-central1"),
/// Ingress:  pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// },
/// },
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// defaultHostingVersion, err := firebase.NewHostingVersion(ctx, "default", &firebase.HostingVersionArgs{
/// SiteId: _default.SiteId,
/// Config: &firebase.HostingVersionConfigArgs{
/// Rewrites: firebase.HostingVersionConfigRewriteArray{
/// &firebase.HostingVersionConfigRewriteArgs{
/// Glob: pulumi.String("/hello/**"),
/// Run: &firebase.HostingVersionConfigRewriteRunArgs{
/// ServiceId: defaultService.Name,
/// Region:    defaultService.Location,
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// SiteId:      _default.SiteId,
/// VersionName: defaultHostingVersion.Name,
/// Message:     pulumi.String("Cloud Run Integration"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewHostingCustomDomain(ctx, "default", &firebase.HostingCustomDomainArgs{
/// Project:             pulumi.String("my-project-name"),
/// SiteId:              _default.SiteId,
/// CustomDomain:        pulumi.String("run.custom.domain.com"),
/// WaitDnsVerification: pulumi.Bool(false),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.firebase.HostingVersion;
/// import com.pulumi.gcp.firebase.HostingVersionArgs;
/// import com.pulumi.gcp.firebase.inputs.HostingVersionConfigArgs;
/// import com.pulumi.gcp.firebase.HostingRelease;
/// import com.pulumi.gcp.firebase.HostingReleaseArgs;
/// import com.pulumi.gcp.firebase.HostingCustomDomain;
/// import com.pulumi.gcp.firebase.HostingCustomDomainArgs;
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
/// var default_ = new HostingSite("default", HostingSiteArgs.builder()
/// .project("my-project-name")
/// .siteId("site-id")
/// .build());
///
/// var defaultService = new Service("defaultService", ServiceArgs.builder()
/// .project("my-project-name")
/// .name("cloud-run-service-via-hosting")
/// .location("us-central1")
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .build())
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// var defaultHostingVersion = new HostingVersion("defaultHostingVersion", HostingVersionArgs.builder()
/// .siteId(default_.siteId())
/// .config(HostingVersionConfigArgs.builder()
/// .rewrites(HostingVersionConfigRewriteArgs.builder()
/// .glob("/hello/**")
/// .run(HostingVersionConfigRewriteRunArgs.builder()
/// .serviceId(defaultService.name())
/// .region(defaultService.location())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
/// .siteId(default_.siteId())
/// .versionName(defaultHostingVersion.name())
/// .message("Cloud Run Integration")
/// .build());
///
/// var defaultHostingCustomDomain = new HostingCustomDomain("defaultHostingCustomDomain", HostingCustomDomainArgs.builder()
/// .project("my-project-name")
/// .siteId(default_.siteId())
/// .customDomain("run.custom.domain.com")
/// .waitDnsVerification(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:firebase:HostingSite
/// properties:
/// project: my-project-name
/// siteId: site-id
/// defaultService:
/// type: gcp:cloudrunv2:Service
/// name: default
/// properties:
/// project: my-project-name
/// name: cloud-run-service-via-hosting
/// location: us-central1
/// ingress: INGRESS_TRAFFIC_ALL
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// deletionProtection: true
/// defaultHostingVersion:
/// type: gcp:firebase:HostingVersion
/// name: default
/// properties:
/// siteId: ${default.siteId}
/// config:
/// rewrites:
/// - glob: /hello/**
/// run:
/// serviceId: ${defaultService.name}
/// region: ${defaultService.location}
/// defaultHostingRelease:
/// type: gcp:firebase:HostingRelease
/// name: default
/// properties:
/// siteId: ${default.siteId}
/// versionName: ${defaultHostingVersion.name}
/// message: Cloud Run Integration
/// defaultHostingCustomDomain:
/// type: gcp:firebase:HostingCustomDomain
/// name: default
/// properties:
/// project: my-project-name
/// siteId: ${default.siteId}
/// customDomain: run.custom.domain.com
/// waitDnsVerification: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CustomDomain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/sites/{{site_id}}/customDomains/{{custom_domain}}`
///
/// * `sites/{{site_id}}/customDomains/{{custom_domain}}`
///
/// * `{{project}}/{{site_id}}/{{custom_domain}}`
///
/// * `{{site_id}}/{{custom_domain}}`
///
/// When using the `pulumi import` command, CustomDomain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default projects/{{project}}/sites/{{site_id}}/customDomains/{{custom_domain}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default sites/{{site_id}}/customDomains/{{custom_domain}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default {{project}}/{{site_id}}/{{custom_domain}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingCustomDomain:HostingCustomDomain default {{site_id}}/{{custom_domain}}
/// ```
class HostingCustomDomain extends CustomResource {
  /// A field that lets you specify which SSL certificate type Hosting creates
  /// for your domain name. Spark plan `CustomDomain`s only have access to the
  /// `GROUPED` cert type, while Blaze plan can select any option.
  /// Possible values are: `GROUPED`, `PROJECT_GROUPED`, `DEDICATED`.
  late final Output<String> certPreference;

  /// The SSL certificate Hosting has for this `CustomDomain`'s domain name.
  /// For new `CustomDomain`s, this often represents Hosting's intent to create
  /// a certificate, rather than an actual cert. Check the <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> field for
  /// more.
  /// Structure is documented below.
  late final Output<List<HostingCustomDomainCert>> certs;

  /// The `CustomDomain`'s create time.
  late final Output<String> createTime;

  /// The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  late final Output<String> customDomain;

  /// The time the `CustomDomain` was deleted; null for `CustomDomains` that
  /// haven't been deleted. Deleted `CustomDomains` persist for approximately 30
  /// days, after which time Hosting removes them completely.
  late final Output<String> deleteTime;

  /// A string that represents the current state of the `CustomDomain` and
  /// allows you to confirm its initial state in requests that would modify it.
  late final Output<String> etag;

  /// The minimum time before a soft-deleted `CustomDomain` is completely removed
  /// from Hosting; null for `CustomDomains` that haven't been deleted.
  late final Output<String> expireTime;

  /// The host state of your domain name. Host state is determined by checking each
  /// IP address associated with your domain name to see if it's serving
  /// Hosting content.
  /// HOST_UNHOSTED:
  /// Your `CustomDomain`'s domain name isn't associated with any IP addresses.
  /// HOST_UNREACHABLE:
  /// Your `CustomDomain`'s domain name can't be reached. Hosting services' DNS
  /// queries to find your domain name's IP addresses resulted in errors. See
  /// your `CustomDomain`'s <span pulumi-lang-nodejs="`issues`" pulumi-lang-dotnet="`Issues`" pulumi-lang-go="`issues`" pulumi-lang-python="`issues`" pulumi-lang-yaml="`issues`" pulumi-lang-java="`issues`">`issues`</span> field for more details.
  /// HOST_MISMATCH:
  /// Your `CustomDomain`'s domain name has IP addresses that don't ultimately
  /// resolve to Hosting.
  /// HOST_CONFLICT:
  /// Your `CustomDomain`'s domain name has IP addresses that resolve to both
  /// Hosting and other services. To ensure consistent results, remove `A` and
  /// `AAAA` records related to non-Hosting services.
  /// HOST_ACTIVE:
  /// All requests against your `CustomDomain`'s domain name are served by
  /// Hosting. If the `CustomDomain`'s `OwnershipState` is also `ACTIVE`, Hosting
  /// serves your Hosting Site's content on the domain name.
  late final Output<String> hostState;

  /// A set of errors Hosting systems encountered when trying to establish
  /// Hosting's ability to serve secure content for your domain name. Resolve
  /// these issues to ensure your `CustomDomain` behaves properly.
  /// Structure is documented below.
  late final Output<List<HostingCustomDomainIssue>> issues;

  /// The fully-qualified name of the `CustomDomain`.
  late final Output<String> name;

  /// The ownership state of your domain name. Ownership is determined at a
  /// Firebase project level, and established by adding `TXT` records to your
  /// domain name's DNS records.
  /// Ownership cascades to subdomains. Granting a project ownership of `foo.com`
  /// also grants that project ownership over `bar.foo.com`, unless you add
  /// specific `TXT` records to `bar.foo.com` that grant a different project
  /// ownership.
  /// If your `CustomDomain` is in an `OwnershipState` other than
  /// `OWNERSHIP_ACTIVE` for more than 30 days and it hasn't been updated in at
  /// least 30 days, Hosting's ownership systems delete the `CustomDomain`.
  /// OWNERSHIP_MISSING:
  /// Your `CustomDomain`'s domain name has no Hosting-related ownership records;
  /// no Firebase project has permission to act on the domain name's behalf.
  /// OWNERSHIP_UNREACHABLE:
  /// Your `CustomDomain`'s domain name can't be reached. Hosting services' DNS
  /// queries to find your domain name's ownership records resulted in errors.
  /// See your `CustomDomain`'s <span pulumi-lang-nodejs="`issues`" pulumi-lang-dotnet="`Issues`" pulumi-lang-go="`issues`" pulumi-lang-python="`issues`" pulumi-lang-yaml="`issues`" pulumi-lang-java="`issues`">`issues`</span> field for more details.
  /// OWNERSHIP_MISMATCH:
  /// Your `CustomDomain`'s domain name is owned by another Firebase project.
  /// Remove the conflicting `TXT` records and replace them with project-specific
  /// records for your current Firebase project.
  /// OWNERSHIP_CONFLICT:
  /// Your `CustomDomain`'s domain name has conflicting `TXT` records that
  /// indicate ownership by both your current Firebase project and another
  /// project. Remove the other project's ownership records to grant the current
  /// project ownership.
  /// OWNERSHIP_PENDING:
  /// Your `CustomDomain`'s DNS records are configured correctly. Hosting will
  /// transfer ownership of your domain to this `CustomDomain` within 24 hours.
  /// OWNERSHIP_ACTIVE:
  /// Your `CustomDomain`'s domain name has `TXT` records that grant its project
  /// permission to act on its behalf.
  late final Output<String> ownershipState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// if true, indicates that Hosting's systems are attempting to
  /// make the `CustomDomain`'s state match your preferred state. This is most
  /// frequently <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> when initially provisioning a `CustomDomain` or when creating
  /// a new SSL certificate to match an updated <span pulumi-lang-nodejs="`certPreference`" pulumi-lang-dotnet="`CertPreference`" pulumi-lang-go="`certPreference`" pulumi-lang-python="`cert_preference`" pulumi-lang-yaml="`certPreference`" pulumi-lang-java="`certPreference`">`cert_preference`</span>
  late final Output<bool> reconciling;

  /// A domain name that this CustomDomain should direct traffic towards. If
  /// specified, Hosting will respond to requests against this CustomDomain
  /// with an HTTP 301 code, and route traffic to the specified <span pulumi-lang-nodejs="`redirectTarget`" pulumi-lang-dotnet="`RedirectTarget`" pulumi-lang-go="`redirectTarget`" pulumi-lang-python="`redirect_target`" pulumi-lang-yaml="`redirectTarget`" pulumi-lang-java="`redirectTarget`">`redirect_target`</span>
  /// instead.
  late final Output<String?> redirectTarget;

  /// A set of updates you should make to the domain name's DNS records to
  /// let Hosting serve secure content on its behalf.
  /// Structure is documented below.
  late final Output<List<HostingCustomDomainRequiredDnsUpdate>>
      requiredDnsUpdates;

  /// The ID of the site in which to create this custom domain association.
  late final Output<String> siteId;

  /// The last time the `CustomDomain` was updated.
  late final Output<String> updateTime;
  late final Output<bool?> waitDnsVerification;

  HostingCustomDomain(
    String name, {
    HostingCustomDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingCustomDomain:HostingCustomDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certPreference = registerOutput<String>('certPreference');
    this.certs = registerOutput<List<HostingCustomDomainCert>>('certs');
    this.createTime = registerOutput<String>('createTime');
    this.customDomain = registerOutput<String>('customDomain');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.hostState = registerOutput<String>('hostState');
    this.issues = registerOutput<List<HostingCustomDomainIssue>>('issues');
    this.name = registerOutput<String>('name');
    this.ownershipState = registerOutput<String>('ownershipState');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.redirectTarget = registerOutput<String?>('redirectTarget');
    this.requiredDnsUpdates =
        registerOutput<List<HostingCustomDomainRequiredDnsUpdate>>(
            'requiredDnsUpdates');
    this.siteId = registerOutput<String>('siteId');
    this.updateTime = registerOutput<String>('updateTime');
    this.waitDnsVerification = registerOutput<bool?>('waitDnsVerification');
  }
}
