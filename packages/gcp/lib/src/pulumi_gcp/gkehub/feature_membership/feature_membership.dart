import 'package:pulumi/pulumi.dart';
import '../feature_membership_configmanagement/feature_membership_configmanagement.dart';
import '../feature_membership_mesh/feature_membership_mesh.dart';
import '../feature_membership_policycontroller/feature_membership_policycontroller.dart';
import 'feature_membership_args.dart';

/// Contains information about a GKEHub Feature Memberships. Feature Memberships configure GKEHub Features that apply to specific memberships rather than the project as a whole. The<span pulumi-lang-nodejs=" googleGkeHub " pulumi-lang-dotnet=" GoogleGkeHub " pulumi-lang-go=" googleGkeHub " pulumi-lang-python=" google_gke_hub " pulumi-lang-yaml=" googleGkeHub " pulumi-lang-java=" googleGkeHub "> google_gke_hub </span>is the Fleet API.
///
/// ## Example Usage
///
/// ### Config Management With Config Sync Auto-Upgrades And Without Git/OCI
///
/// With [Config Sync auto-upgrades](https://cloud.devsite.corp.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/upgrade-config-sync#auto-upgrade-config), Google assumes responsibility for automatically upgrading Config Sync versions
/// and overseeing the lifecycle of its components.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "configmanagement",
/// location: "global",
/// labels: {
/// foo: "bar",
/// },
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// configmanagement: {
/// management: "MANAGEMENT_AUTOMATIC",
/// configSync: {
/// enabled: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="configmanagement",
/// location="global",
/// labels={
/// "foo": "bar",
/// })
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// configmanagement={
/// "management": "MANAGEMENT_AUTOMATIC",
/// "config_sync": {
/// "enabled": True,
/// },
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "configmanagement",
/// Location = "global",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// Configmanagement = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementArgs
/// {
/// Management = "MANAGEMENT_AUTOMATIC",
/// ConfigSync = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncArgs
/// {
/// Enabled = true,
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("configmanagement"),
/// Location: pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:   pulumi.String("global"),
/// Feature:    feature.Name,
/// Membership: membership.MembershipId,
/// Configmanagement: &gkehub.FeatureMembershipConfigmanagementArgs{
/// Management: pulumi.String("MANAGEMENT_AUTOMATIC"),
/// ConfigSync: &gkehub.FeatureMembershipConfigmanagementConfigSyncArgs{
/// Enabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("configmanagement")
/// .location("global")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .configmanagement(FeatureMembershipConfigmanagementArgs.builder()
/// .management("MANAGEMENT_AUTOMATIC")
/// .configSync(FeatureMembershipConfigmanagementConfigSyncArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: configmanagement
/// location: global
/// labels:
/// foo: bar
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// configmanagement:
/// management: MANAGEMENT_AUTOMATIC
/// configSync:
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Config Management With Git
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "configmanagement",
/// location: "global",
/// labels: {
/// foo: "bar",
/// },
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// configmanagement: {
/// version: "1.19.0",
/// configSync: {
/// enabled: true,
/// git: {
/// syncRepo: "https://github.com/hashicorp/terraform",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="configmanagement",
/// location="global",
/// labels={
/// "foo": "bar",
/// })
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// configmanagement={
/// "version": "1.19.0",
/// "config_sync": {
/// "enabled": True,
/// "git": {
/// "sync_repo": "https://github.com/hashicorp/terraform",
/// },
/// },
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "configmanagement",
/// Location = "global",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// Configmanagement = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementArgs
/// {
/// Version = "1.19.0",
/// ConfigSync = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncArgs
/// {
/// Enabled = true,
/// Git = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncGitArgs
/// {
/// SyncRepo = "https://github.com/hashicorp/terraform",
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("configmanagement"),
/// Location: pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:   pulumi.String("global"),
/// Feature:    feature.Name,
/// Membership: membership.MembershipId,
/// Configmanagement: &gkehub.FeatureMembershipConfigmanagementArgs{
/// Version: pulumi.String("1.19.0"),
/// ConfigSync: &gkehub.FeatureMembershipConfigmanagementConfigSyncArgs{
/// Enabled: pulumi.Bool(true),
/// Git: &gkehub.FeatureMembershipConfigmanagementConfigSyncGitArgs{
/// SyncRepo: pulumi.String("https://github.com/hashicorp/terraform"),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncGitArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("configmanagement")
/// .location("global")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .configmanagement(FeatureMembershipConfigmanagementArgs.builder()
/// .version("1.19.0")
/// .configSync(FeatureMembershipConfigmanagementConfigSyncArgs.builder()
/// .enabled(true)
/// .git(FeatureMembershipConfigmanagementConfigSyncGitArgs.builder()
/// .syncRepo("https://github.com/hashicorp/terraform")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: configmanagement
/// location: global
/// labels:
/// foo: bar
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// configmanagement:
/// version: 1.19.0
/// configSync:
/// enabled: true
/// git:
/// syncRepo: https://github.com/hashicorp/terraform
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Config Management With OCI
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "configmanagement",
/// location: "global",
/// labels: {
/// foo: "bar",
/// },
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// configmanagement: {
/// version: "1.19.0",
/// configSync: {
/// enabled: true,
/// oci: {
/// syncRepo: "us-central1-docker.pkg.dev/sample-project/config-repo/config-sync-gke:latest",
/// policyDir: "config-connector",
/// syncWaitSecs: "20",
/// secretType: "gcpserviceaccount",
/// gcpServiceAccountEmail: "sa@project-id.iam.gserviceaccount.com",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="configmanagement",
/// location="global",
/// labels={
/// "foo": "bar",
/// })
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// configmanagement={
/// "version": "1.19.0",
/// "config_sync": {
/// "enabled": True,
/// "oci": {
/// "sync_repo": "us-central1-docker.pkg.dev/sample-project/config-repo/config-sync-gke:latest",
/// "policy_dir": "config-connector",
/// "sync_wait_secs": "20",
/// "secret_type": "gcpserviceaccount",
/// "gcp_service_account_email": "sa@project-id.iam.gserviceaccount.com",
/// },
/// },
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "configmanagement",
/// Location = "global",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// Configmanagement = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementArgs
/// {
/// Version = "1.19.0",
/// ConfigSync = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncArgs
/// {
/// Enabled = true,
/// Oci = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncOciArgs
/// {
/// SyncRepo = "us-central1-docker.pkg.dev/sample-project/config-repo/config-sync-gke:latest",
/// PolicyDir = "config-connector",
/// SyncWaitSecs = "20",
/// SecretType = "gcpserviceaccount",
/// GcpServiceAccountEmail = "sa@project-id.iam.gserviceaccount.com",
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("configmanagement"),
/// Location: pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:   pulumi.String("global"),
/// Feature:    feature.Name,
/// Membership: membership.MembershipId,
/// Configmanagement: &gkehub.FeatureMembershipConfigmanagementArgs{
/// Version: pulumi.String("1.19.0"),
/// ConfigSync: &gkehub.FeatureMembershipConfigmanagementConfigSyncArgs{
/// Enabled: pulumi.Bool(true),
/// Oci: &gkehub.FeatureMembershipConfigmanagementConfigSyncOciArgs{
/// SyncRepo:               pulumi.String("us-central1-docker.pkg.dev/sample-project/config-repo/config-sync-gke:latest"),
/// PolicyDir:              pulumi.String("config-connector"),
/// SyncWaitSecs:           pulumi.String("20"),
/// SecretType:             pulumi.String("gcpserviceaccount"),
/// GcpServiceAccountEmail: pulumi.String("sa@project-id.iam.gserviceaccount.com"),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncOciArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("configmanagement")
/// .location("global")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .configmanagement(FeatureMembershipConfigmanagementArgs.builder()
/// .version("1.19.0")
/// .configSync(FeatureMembershipConfigmanagementConfigSyncArgs.builder()
/// .enabled(true)
/// .oci(FeatureMembershipConfigmanagementConfigSyncOciArgs.builder()
/// .syncRepo("us-central1-docker.pkg.dev/sample-project/config-repo/config-sync-gke:latest")
/// .policyDir("config-connector")
/// .syncWaitSecs("20")
/// .secretType("gcpserviceaccount")
/// .gcpServiceAccountEmail("sa@project-id.iam.gserviceaccount.com")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: configmanagement
/// location: global
/// labels:
/// foo: bar
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// configmanagement:
/// version: 1.19.0
/// configSync:
/// enabled: true
/// oci:
/// syncRepo: us-central1-docker.pkg.dev/sample-project/config-repo/config-sync-gke:latest
/// policyDir: config-connector
/// syncWaitSecs: '20'
/// secretType: gcpserviceaccount
/// gcpServiceAccountEmail: sa@project-id.iam.gserviceaccount.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### Config Management With Deployment Override
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "configmanagement",
/// location: "global",
/// labels: {
/// foo: "bar",
/// },
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// configmanagement: {
/// version: "1.20.1",
/// configSync: {
/// enabled: true,
/// deploymentOverrides: [{
/// deploymentName: "reconciler-manager",
/// deploymentNamespace: "config-management-system",
/// containers: [{
/// containerName: "reconciler-manager",
/// cpuRequest: "100m",
/// memoryRequest: "64Mi",
/// cpuLimit: "250m",
/// memoryLimit: "128Mi",
/// }],
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="configmanagement",
/// location="global",
/// labels={
/// "foo": "bar",
/// })
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// configmanagement={
/// "version": "1.20.1",
/// "config_sync": {
/// "enabled": True,
/// "deployment_overrides": [{
/// "deployment_name": "reconciler-manager",
/// "deployment_namespace": "config-management-system",
/// "containers": [{
/// "container_name": "reconciler-manager",
/// "cpu_request": "100m",
/// "memory_request": "64Mi",
/// "cpu_limit": "250m",
/// "memory_limit": "128Mi",
/// }],
/// }],
/// },
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "configmanagement",
/// Location = "global",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// Configmanagement = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementArgs
/// {
/// Version = "1.20.1",
/// ConfigSync = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncArgs
/// {
/// Enabled = true,
/// DeploymentOverrides = new[]
/// {
/// new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideArgs
/// {
/// DeploymentName = "reconciler-manager",
/// DeploymentNamespace = "config-management-system",
/// Containers = new[]
/// {
/// new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainerArgs
/// {
/// ContainerName = "reconciler-manager",
/// CpuRequest = "100m",
/// MemoryRequest = "64Mi",
/// CpuLimit = "250m",
/// MemoryLimit = "128Mi",
/// },
/// },
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("configmanagement"),
/// Location: pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:   pulumi.String("global"),
/// Feature:    feature.Name,
/// Membership: membership.MembershipId,
/// Configmanagement: &gkehub.FeatureMembershipConfigmanagementArgs{
/// Version: pulumi.String("1.20.1"),
/// ConfigSync: &gkehub.FeatureMembershipConfigmanagementConfigSyncArgs{
/// Enabled: pulumi.Bool(true),
/// DeploymentOverrides: gkehub.FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideArray{
/// &gkehub.FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideArgs{
/// DeploymentName:      pulumi.String("reconciler-manager"),
/// DeploymentNamespace: pulumi.String("config-management-system"),
/// Containers: gkehub.FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainerArray{
/// &gkehub.FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainerArgs{
/// ContainerName: pulumi.String("reconciler-manager"),
/// CpuRequest:    pulumi.String("100m"),
/// MemoryRequest: pulumi.String("64Mi"),
/// CpuLimit:      pulumi.String("250m"),
/// MemoryLimit:   pulumi.String("128Mi"),
/// },
/// },
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("configmanagement")
/// .location("global")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .configmanagement(FeatureMembershipConfigmanagementArgs.builder()
/// .version("1.20.1")
/// .configSync(FeatureMembershipConfigmanagementConfigSyncArgs.builder()
/// .enabled(true)
/// .deploymentOverrides(FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideArgs.builder()
/// .deploymentName("reconciler-manager")
/// .deploymentNamespace("config-management-system")
/// .containers(FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainerArgs.builder()
/// .containerName("reconciler-manager")
/// .cpuRequest("100m")
/// .memoryRequest("64Mi")
/// .cpuLimit("250m")
/// .memoryLimit("128Mi")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: configmanagement
/// location: global
/// labels:
/// foo: bar
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// configmanagement:
/// version: 1.20.1
/// configSync:
/// enabled: true
/// deploymentOverrides:
/// - deploymentName: reconciler-manager
/// deploymentNamespace: config-management-system
/// containers:
/// - containerName: reconciler-manager
/// cpuRequest: 100m
/// memoryRequest: 64Mi
/// cpuLimit: 250m
/// memoryLimit: 128Mi
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Config Management With Regional Membership
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// location: "us-central1",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "configmanagement",
/// location: "global",
/// labels: {
/// foo: "bar",
/// },
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// membershipLocation: membership.location,
/// configmanagement: {
/// version: "1.19.0",
/// configSync: {
/// enabled: true,
/// git: {
/// syncRepo: "https://github.com/hashicorp/terraform",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// location="us-central1",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="configmanagement",
/// location="global",
/// labels={
/// "foo": "bar",
/// })
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// membership_location=membership.location,
/// configmanagement={
/// "version": "1.19.0",
/// "config_sync": {
/// "enabled": True,
/// "git": {
/// "sync_repo": "https://github.com/hashicorp/terraform",
/// },
/// },
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Location = "us-central1",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "configmanagement",
/// Location = "global",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// MembershipLocation = membership.Location,
/// Configmanagement = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementArgs
/// {
/// Version = "1.19.0",
/// ConfigSync = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncArgs
/// {
/// Enabled = true,
/// Git = new Gcp.GkeHub.Inputs.FeatureMembershipConfigmanagementConfigSyncGitArgs
/// {
/// SyncRepo = "https://github.com/hashicorp/terraform",
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Location:     pulumi.String("us-central1"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("configmanagement"),
/// Location: pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:           pulumi.String("global"),
/// Feature:            feature.Name,
/// Membership:         membership.MembershipId,
/// MembershipLocation: membership.Location,
/// Configmanagement: &gkehub.FeatureMembershipConfigmanagementArgs{
/// Version: pulumi.String("1.19.0"),
/// ConfigSync: &gkehub.FeatureMembershipConfigmanagementConfigSyncArgs{
/// Enabled: pulumi.Bool(true),
/// Git: &gkehub.FeatureMembershipConfigmanagementConfigSyncGitArgs{
/// SyncRepo: pulumi.String("https://github.com/hashicorp/terraform"),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipConfigmanagementConfigSyncGitArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .location("us-central1")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("configmanagement")
/// .location("global")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .membershipLocation(membership.location())
/// .configmanagement(FeatureMembershipConfigmanagementArgs.builder()
/// .version("1.19.0")
/// .configSync(FeatureMembershipConfigmanagementConfigSyncArgs.builder()
/// .enabled(true)
/// .git(FeatureMembershipConfigmanagementConfigSyncGitArgs.builder()
/// .syncRepo("https://github.com/hashicorp/terraform")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// location: us-central1
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: configmanagement
/// location: global
/// labels:
/// foo: bar
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// membershipLocation: ${membership.location}
/// configmanagement:
/// version: 1.19.0
/// configSync:
/// enabled: true
/// git:
/// syncRepo: https://github.com/hashicorp/terraform
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multi Cluster Service Discovery
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "multiclusterservicediscovery",
/// location: "global",
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature = gcp.gkehub.Feature("feature",
/// name="multiclusterservicediscovery",
/// location="global",
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
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "multiclusterservicediscovery",
/// Location = "global",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("multiclusterservicediscovery"),
/// Location: pulumi.String("global"),
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
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
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
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("multiclusterservicediscovery")
/// .location("global")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: multiclusterservicediscovery
/// location: global
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Service Mesh
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "servicemesh",
/// location: "global",
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// mesh: {
/// management: "MANAGEMENT_AUTOMATIC",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="servicemesh",
/// location="global")
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// mesh={
/// "management": "MANAGEMENT_AUTOMATIC",
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "servicemesh",
/// Location = "global",
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// Mesh = new Gcp.GkeHub.Inputs.FeatureMembershipMeshArgs
/// {
/// Management = "MANAGEMENT_AUTOMATIC",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("servicemesh"),
/// Location: pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:   pulumi.String("global"),
/// Feature:    feature.Name,
/// Membership: membership.MembershipId,
/// Mesh: &gkehub.FeatureMembershipMeshArgs{
/// Management: pulumi.String("MANAGEMENT_AUTOMATIC"),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipMeshArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("servicemesh")
/// .location("global")
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .mesh(FeatureMembershipMeshArgs.builder()
/// .management("MANAGEMENT_AUTOMATIC")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: servicemesh
/// location: global
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// mesh:
/// management: MANAGEMENT_AUTOMATIC
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Policy Controller With Minimal Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "policycontroller",
/// location: "global",
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// policycontroller: {
/// policyControllerHubConfig: {
/// installSpec: "INSTALL_SPEC_ENABLED",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="policycontroller",
/// location="global")
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// policycontroller={
/// "policy_controller_hub_config": {
/// "install_spec": "INSTALL_SPEC_ENABLED",
/// },
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "policycontroller",
/// Location = "global",
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// Policycontroller = new Gcp.GkeHub.Inputs.FeatureMembershipPolicycontrollerArgs
/// {
/// PolicyControllerHubConfig = new Gcp.GkeHub.Inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs
/// {
/// InstallSpec = "INSTALL_SPEC_ENABLED",
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("policycontroller"),
/// Location: pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:   pulumi.String("global"),
/// Feature:    feature.Name,
/// Membership: membership.MembershipId,
/// Policycontroller: &gkehub.FeatureMembershipPolicycontrollerArgs{
/// PolicyControllerHubConfig: &gkehub.FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs{
/// InstallSpec: pulumi.String("INSTALL_SPEC_ENABLED"),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipPolicycontrollerArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("policycontroller")
/// .location("global")
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .policycontroller(FeatureMembershipPolicycontrollerArgs.builder()
/// .policyControllerHubConfig(FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs.builder()
/// .installSpec("INSTALL_SPEC_ENABLED")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: policycontroller
/// location: global
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// policycontroller:
/// policyControllerHubConfig:
/// installSpec: INSTALL_SPEC_ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Policy Controller With Custom Configurations
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster = new gcp.container.Cluster("cluster", {
/// name: "my-cluster",
/// location: "us-central1-a",
/// initialNodeCount: 1,
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
/// membershipId: "my-membership",
/// endpoint: {
/// gkeCluster: {
/// resourceLink: pulumi.interpolate`//container.googleapis.com/${cluster.id}`,
/// },
/// },
/// });
/// const feature = new gcp.gkehub.Feature("feature", {
/// name: "policycontroller",
/// location: "global",
/// });
/// const featureMember = new gcp.gkehub.FeatureMembership("feature_member", {
/// location: "global",
/// feature: feature.name,
/// membership: membership.membershipId,
/// policycontroller: {
/// policyControllerHubConfig: {
/// installSpec: "INSTALL_SPEC_SUSPENDED",
/// policyContent: {
/// templateLibrary: {
/// installation: "NOT_INSTALLED",
/// },
/// },
/// constraintViolationLimit: 50,
/// auditIntervalSeconds: 120,
/// referentialRulesEnabled: true,
/// logDeniesEnabled: true,
/// mutationEnabled: true,
/// },
/// version: "1.17.0",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster = gcp.container.Cluster("cluster",
/// name="my-cluster",
/// location="us-central1-a",
/// initial_node_count=1)
/// membership = gcp.gkehub.Membership("membership",
/// membership_id="my-membership",
/// endpoint={
/// "gke_cluster": {
/// "resource_link": cluster.id.apply(lambda id: f"//container.googleapis.com/{id}"),
/// },
/// })
/// feature = gcp.gkehub.Feature("feature",
/// name="policycontroller",
/// location="global")
/// feature_member = gcp.gkehub.FeatureMembership("feature_member",
/// location="global",
/// feature=feature.name,
/// membership=membership.membership_id,
/// policycontroller={
/// "policy_controller_hub_config": {
/// "install_spec": "INSTALL_SPEC_SUSPENDED",
/// "policy_content": {
/// "template_library": {
/// "installation": "NOT_INSTALLED",
/// },
/// },
/// "constraint_violation_limit": 50,
/// "audit_interval_seconds": 120,
/// "referential_rules_enabled": True,
/// "log_denies_enabled": True,
/// "mutation_enabled": True,
/// },
/// "version": "1.17.0",
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
/// var cluster = new Gcp.Container.Cluster("cluster", new()
/// {
/// Name = "my-cluster",
/// Location = "us-central1-a",
/// InitialNodeCount = 1,
/// });
///
/// var membership = new Gcp.GkeHub.Membership("membership", new()
/// {
/// MembershipId = "my-membership",
/// Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
/// {
/// GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
/// {
/// ResourceLink = cluster.Id.Apply(id => $"//container.googleapis.com/{id}"),
/// },
/// },
/// });
///
/// var feature = new Gcp.GkeHub.Feature("feature", new()
/// {
/// Name = "policycontroller",
/// Location = "global",
/// });
///
/// var featureMember = new Gcp.GkeHub.FeatureMembership("feature_member", new()
/// {
/// Location = "global",
/// Feature = feature.Name,
/// Membership = membership.MembershipId,
/// Policycontroller = new Gcp.GkeHub.Inputs.FeatureMembershipPolicycontrollerArgs
/// {
/// PolicyControllerHubConfig = new Gcp.GkeHub.Inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs
/// {
/// InstallSpec = "INSTALL_SPEC_SUSPENDED",
/// PolicyContent = new Gcp.GkeHub.Inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentArgs
/// {
/// TemplateLibrary = new Gcp.GkeHub.Inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs
/// {
/// Installation = "NOT_INSTALLED",
/// },
/// },
/// ConstraintViolationLimit = 50,
/// AuditIntervalSeconds = 120,
/// ReferentialRulesEnabled = true,
/// LogDeniesEnabled = true,
/// MutationEnabled = true,
/// },
/// Version = "1.17.0",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := container.NewCluster(ctx, "cluster", &container.ClusterArgs{
/// Name:             pulumi.String("my-cluster"),
/// Location:         pulumi.String("us-central1-a"),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// MembershipId: pulumi.String("my-membership"),
/// Endpoint: &gkehub.MembershipEndpointArgs{
/// GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// ResourceLink: cluster.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// feature, err := gkehub.NewFeature(ctx, "feature", &gkehub.FeatureArgs{
/// Name:     pulumi.String("policycontroller"),
/// Location: pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gkehub.NewFeatureMembership(ctx, "feature_member", &gkehub.FeatureMembershipArgs{
/// Location:   pulumi.String("global"),
/// Feature:    feature.Name,
/// Membership: membership.MembershipId,
/// Policycontroller: &gkehub.FeatureMembershipPolicycontrollerArgs{
/// PolicyControllerHubConfig: &gkehub.FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs{
/// InstallSpec: pulumi.String("INSTALL_SPEC_SUSPENDED"),
/// PolicyContent: &gkehub.FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentArgs{
/// TemplateLibrary: &gkehub.FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs{
/// Installation: pulumi.String("NOT_INSTALLED"),
/// },
/// },
/// ConstraintViolationLimit: pulumi.Int(50),
/// AuditIntervalSeconds:     pulumi.Int(120),
/// ReferentialRulesEnabled:  pulumi.Bool(true),
/// LogDeniesEnabled:         pulumi.Bool(true),
/// MutationEnabled:          pulumi.Bool(true),
/// },
/// Version: pulumi.String("1.17.0"),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.Feature;
/// import com.pulumi.gcp.gkehub.FeatureArgs;
/// import com.pulumi.gcp.gkehub.FeatureMembership;
/// import com.pulumi.gcp.gkehub.FeatureMembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipPolicycontrollerArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentArgs;
/// import com.pulumi.gcp.gkehub.inputs.FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs;
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
/// var cluster = new Cluster("cluster", ClusterArgs.builder()
/// .name("my-cluster")
/// .location("us-central1-a")
/// .initialNodeCount(1)
/// .build());
///
/// var membership = new Membership("membership", MembershipArgs.builder()
/// .membershipId("my-membership")
/// .endpoint(MembershipEndpointArgs.builder()
/// .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
/// .resourceLink(cluster.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
/// .build())
/// .build())
/// .build());
///
/// var feature = new Feature("feature", FeatureArgs.builder()
/// .name("policycontroller")
/// .location("global")
/// .build());
///
/// var featureMember = new FeatureMembership("featureMember", FeatureMembershipArgs.builder()
/// .location("global")
/// .feature(feature.name())
/// .membership(membership.membershipId())
/// .policycontroller(FeatureMembershipPolicycontrollerArgs.builder()
/// .policyControllerHubConfig(FeatureMembershipPolicycontrollerPolicyControllerHubConfigArgs.builder()
/// .installSpec("INSTALL_SPEC_SUSPENDED")
/// .policyContent(FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentArgs.builder()
/// .templateLibrary(FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryArgs.builder()
/// .installation("NOT_INSTALLED")
/// .build())
/// .build())
/// .constraintViolationLimit(50)
/// .auditIntervalSeconds(120)
/// .referentialRulesEnabled(true)
/// .logDeniesEnabled(true)
/// .mutationEnabled(true)
/// .build())
/// .version("1.17.0")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster:
/// type: gcp:container:Cluster
/// properties:
/// name: my-cluster
/// location: us-central1-a
/// initialNodeCount: 1
/// membership:
/// type: gcp:gkehub:Membership
/// properties:
/// membershipId: my-membership
/// endpoint:
/// gkeCluster:
/// resourceLink: //container.googleapis.com/${cluster.id}
/// feature:
/// type: gcp:gkehub:Feature
/// properties:
/// name: policycontroller
/// location: global
/// featureMember:
/// type: gcp:gkehub:FeatureMembership
/// name: feature_member
/// properties:
/// location: global
/// feature: ${feature.name}
/// membership: ${membership.membershipId}
/// policycontroller:
/// policyControllerHubConfig:
/// installSpec: INSTALL_SPEC_SUSPENDED
/// policyContent:
/// templateLibrary:
/// installation: NOT_INSTALLED
/// constraintViolationLimit: 50
/// auditIntervalSeconds: 120
/// referentialRulesEnabled: true
/// logDeniesEnabled: true
/// mutationEnabled: true
/// version: 1.17.0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FeatureMembership can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/features/{{feature}}/membershipId/{{membership}}`
///
/// * `{{project}}/{{location}}/{{feature}}/{{membership}}`
///
/// * `{{location}}/{{feature}}/{{membership}}`
///
/// When using the `pulumi import` command, FeatureMembership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureMembership:FeatureMembership default projects/{{project}}/locations/{{location}}/features/{{feature}}/membershipId/{{membership}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureMembership:FeatureMembership default {{project}}/{{location}}/{{feature}}/{{membership}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureMembership:FeatureMembership default {{location}}/{{feature}}/{{membership}}
/// ```
class FeatureMembership extends CustomResource {
  /// Config Management-specific spec. Structure is documented below.
  late final Output<FeatureMembershipConfigmanagement?> configmanagement;

  /// The name of the feature
  late final Output<String> feature;

  /// The location of the feature
  late final Output<String> location;

  /// The name of the membership
  late final Output<String> membership;

  /// The location of the membership, for example, "us-central1". Default is "global".
  late final Output<String?> membershipLocation;

  /// Service mesh specific spec. Structure is documented below.
  late final Output<FeatureMembershipMesh?> mesh;

  /// Policy Controller-specific spec. Structure is documented below.
  late final Output<FeatureMembershipPolicycontroller?> policycontroller;

  /// The project of the feature
  late final Output<String> project;

  FeatureMembership(
    String name, {
    FeatureMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/featureMembership:FeatureMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configmanagement =
        Output.createUnknown<FeatureMembershipConfigmanagement?>();
    this.feature = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.membership = Output.createUnknown<String>();
    this.membershipLocation = Output.createUnknown<String?>();
    this.mesh = Output.createUnknown<FeatureMembershipMesh?>();
    this.policycontroller =
        Output.createUnknown<FeatureMembershipPolicycontroller?>();
    this.project = Output.createUnknown<String>();
  }
}
