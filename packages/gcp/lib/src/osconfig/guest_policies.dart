import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_args.dart';
import 'guest_policies_assignment.dart';
import 'guest_policies_package.dart';
import 'guest_policies_package_repository.dart';
import 'guest_policies_recipe.dart';

/// An OS Config resource representing a guest configuration policy. These policies represent
/// the desired state for VM instance guest environments including packages to install or remove,
/// package repository configurations, and software to install.
///
/// To get more information about GuestPolicies, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/osconfig/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/os-config-management)
///
/// ## Example Usage
///
/// ### Os Config Guest Policies Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const foobar = new gcp.compute.Instance("foobar", {
///     name: "guest-policy-inst",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
///     metadata: {
///         foo: "bar",
///     },
/// });
/// const guestPolicies = new gcp.osconfig.GuestPolicies("guest_policies", {
///     guestPolicyId: "guest-policy",
///     assignment: {
///         instances: [foobar.id],
///     },
///     packages: [{
///         name: "my-package",
///         desiredState: "UPDATED",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// foobar = gcp.compute.Instance("foobar",
///     name="guest-policy-inst",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     },
///     network_interfaces=[{
///         "network": "default",
///     }],
///     metadata={
///         "foo": "bar",
///     })
/// guest_policies = gcp.osconfig.GuestPolicies("guest_policies",
///     guest_policy_id="guest-policy",
///     assignment={
///         "instances": [foobar.id],
///     },
///     packages=[{
///         "name": "my-package",
///         "desired_state": "UPDATED",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var foobar = new Gcp.Compute.Instance("foobar", new()
///     {
///         Name = "guest-policy-inst",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Metadata =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var guestPolicies = new Gcp.OsConfig.GuestPolicies("guest_policies", new()
///     {
///         GuestPolicyId = "guest-policy",
///         Assignment = new Gcp.OsConfig.Inputs.GuestPoliciesAssignmentArgs
///         {
///             Instances = new[]
///             {
///                 foobar.Id,
///             },
///         },
///         Packages = new[]
///         {
///             new Gcp.OsConfig.Inputs.GuestPoliciesPackageArgs
///             {
///                 Name = "my-package",
///                 DesiredState = "UPDATED",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobar, err := compute.NewInstance(ctx, "foobar", &compute.InstanceArgs{
/// 			Name:         pulumi.String("guest-policy-inst"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			Zone:         pulumi.String("us-central1-a"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = osconfig.NewGuestPolicies(ctx, "guest_policies", &osconfig.GuestPoliciesArgs{
/// 			GuestPolicyId: pulumi.String("guest-policy"),
/// 			Assignment: &osconfig.GuestPoliciesAssignmentArgs{
/// 				Instances: pulumi.StringArray{
/// 					foobar.ID(),
/// 				},
/// 			},
/// 			Packages: osconfig.GuestPoliciesPackageArray{
/// 				&osconfig.GuestPoliciesPackageArgs{
/// 					Name:         pulumi.String("my-package"),
/// 					DesiredState: pulumi.String("UPDATED"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.osconfig.GuestPolicies;
/// import com.pulumi.gcp.osconfig.GuestPoliciesArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesAssignmentArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesPackageArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var foobar = new Instance("foobar", InstanceArgs.builder()
///             .name("guest-policy-inst")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .metadata(Map.of("foo", "bar"))
///             .build());
///
///         var guestPolicies = new GuestPolicies("guestPolicies", GuestPoliciesArgs.builder()
///             .guestPolicyId("guest-policy")
///             .assignment(GuestPoliciesAssignmentArgs.builder()
///                 .instances(foobar.id())
///                 .build())
///             .packages(GuestPoliciesPackageArgs.builder()
///                 .name("my-package")
///                 .desiredState("UPDATED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:Instance
///     properties:
///       name: guest-policy-inst
///       machineType: e2-medium
///       zone: us-central1-a
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
///       networkInterfaces:
///         - network: default
///       metadata:
///         foo: bar
///   guestPolicies:
///     type: gcp:osconfig:GuestPolicies
///     name: guest_policies
///     properties:
///       guestPolicyId: guest-policy
///       assignment:
///         instances:
///           - ${foobar.id}
///       packages:
///         - name: my-package
///           desiredState: UPDATED
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Os Config Guest Policies Packages
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const guestPolicies = new gcp.osconfig.GuestPolicies("guest_policies", {
///     guestPolicyId: "guest-policy",
///     assignment: {
///         groupLabels: [
///             {
///                 labels: {
///                     color: "red",
///                     env: "test",
///                 },
///             },
///             {
///                 labels: {
///                     color: "blue",
///                     env: "test",
///                 },
///             },
///         ],
///     },
///     packages: [
///         {
///             name: "my-package",
///             desiredState: "INSTALLED",
///         },
///         {
///             name: "bad-package-1",
///             desiredState: "REMOVED",
///         },
///         {
///             name: "bad-package-2",
///             desiredState: "REMOVED",
///             manager: "APT",
///         },
///     ],
///     packageRepositories: [
///         {
///             apt: {
///                 uri: "https://packages.cloud.google.com/apt",
///                 archiveType: "DEB",
///                 distribution: "cloud-sdk-stretch",
///                 components: ["main"],
///             },
///         },
///         {
///             yum: {
///                 id: "google-cloud-sdk",
///                 displayName: "Google Cloud SDK",
///                 baseUrl: "https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64",
///                 gpgKeys: [
///                     "https://packages.cloud.google.com/yum/doc/yum-key.gpg",
///                     "https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg",
///                 ],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// guest_policies = gcp.osconfig.GuestPolicies("guest_policies",
///     guest_policy_id="guest-policy",
///     assignment={
///         "group_labels": [
///             {
///                 "labels": {
///                     "color": "red",
///                     "env": "test",
///                 },
///             },
///             {
///                 "labels": {
///                     "color": "blue",
///                     "env": "test",
///                 },
///             },
///         ],
///     },
///     packages=[
///         {
///             "name": "my-package",
///             "desired_state": "INSTALLED",
///         },
///         {
///             "name": "bad-package-1",
///             "desired_state": "REMOVED",
///         },
///         {
///             "name": "bad-package-2",
///             "desired_state": "REMOVED",
///             "manager": "APT",
///         },
///     ],
///     package_repositories=[
///         {
///             "apt": {
///                 "uri": "https://packages.cloud.google.com/apt",
///                 "archive_type": "DEB",
///                 "distribution": "cloud-sdk-stretch",
///                 "components": ["main"],
///             },
///         },
///         {
///             "yum": {
///                 "id": "google-cloud-sdk",
///                 "display_name": "Google Cloud SDK",
///                 "base_url": "https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64",
///                 "gpg_keys": [
///                     "https://packages.cloud.google.com/yum/doc/yum-key.gpg",
///                     "https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg",
///                 ],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guestPolicies = new Gcp.OsConfig.GuestPolicies("guest_policies", new()
///     {
///         GuestPolicyId = "guest-policy",
///         Assignment = new Gcp.OsConfig.Inputs.GuestPoliciesAssignmentArgs
///         {
///             GroupLabels = new[]
///             {
///                 new Gcp.OsConfig.Inputs.GuestPoliciesAssignmentGroupLabelArgs
///                 {
///                     Labels =
///                     {
///                         { "color", "red" },
///                         { "env", "test" },
///                     },
///                 },
///                 new Gcp.OsConfig.Inputs.GuestPoliciesAssignmentGroupLabelArgs
///                 {
///                     Labels =
///                     {
///                         { "color", "blue" },
///                         { "env", "test" },
///                     },
///                 },
///             },
///         },
///         Packages = new[]
///         {
///             new Gcp.OsConfig.Inputs.GuestPoliciesPackageArgs
///             {
///                 Name = "my-package",
///                 DesiredState = "INSTALLED",
///             },
///             new Gcp.OsConfig.Inputs.GuestPoliciesPackageArgs
///             {
///                 Name = "bad-package-1",
///                 DesiredState = "REMOVED",
///             },
///             new Gcp.OsConfig.Inputs.GuestPoliciesPackageArgs
///             {
///                 Name = "bad-package-2",
///                 DesiredState = "REMOVED",
///                 Manager = "APT",
///             },
///         },
///         PackageRepositories = new[]
///         {
///             new Gcp.OsConfig.Inputs.GuestPoliciesPackageRepositoryArgs
///             {
///                 Apt = new Gcp.OsConfig.Inputs.GuestPoliciesPackageRepositoryAptArgs
///                 {
///                     Uri = "https://packages.cloud.google.com/apt",
///                     ArchiveType = "DEB",
///                     Distribution = "cloud-sdk-stretch",
///                     Components = new[]
///                     {
///                         "main",
///                     },
///                 },
///             },
///             new Gcp.OsConfig.Inputs.GuestPoliciesPackageRepositoryArgs
///             {
///                 Yum = new Gcp.OsConfig.Inputs.GuestPoliciesPackageRepositoryYumArgs
///                 {
///                     Id = "google-cloud-sdk",
///                     DisplayName = "Google Cloud SDK",
///                     BaseUrl = "https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64",
///                     GpgKeys = new[]
///                     {
///                         "https://packages.cloud.google.com/yum/doc/yum-key.gpg",
///                         "https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewGuestPolicies(ctx, "guest_policies", &osconfig.GuestPoliciesArgs{
/// 			GuestPolicyId: pulumi.String("guest-policy"),
/// 			Assignment: &osconfig.GuestPoliciesAssignmentArgs{
/// 				GroupLabels: osconfig.GuestPoliciesAssignmentGroupLabelArray{
/// 					&osconfig.GuestPoliciesAssignmentGroupLabelArgs{
/// 						Labels: pulumi.StringMap{
/// 							"color": pulumi.String("red"),
/// 							"env":   pulumi.String("test"),
/// 						},
/// 					},
/// 					&osconfig.GuestPoliciesAssignmentGroupLabelArgs{
/// 						Labels: pulumi.StringMap{
/// 							"color": pulumi.String("blue"),
/// 							"env":   pulumi.String("test"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Packages: osconfig.GuestPoliciesPackageArray{
/// 				&osconfig.GuestPoliciesPackageArgs{
/// 					Name:         pulumi.String("my-package"),
/// 					DesiredState: pulumi.String("INSTALLED"),
/// 				},
/// 				&osconfig.GuestPoliciesPackageArgs{
/// 					Name:         pulumi.String("bad-package-1"),
/// 					DesiredState: pulumi.String("REMOVED"),
/// 				},
/// 				&osconfig.GuestPoliciesPackageArgs{
/// 					Name:         pulumi.String("bad-package-2"),
/// 					DesiredState: pulumi.String("REMOVED"),
/// 					Manager:      pulumi.String("APT"),
/// 				},
/// 			},
/// 			PackageRepositories: osconfig.GuestPoliciesPackageRepositoryArray{
/// 				&osconfig.GuestPoliciesPackageRepositoryArgs{
/// 					Apt: &osconfig.GuestPoliciesPackageRepositoryAptArgs{
/// 						Uri:          pulumi.String("https://packages.cloud.google.com/apt"),
/// 						ArchiveType:  pulumi.String("DEB"),
/// 						Distribution: pulumi.String("cloud-sdk-stretch"),
/// 						Components: pulumi.StringArray{
/// 							pulumi.String("main"),
/// 						},
/// 					},
/// 				},
/// 				&osconfig.GuestPoliciesPackageRepositoryArgs{
/// 					Yum: &osconfig.GuestPoliciesPackageRepositoryYumArgs{
/// 						Id:          pulumi.String("google-cloud-sdk"),
/// 						DisplayName: pulumi.String("Google Cloud SDK"),
/// 						BaseUrl:     pulumi.String("https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64"),
/// 						GpgKeys: pulumi.StringArray{
/// 							pulumi.String("https://packages.cloud.google.com/yum/doc/yum-key.gpg"),
/// 							pulumi.String("https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.osconfig.GuestPolicies;
/// import com.pulumi.gcp.osconfig.GuestPoliciesArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesAssignmentArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesPackageArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesPackageRepositoryArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesPackageRepositoryAptArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesPackageRepositoryYumArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var guestPolicies = new GuestPolicies("guestPolicies", GuestPoliciesArgs.builder()
///             .guestPolicyId("guest-policy")
///             .assignment(GuestPoliciesAssignmentArgs.builder()
///                 .groupLabels(
///                     GuestPoliciesAssignmentGroupLabelArgs.builder()
///                         .labels(Map.ofEntries(
///                             Map.entry("color", "red"),
///                             Map.entry("env", "test")
///                         ))
///                         .build(),
///                     GuestPoliciesAssignmentGroupLabelArgs.builder()
///                         .labels(Map.ofEntries(
///                             Map.entry("color", "blue"),
///                             Map.entry("env", "test")
///                         ))
///                         .build())
///                 .build())
///             .packages(
///                 GuestPoliciesPackageArgs.builder()
///                     .name("my-package")
///                     .desiredState("INSTALLED")
///                     .build(),
///                 GuestPoliciesPackageArgs.builder()
///                     .name("bad-package-1")
///                     .desiredState("REMOVED")
///                     .build(),
///                 GuestPoliciesPackageArgs.builder()
///                     .name("bad-package-2")
///                     .desiredState("REMOVED")
///                     .manager("APT")
///                     .build())
///             .packageRepositories(
///                 GuestPoliciesPackageRepositoryArgs.builder()
///                     .apt(GuestPoliciesPackageRepositoryAptArgs.builder()
///                         .uri("https://packages.cloud.google.com/apt")
///                         .archiveType("DEB")
///                         .distribution("cloud-sdk-stretch")
///                         .components("main")
///                         .build())
///                     .build(),
///                 GuestPoliciesPackageRepositoryArgs.builder()
///                     .yum(GuestPoliciesPackageRepositoryYumArgs.builder()
///                         .id("google-cloud-sdk")
///                         .displayName("Google Cloud SDK")
///                         .baseUrl("https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64")
///                         .gpgKeys(
///                             "https://packages.cloud.google.com/yum/doc/yum-key.gpg",
///                             "https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   guestPolicies:
///     type: gcp:osconfig:GuestPolicies
///     name: guest_policies
///     properties:
///       guestPolicyId: guest-policy
///       assignment:
///         groupLabels:
///           - labels:
///               color: red
///               env: test
///           - labels:
///               color: blue
///               env: test
///       packages:
///         - name: my-package
///           desiredState: INSTALLED
///         - name: bad-package-1
///           desiredState: REMOVED
///         - name: bad-package-2
///           desiredState: REMOVED
///           manager: APT
///       packageRepositories:
///         - apt:
///             uri: https://packages.cloud.google.com/apt
///             archiveType: DEB
///             distribution: cloud-sdk-stretch
///             components:
///               - main
///         - yum:
///             id: google-cloud-sdk
///             displayName: Google Cloud SDK
///             baseUrl: https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
///             gpgKeys:
///               - https://packages.cloud.google.com/yum/doc/yum-key.gpg
///               - https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
/// ```
///
/// ### Os Config Guest Policies Recipes
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const guestPolicies = new gcp.osconfig.GuestPolicies("guest_policies", {
///     guestPolicyId: "guest-policy",
///     assignment: {
///         zones: [
///             "us-east1-b",
///             "us-east1-d",
///         ],
///     },
///     recipes: [{
///         name: "guest-policy-recipe",
///         desiredState: "INSTALLED",
///         artifacts: [{
///             id: "guest-policy-artifact-id",
///             gcs: {
///                 bucket: "my-bucket",
///                 object: "executable.msi",
///                 generation: 1546030865175603,
///             },
///         }],
///         installSteps: [{
///             msiInstallation: {
///                 artifactId: "guest-policy-artifact-id",
///             },
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// guest_policies = gcp.osconfig.GuestPolicies("guest_policies",
///     guest_policy_id="guest-policy",
///     assignment={
///         "zones": [
///             "us-east1-b",
///             "us-east1-d",
///         ],
///     },
///     recipes=[{
///         "name": "guest-policy-recipe",
///         "desired_state": "INSTALLED",
///         "artifacts": [{
///             "id": "guest-policy-artifact-id",
///             "gcs": {
///                 "bucket": "my-bucket",
///                 "object": "executable.msi",
///                 "generation": 1546030865175603,
///             },
///         }],
///         "install_steps": [{
///             "msi_installation": {
///                 "artifact_id": "guest-policy-artifact-id",
///             },
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guestPolicies = new Gcp.OsConfig.GuestPolicies("guest_policies", new()
///     {
///         GuestPolicyId = "guest-policy",
///         Assignment = new Gcp.OsConfig.Inputs.GuestPoliciesAssignmentArgs
///         {
///             Zones = new[]
///             {
///                 "us-east1-b",
///                 "us-east1-d",
///             },
///         },
///         Recipes = new[]
///         {
///             new Gcp.OsConfig.Inputs.GuestPoliciesRecipeArgs
///             {
///                 Name = "guest-policy-recipe",
///                 DesiredState = "INSTALLED",
///                 Artifacts = new[]
///                 {
///                     new Gcp.OsConfig.Inputs.GuestPoliciesRecipeArtifactArgs
///                     {
///                         Id = "guest-policy-artifact-id",
///                         Gcs = new Gcp.OsConfig.Inputs.GuestPoliciesRecipeArtifactGcsArgs
///                         {
///                             Bucket = "my-bucket",
///                             Object = "executable.msi",
///                             Generation = 1546030865175603,
///                         },
///                     },
///                 },
///                 InstallSteps = new[]
///                 {
///                     new Gcp.OsConfig.Inputs.GuestPoliciesRecipeInstallStepArgs
///                     {
///                         MsiInstallation = new Gcp.OsConfig.Inputs.GuestPoliciesRecipeInstallStepMsiInstallationArgs
///                         {
///                             ArtifactId = "guest-policy-artifact-id",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewGuestPolicies(ctx, "guest_policies", &osconfig.GuestPoliciesArgs{
/// 			GuestPolicyId: pulumi.String("guest-policy"),
/// 			Assignment: &osconfig.GuestPoliciesAssignmentArgs{
/// 				Zones: pulumi.StringArray{
/// 					pulumi.String("us-east1-b"),
/// 					pulumi.String("us-east1-d"),
/// 				},
/// 			},
/// 			Recipes: osconfig.GuestPoliciesRecipeArray{
/// 				&osconfig.GuestPoliciesRecipeArgs{
/// 					Name:         pulumi.String("guest-policy-recipe"),
/// 					DesiredState: pulumi.String("INSTALLED"),
/// 					Artifacts: osconfig.GuestPoliciesRecipeArtifactArray{
/// 						&osconfig.GuestPoliciesRecipeArtifactArgs{
/// 							Id: pulumi.String("guest-policy-artifact-id"),
/// 							Gcs: &osconfig.GuestPoliciesRecipeArtifactGcsArgs{
/// 								Bucket:     pulumi.String("my-bucket"),
/// 								Object:     pulumi.String("executable.msi"),
/// 								Generation: pulumi.Int(1546030865175603),
/// 							},
/// 						},
/// 					},
/// 					InstallSteps: osconfig.GuestPoliciesRecipeInstallStepArray{
/// 						&osconfig.GuestPoliciesRecipeInstallStepArgs{
/// 							MsiInstallation: &osconfig.GuestPoliciesRecipeInstallStepMsiInstallationArgs{
/// 								ArtifactId: pulumi.String("guest-policy-artifact-id"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.osconfig.GuestPolicies;
/// import com.pulumi.gcp.osconfig.GuestPoliciesArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesAssignmentArgs;
/// import com.pulumi.gcp.osconfig.inputs.GuestPoliciesRecipeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var guestPolicies = new GuestPolicies("guestPolicies", GuestPoliciesArgs.builder()
///             .guestPolicyId("guest-policy")
///             .assignment(GuestPoliciesAssignmentArgs.builder()
///                 .zones(
///                     "us-east1-b",
///                     "us-east1-d")
///                 .build())
///             .recipes(GuestPoliciesRecipeArgs.builder()
///                 .name("guest-policy-recipe")
///                 .desiredState("INSTALLED")
///                 .artifacts(GuestPoliciesRecipeArtifactArgs.builder()
///                     .id("guest-policy-artifact-id")
///                     .gcs(GuestPoliciesRecipeArtifactGcsArgs.builder()
///                         .bucket("my-bucket")
///                         .object("executable.msi")
///                         .generation(1546030865175603)
///                         .build())
///                     .build())
///                 .installSteps(GuestPoliciesRecipeInstallStepArgs.builder()
///                     .msiInstallation(GuestPoliciesRecipeInstallStepMsiInstallationArgs.builder()
///                         .artifactId("guest-policy-artifact-id")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   guestPolicies:
///     type: gcp:osconfig:GuestPolicies
///     name: guest_policies
///     properties:
///       guestPolicyId: guest-policy
///       assignment:
///         zones:
///           - us-east1-b
///           - us-east1-d
///       recipes:
///         - name: guest-policy-recipe
///           desiredState: INSTALLED
///           artifacts:
///             - id: guest-policy-artifact-id
///               gcs:
///                 bucket: my-bucket
///                 object: executable.msi
///                 generation: 1.546030865175603e+15
///           installSteps:
///             - msiInstallation:
///                 artifactId: guest-policy-artifact-id
/// ```
///
///
/// ## Import
///
/// GuestPolicies can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/guestPolicies/{{guest_policy_id}}`
///
/// * `{{project}}/{{guest_policy_id}}`
///
/// * `{{guest_policy_id}}`
///
/// When using the `pulumi import` command, GuestPolicies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/guestPolicies:GuestPolicies default projects/{{project}}/guestPolicies/{{guest_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/guestPolicies:GuestPolicies default {{project}}/{{guest_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/guestPolicies:GuestPolicies default {{guest_policy_id}}
/// ```
class GuestPolicies extends pulumi.CustomResource {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets
  /// or groups of VM instances by different parameters such as labels, names, OS, or zones.
  /// If left empty, all VM instances underneath this policy are targeted.
  /// At the same level in the resource hierarchy (that is within a project), the service prevents
  /// the creation of multiple policies that conflict with each other.
  /// For more information, see how the service
  /// [handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  /// Structure is documented below.
  late final pulumi.Output<GuestPoliciesAssignment> assignment;
  /// Time this guest policy was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  late final pulumi.Output<String?> description;
  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;
  /// The logical name of the guest policy in the project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  late final pulumi.Output<String> guestPolicyId;
  /// Unique name of the resource in this project using one of the following forms: projects/{project_number}/guestPolicies/{guestPolicyId}.
  late final pulumi.Output<String> name;
  /// A list of package repositories to configure on the VM instance.
  /// This is done before any other configs are applied so they can use these repos.
  /// Package repositories are only configured if the corresponding package manager(s) are available.
  /// Structure is documented below.
  late final pulumi.Output<List<GuestPoliciesPackageRepository>?> packageRepositories;
  /// The software packages to be managed by this policy.
  /// Structure is documented below.
  late final pulumi.Output<List<GuestPoliciesPackage>?> packages;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A list of Recipes to install on the VM instance.
  /// Structure is documented below.
  late final pulumi.Output<List<GuestPoliciesRecipe>?> recipes;
  /// Last time this guest policy was updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GuestPolicies].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestPolicies]. {@macro pulumi_osconfig_guest_policies_guest_policies_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestPolicies(
    String name, {
    GuestPoliciesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/guestPolicies:GuestPolicies',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignment = registerOutput<GuestPoliciesAssignment>('assignment');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.guestPolicyId = registerOutput<String>('guestPolicyId');
    this.name = registerOutput<String>('name');
    this.packageRepositories = registerOutput<List<GuestPoliciesPackageRepository>?>('packageRepositories');
    this.packages = registerOutput<List<GuestPoliciesPackage>?>('packages');
    this.project = registerOutput<String>('project');
    this.recipes = registerOutput<List<GuestPoliciesRecipe>?>('recipes');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
