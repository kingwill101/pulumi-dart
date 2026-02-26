import 'package:pulumi/pulumi.dart';
import '../instance_accelerator_config/instance_accelerator_config.dart';
import '../instance_container_image/instance_container_image.dart';
import '../instance_reservation_affinity/instance_reservation_affinity2.dart';
import '../instance_shielded_instance_config/instance_shielded_instance_config2.dart';
import '../instance_vm_image/instance_vm_image.dart';
import 'instance_args11.dart';

/// > **Warning:** <span pulumi-lang-nodejs="`googleNotebookInstance`" pulumi-lang-dotnet="`GoogleNotebookInstance`" pulumi-lang-go="`googleNotebookInstance`" pulumi-lang-python="`google_notebook_instance`" pulumi-lang-yaml="`googleNotebookInstance`" pulumi-lang-java="`googleNotebookInstance`">`google_notebook_instance`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`gcp.workbench.Instance`" pulumi-lang-dotnet="`gcp.workbench.Instance`" pulumi-lang-go="`workbench.Instance`" pulumi-lang-python="`workbench.Instance`" pulumi-lang-yaml="`gcp.workbench.Instance`" pulumi-lang-java="`gcp.workbench.Instance`">`gcp.workbench.Instance`</span> instead.
///
/// A Cloud AI Platform Notebook instance.
///
///
/// > **Note:** Due to limitations of the Notebooks Instance API, many fields
/// in this resource do not properly detect drift. These fields will also not
/// appear in state once imported.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/ai-platform/notebooks/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/ai-platform-notebooks)
///
/// ## Example Usage
///
/// ### Notebook Instance Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.notebooks.Instance("instance", {
/// name: "notebooks-instance",
/// location: "us-west1-a",
/// machineType: "e2-medium",
/// vmImage: {
/// project: "cloud-notebooks-managed",
/// imageFamily: "workbench-instances",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.notebooks.Instance("instance",
/// name="notebooks-instance",
/// location="us-west1-a",
/// machine_type="e2-medium",
/// vm_image={
/// "project": "cloud-notebooks-managed",
/// "image_family": "workbench-instances",
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
/// var instance = new Gcp.Notebooks.Instance("instance", new()
/// {
/// Name = "notebooks-instance",
/// Location = "us-west1-a",
/// MachineType = "e2-medium",
/// VmImage = new Gcp.Notebooks.Inputs.InstanceVmImageArgs
/// {
/// Project = "cloud-notebooks-managed",
/// ImageFamily = "workbench-instances",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstance(ctx, "instance", &notebooks.InstanceArgs{
/// Name:        pulumi.String("notebooks-instance"),
/// Location:    pulumi.String("us-west1-a"),
/// MachineType: pulumi.String("e2-medium"),
/// VmImage: &notebooks.InstanceVmImageArgs{
/// Project:     pulumi.String("cloud-notebooks-managed"),
/// ImageFamily: pulumi.String("workbench-instances"),
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
/// import com.pulumi.gcp.notebooks.Instance;
/// import com.pulumi.gcp.notebooks.InstanceArgs;
/// import com.pulumi.gcp.notebooks.inputs.InstanceVmImageArgs;
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
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .name("notebooks-instance")
/// .location("us-west1-a")
/// .machineType("e2-medium")
/// .vmImage(InstanceVmImageArgs.builder()
/// .project("cloud-notebooks-managed")
/// .imageFamily("workbench-instances")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:notebooks:Instance
/// properties:
/// name: notebooks-instance
/// location: us-west1-a
/// machineType: e2-medium
/// vmImage:
/// project: cloud-notebooks-managed
/// imageFamily: workbench-instances
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Notebook Instance Basic Stopped
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.notebooks.Instance("instance", {
/// name: "notebooks-instance",
/// location: "us-west1-a",
/// machineType: "e2-medium",
/// vmImage: {
/// project: "cloud-notebooks-managed",
/// imageFamily: "workbench-instances",
/// },
/// desiredState: "STOPPED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.notebooks.Instance("instance",
/// name="notebooks-instance",
/// location="us-west1-a",
/// machine_type="e2-medium",
/// vm_image={
/// "project": "cloud-notebooks-managed",
/// "image_family": "workbench-instances",
/// },
/// desired_state="STOPPED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Notebooks.Instance("instance", new()
/// {
/// Name = "notebooks-instance",
/// Location = "us-west1-a",
/// MachineType = "e2-medium",
/// VmImage = new Gcp.Notebooks.Inputs.InstanceVmImageArgs
/// {
/// Project = "cloud-notebooks-managed",
/// ImageFamily = "workbench-instances",
/// },
/// DesiredState = "STOPPED",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstance(ctx, "instance", &notebooks.InstanceArgs{
/// Name:        pulumi.String("notebooks-instance"),
/// Location:    pulumi.String("us-west1-a"),
/// MachineType: pulumi.String("e2-medium"),
/// VmImage: &notebooks.InstanceVmImageArgs{
/// Project:     pulumi.String("cloud-notebooks-managed"),
/// ImageFamily: pulumi.String("workbench-instances"),
/// },
/// DesiredState: pulumi.String("STOPPED"),
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
/// import com.pulumi.gcp.notebooks.Instance;
/// import com.pulumi.gcp.notebooks.InstanceArgs;
/// import com.pulumi.gcp.notebooks.inputs.InstanceVmImageArgs;
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
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .name("notebooks-instance")
/// .location("us-west1-a")
/// .machineType("e2-medium")
/// .vmImage(InstanceVmImageArgs.builder()
/// .project("cloud-notebooks-managed")
/// .imageFamily("workbench-instances")
/// .build())
/// .desiredState("STOPPED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:notebooks:Instance
/// properties:
/// name: notebooks-instance
/// location: us-west1-a
/// machineType: e2-medium
/// vmImage:
/// project: cloud-notebooks-managed
/// imageFamily: workbench-instances
/// desiredState: STOPPED
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Notebook Instance Basic Container
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.notebooks.Instance("instance", {
/// name: "notebooks-instance",
/// location: "us-west1-a",
/// machineType: "e2-medium",
/// metadata: {
/// "proxy-mode": "service_account",
/// },
/// containerImage: {
/// repository: "gcr.io/deeplearning-platform-release/base-cpu",
/// tag: "latest",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.notebooks.Instance("instance",
/// name="notebooks-instance",
/// location="us-west1-a",
/// machine_type="e2-medium",
/// metadata={
/// "proxy-mode": "service_account",
/// },
/// container_image={
/// "repository": "gcr.io/deeplearning-platform-release/base-cpu",
/// "tag": "latest",
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
/// var instance = new Gcp.Notebooks.Instance("instance", new()
/// {
/// Name = "notebooks-instance",
/// Location = "us-west1-a",
/// MachineType = "e2-medium",
/// Metadata =
/// {
/// { "proxy-mode", "service_account" },
/// },
/// ContainerImage = new Gcp.Notebooks.Inputs.InstanceContainerImageArgs
/// {
/// Repository = "gcr.io/deeplearning-platform-release/base-cpu",
/// Tag = "latest",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstance(ctx, "instance", &notebooks.InstanceArgs{
/// Name:        pulumi.String("notebooks-instance"),
/// Location:    pulumi.String("us-west1-a"),
/// MachineType: pulumi.String("e2-medium"),
/// Metadata: pulumi.StringMap{
/// "proxy-mode": pulumi.String("service_account"),
/// },
/// ContainerImage: &notebooks.InstanceContainerImageArgs{
/// Repository: pulumi.String("gcr.io/deeplearning-platform-release/base-cpu"),
/// Tag:        pulumi.String("latest"),
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
/// import com.pulumi.gcp.notebooks.Instance;
/// import com.pulumi.gcp.notebooks.InstanceArgs;
/// import com.pulumi.gcp.notebooks.inputs.InstanceContainerImageArgs;
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
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .name("notebooks-instance")
/// .location("us-west1-a")
/// .machineType("e2-medium")
/// .metadata(Map.of("proxy-mode", "service_account"))
/// .containerImage(InstanceContainerImageArgs.builder()
/// .repository("gcr.io/deeplearning-platform-release/base-cpu")
/// .tag("latest")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:notebooks:Instance
/// properties:
/// name: notebooks-instance
/// location: us-west1-a
/// machineType: e2-medium
/// metadata:
/// proxy-mode: service_account
/// containerImage:
/// repository: gcr.io/deeplearning-platform-release/base-cpu
/// tag: latest
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Notebook Instance Basic Gpu
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.notebooks.Instance("instance", {
/// name: "notebooks-instance",
/// location: "us-west1-a",
/// machineType: "n1-standard-1",
/// installGpuDriver: true,
/// acceleratorConfig: {
/// type: "NVIDIA_TESLA_T4",
/// coreCount: 1,
/// },
/// vmImage: {
/// project: "cloud-notebooks-managed",
/// imageFamily: "workbench-instances",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.notebooks.Instance("instance",
/// name="notebooks-instance",
/// location="us-west1-a",
/// machine_type="n1-standard-1",
/// install_gpu_driver=True,
/// accelerator_config={
/// "type": "NVIDIA_TESLA_T4",
/// "core_count": 1,
/// },
/// vm_image={
/// "project": "cloud-notebooks-managed",
/// "image_family": "workbench-instances",
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
/// var instance = new Gcp.Notebooks.Instance("instance", new()
/// {
/// Name = "notebooks-instance",
/// Location = "us-west1-a",
/// MachineType = "n1-standard-1",
/// InstallGpuDriver = true,
/// AcceleratorConfig = new Gcp.Notebooks.Inputs.InstanceAcceleratorConfigArgs
/// {
/// Type = "NVIDIA_TESLA_T4",
/// CoreCount = 1,
/// },
/// VmImage = new Gcp.Notebooks.Inputs.InstanceVmImageArgs
/// {
/// Project = "cloud-notebooks-managed",
/// ImageFamily = "workbench-instances",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstance(ctx, "instance", &notebooks.InstanceArgs{
/// Name:             pulumi.String("notebooks-instance"),
/// Location:         pulumi.String("us-west1-a"),
/// MachineType:      pulumi.String("n1-standard-1"),
/// InstallGpuDriver: pulumi.Bool(true),
/// AcceleratorConfig: &notebooks.InstanceAcceleratorConfigArgs{
/// Type:      pulumi.String("NVIDIA_TESLA_T4"),
/// CoreCount: pulumi.Int(1),
/// },
/// VmImage: &notebooks.InstanceVmImageArgs{
/// Project:     pulumi.String("cloud-notebooks-managed"),
/// ImageFamily: pulumi.String("workbench-instances"),
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
/// import com.pulumi.gcp.notebooks.Instance;
/// import com.pulumi.gcp.notebooks.InstanceArgs;
/// import com.pulumi.gcp.notebooks.inputs.InstanceAcceleratorConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.InstanceVmImageArgs;
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
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .name("notebooks-instance")
/// .location("us-west1-a")
/// .machineType("n1-standard-1")
/// .installGpuDriver(true)
/// .acceleratorConfig(InstanceAcceleratorConfigArgs.builder()
/// .type("NVIDIA_TESLA_T4")
/// .coreCount(1)
/// .build())
/// .vmImage(InstanceVmImageArgs.builder()
/// .project("cloud-notebooks-managed")
/// .imageFamily("workbench-instances")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:notebooks:Instance
/// properties:
/// name: notebooks-instance
/// location: us-west1-a
/// machineType: n1-standard-1
/// installGpuDriver: true
/// acceleratorConfig:
/// type: NVIDIA_TESLA_T4
/// coreCount: 1
/// vmImage:
/// project: cloud-notebooks-managed
/// imageFamily: workbench-instances
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Notebook Instance Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = gcp.compute.getNetwork({
/// name: "default",
/// });
/// const mySubnetwork = gcp.compute.getSubnetwork({
/// name: "default",
/// region: "us-central1",
/// });
/// const instance = new gcp.notebooks.Instance("instance", {
/// name: "notebooks-instance",
/// location: "us-central1-a",
/// machineType: "e2-medium",
/// vmImage: {
/// project: "cloud-notebooks-managed",
/// imageFamily: "workbench-instances",
/// },
/// instanceOwners: ["my@service-account.com"],
/// serviceAccount: "my@service-account.com",
/// installGpuDriver: true,
/// bootDiskType: "PD_SSD",
/// bootDiskSizeGb: 150,
/// noPublicIp: true,
/// noProxyAccess: true,
/// network: myNetwork.then(myNetwork => myNetwork.id),
/// subnet: mySubnetwork.then(mySubnetwork => mySubnetwork.id),
/// labels: {
/// k: "val",
/// },
/// metadata: {
/// terraform: "true",
/// },
/// serviceAccountScopes: [
/// "https://www.googleapis.com/auth/bigquery",
/// "https://www.googleapis.com/auth/devstorage.read_write",
/// "https://www.googleapis.com/auth/cloud-platform",
/// "https://www.googleapis.com/auth/userinfo.email",
/// ],
/// tags: [
/// "foo",
/// "bar",
/// ],
/// diskEncryption: "CMEK",
/// kmsKey: "my-crypto-key",
/// desiredState: "ACTIVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.get_network(name="default")
/// my_subnetwork = gcp.compute.get_subnetwork(name="default",
/// region="us-central1")
/// instance = gcp.notebooks.Instance("instance",
/// name="notebooks-instance",
/// location="us-central1-a",
/// machine_type="e2-medium",
/// vm_image={
/// "project": "cloud-notebooks-managed",
/// "image_family": "workbench-instances",
/// },
/// instance_owners=["my@service-account.com"],
/// service_account="my@service-account.com",
/// install_gpu_driver=True,
/// boot_disk_type="PD_SSD",
/// boot_disk_size_gb=150,
/// no_public_ip=True,
/// no_proxy_access=True,
/// network=my_network.id,
/// subnet=my_subnetwork.id,
/// labels={
/// "k": "val",
/// },
/// metadata={
/// "terraform": "true",
/// },
/// service_account_scopes=[
/// "https://www.googleapis.com/auth/bigquery",
/// "https://www.googleapis.com/auth/devstorage.read_write",
/// "https://www.googleapis.com/auth/cloud-platform",
/// "https://www.googleapis.com/auth/userinfo.email",
/// ],
/// tags=[
/// "foo",
/// "bar",
/// ],
/// disk_encryption="CMEK",
/// kms_key="my-crypto-key",
/// desired_state="ACTIVE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myNetwork = Gcp.Compute.GetNetwork.Invoke(new()
/// {
/// Name = "default",
/// });
///
/// var mySubnetwork = Gcp.Compute.GetSubnetwork.Invoke(new()
/// {
/// Name = "default",
/// Region = "us-central1",
/// });
///
/// var instance = new Gcp.Notebooks.Instance("instance", new()
/// {
/// Name = "notebooks-instance",
/// Location = "us-central1-a",
/// MachineType = "e2-medium",
/// VmImage = new Gcp.Notebooks.Inputs.InstanceVmImageArgs
/// {
/// Project = "cloud-notebooks-managed",
/// ImageFamily = "workbench-instances",
/// },
/// InstanceOwners = new[]
/// {
/// "my@service-account.com",
/// },
/// ServiceAccount = "my@service-account.com",
/// InstallGpuDriver = true,
/// BootDiskType = "PD_SSD",
/// BootDiskSizeGb = 150,
/// NoPublicIp = true,
/// NoProxyAccess = true,
/// Network = myNetwork.Apply(getNetworkResult => getNetworkResult.Id),
/// Subnet = mySubnetwork.Apply(getSubnetworkResult => getSubnetworkResult.Id),
/// Labels =
/// {
/// { "k", "val" },
/// },
/// Metadata =
/// {
/// { "terraform", "true" },
/// },
/// ServiceAccountScopes = new[]
/// {
/// "https://www.googleapis.com/auth/bigquery",
/// "https://www.googleapis.com/auth/devstorage.read_write",
/// "https://www.googleapis.com/auth/cloud-platform",
/// "https://www.googleapis.com/auth/userinfo.email",
/// },
/// Tags = new[]
/// {
/// "foo",
/// "bar",
/// },
/// DiskEncryption = "CMEK",
/// KmsKey = "my-crypto-key",
/// DesiredState = "ACTIVE",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myNetwork, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// Name: "default",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// mySubnetwork, err := compute.LookupSubnetwork(ctx, &compute.LookupSubnetworkArgs{
/// Name:   pulumi.StringRef("default"),
/// Region: pulumi.StringRef("us-central1"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = notebooks.NewInstance(ctx, "instance", &notebooks.InstanceArgs{
/// Name:        pulumi.String("notebooks-instance"),
/// Location:    pulumi.String("us-central1-a"),
/// MachineType: pulumi.String("e2-medium"),
/// VmImage: &notebooks.InstanceVmImageArgs{
/// Project:     pulumi.String("cloud-notebooks-managed"),
/// ImageFamily: pulumi.String("workbench-instances"),
/// },
/// InstanceOwners: pulumi.StringArray{
/// pulumi.String("my@service-account.com"),
/// },
/// ServiceAccount:   pulumi.String("my@service-account.com"),
/// InstallGpuDriver: pulumi.Bool(true),
/// BootDiskType:     pulumi.String("PD_SSD"),
/// BootDiskSizeGb:   pulumi.Int(150),
/// NoPublicIp:       pulumi.Bool(true),
/// NoProxyAccess:    pulumi.Bool(true),
/// Network:          pulumi.String(myNetwork.Id),
/// Subnet:           pulumi.String(mySubnetwork.Id),
/// Labels: pulumi.StringMap{
/// "k": pulumi.String("val"),
/// },
/// Metadata: pulumi.StringMap{
/// "terraform": pulumi.String("true"),
/// },
/// ServiceAccountScopes: pulumi.StringArray{
/// pulumi.String("https://www.googleapis.com/auth/bigquery"),
/// pulumi.String("https://www.googleapis.com/auth/devstorage.read_write"),
/// pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// pulumi.String("https://www.googleapis.com/auth/userinfo.email"),
/// },
/// Tags: pulumi.StringArray{
/// pulumi.String("foo"),
/// pulumi.String("bar"),
/// },
/// DiskEncryption: pulumi.String("CMEK"),
/// KmsKey:         pulumi.String("my-crypto-key"),
/// DesiredState:   pulumi.String("ACTIVE"),
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
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.compute.inputs.GetSubnetworkArgs;
/// import com.pulumi.gcp.notebooks.Instance;
/// import com.pulumi.gcp.notebooks.InstanceArgs;
/// import com.pulumi.gcp.notebooks.inputs.InstanceVmImageArgs;
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
/// final var myNetwork = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
/// .name("default")
/// .build());
///
/// final var mySubnetwork = ComputeFunctions.getSubnetwork(GetSubnetworkArgs.builder()
/// .name("default")
/// .region("us-central1")
/// .build());
///
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .name("notebooks-instance")
/// .location("us-central1-a")
/// .machineType("e2-medium")
/// .vmImage(InstanceVmImageArgs.builder()
/// .project("cloud-notebooks-managed")
/// .imageFamily("workbench-instances")
/// .build())
/// .instanceOwners("my@service-account.com")
/// .serviceAccount("my@service-account.com")
/// .installGpuDriver(true)
/// .bootDiskType("PD_SSD")
/// .bootDiskSizeGb(150)
/// .noPublicIp(true)
/// .noProxyAccess(true)
/// .network(myNetwork.id())
/// .subnet(mySubnetwork.id())
/// .labels(Map.of("k", "val"))
/// .metadata(Map.of("terraform", "true"))
/// .serviceAccountScopes(
/// "https://www.googleapis.com/auth/bigquery",
/// "https://www.googleapis.com/auth/devstorage.read_write",
/// "https://www.googleapis.com/auth/cloud-platform",
/// "https://www.googleapis.com/auth/userinfo.email")
/// .tags(
/// "foo",
/// "bar")
/// .diskEncryption("CMEK")
/// .kmsKey("my-crypto-key")
/// .desiredState("ACTIVE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:notebooks:Instance
/// properties:
/// name: notebooks-instance
/// location: us-central1-a
/// machineType: e2-medium
/// vmImage:
/// project: cloud-notebooks-managed
/// imageFamily: workbench-instances
/// instanceOwners:
/// - my@service-account.com
/// serviceAccount: my@service-account.com
/// installGpuDriver: true
/// bootDiskType: PD_SSD
/// bootDiskSizeGb: 150
/// noPublicIp: true
/// noProxyAccess: true
/// network: ${myNetwork.id}
/// subnet: ${mySubnetwork.id}
/// labels:
/// k: val
/// metadata:
/// terraform: 'true'
/// serviceAccountScopes:
/// - https://www.googleapis.com/auth/bigquery
/// - https://www.googleapis.com/auth/devstorage.read_write
/// - https://www.googleapis.com/auth/cloud-platform
/// - https://www.googleapis.com/auth/userinfo.email
/// tags:
/// - foo
/// - bar
/// diskEncryption: CMEK
/// kmsKey: my-crypto-key
/// desiredState: ACTIVE
/// variables:
/// myNetwork:
/// fn::invoke:
/// function: gcp:compute:getNetwork
/// arguments:
/// name: default
/// mySubnetwork:
/// fn::invoke:
/// function: gcp:compute:getSubnetwork
/// arguments:
/// name: default
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:notebooks/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/instance:Instance default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/instance:Instance default {{location}}/{{name}}
/// ```
class Instance11 extends CustomResource {
  /// The hardware accelerator used on this instance. If you use accelerators,
  /// make sure that your configuration has enough vCPUs and memory to support the
  /// machineType you have selected.
  /// Structure is documented below.
  late final Output<InstanceAcceleratorConfig?> acceleratorConfig;

  /// The size of the boot disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
  /// If not specified, this defaults to 100.
  late final Output<int?> bootDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  late final Output<String?> bootDiskType;

  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  late final Output<InstanceContainerImage?> containerImage;

  /// Instance creation time
  late final Output<String> createTime;

  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  late final Output<String?> customGpuDriverPath;

  /// The size of the data disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB).
  /// You can choose the size of the data disk based on how big your notebooks and data are.
  /// If not specified, this defaults to 100.
  late final Output<int?> dataDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  late final Output<String?> dataDiskType;

  /// Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  late final Output<String?> desiredState;

  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible values are: `DISK_ENCRYPTION_UNSPECIFIED`, `GMEK`, `CMEK`.
  late final Output<String> diskEncryption;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether the end user authorizes Google Cloud to install GPU driver
  /// on this instance. If this field is empty or set to false, the GPU driver
  /// won't be installed. Only applicable to instances with GPUs.
  late final Output<bool?> installGpuDriver;

  /// The list of owners of this instance after creation.
  /// Format: alias@example.com.
  /// Currently supports one owner only.
  /// If not specified, all of the service account users of
  /// your VM instance's service account can use the instance.
  late final Output<List<String>?> instanceOwners;

  /// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
  late final Output<String?> kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// A reference to the zone where the machine resides.
  late final Output<String> location;

  /// A reference to a machine type which defines VM kind.
  late final Output<String> machineType;

  /// Custom metadata to apply to this instance.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  late final Output<Map<String, String>?> metadata;

  /// The name specified for the Notebook instance.
  late final Output<String> name;

  /// The name of the VPC that this instance is in.
  /// Format: projects/{project_id}/global/networks/{network_id}
  late final Output<String> network;

  /// The type of vNIC driver.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  late final Output<String?> nicType;

  /// The notebook instance will not register with the proxy..
  late final Output<bool?> noProxyAccess;

  /// No public IP will be assigned to this instance.
  late final Output<bool?> noPublicIp;

  /// If true, the data disk will not be auto deleted when deleting the instance.
  late final Output<bool?> noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a
  /// notebook instance fully boots up. The path must be a URL
  /// or Cloud Storage path (gs://path-to-file/file-name).
  late final Output<String?> postStartupScript;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The proxy endpoint that is used to access the Jupyter notebook.
  /// Only returned when the resource is in a `PROVISIONED` state. If
  /// needed you can utilize `pulumi up -refresh-only` to await
  /// the population of this value.
  late final Output<String> proxyUri;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Reservation Affinity for consuming Zonal reservation.
  /// Structure is documented below.
  late final Output<InstanceReservationAffinity2?> reservationAffinity;

  /// The service account on this instance, giving access to other
  /// Google Cloud services. You can use any service account within
  /// the same project, but you must have the service account user
  /// permission to use the instance. If not specified,
  /// the Compute Engine default service account is used.
  late final Output<String> serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// If not specified, the following scopes are defined:
  /// - https://www.googleapis.com/auth/cloud-platform
  /// - https://www.googleapis.com/auth/userinfo.email
  late final Output<List<String>> serviceAccountScopes;

  /// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// Not all combinations are valid
  /// Structure is documented below.
  late final Output<InstanceShieldedInstanceConfig2> shieldedInstanceConfig;

  /// The state of this instance.
  late final Output<String> state;

  /// The name of the subnet that this instance is in.
  /// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
  late final Output<String> subnet;

  /// The Compute Engine tags to add to instance.
  late final Output<List<String>> tags;

  /// Instance update time.
  late final Output<String> updateTime;

  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  late final Output<InstanceVmImage?> vmImage;

  Instance11(
    String name, {
    InstanceArgs11? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceleratorConfig =
        registerOutput<InstanceAcceleratorConfig?>('acceleratorConfig');
    this.bootDiskSizeGb = registerOutput<int?>('bootDiskSizeGb');
    this.bootDiskType = registerOutput<String?>('bootDiskType');
    this.containerImage =
        registerOutput<InstanceContainerImage?>('containerImage');
    this.createTime = registerOutput<String>('createTime');
    this.customGpuDriverPath = registerOutput<String?>('customGpuDriverPath');
    this.dataDiskSizeGb = registerOutput<int?>('dataDiskSizeGb');
    this.dataDiskType = registerOutput<String?>('dataDiskType');
    this.desiredState = registerOutput<String?>('desiredState');
    this.diskEncryption = registerOutput<String>('diskEncryption');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.installGpuDriver = registerOutput<bool?>('installGpuDriver');
    this.instanceOwners = registerOutput<List<String>?>('instanceOwners');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.nicType = registerOutput<String?>('nicType');
    this.noProxyAccess = registerOutput<bool?>('noProxyAccess');
    this.noPublicIp = registerOutput<bool?>('noPublicIp');
    this.noRemoveDataDisk = registerOutput<bool?>('noRemoveDataDisk');
    this.postStartupScript = registerOutput<String?>('postStartupScript');
    this.project = registerOutput<String>('project');
    this.proxyUri = registerOutput<String>('proxyUri');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reservationAffinity =
        registerOutput<InstanceReservationAffinity2?>('reservationAffinity');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.serviceAccountScopes =
        registerOutput<List<String>>('serviceAccountScopes');
    this.shieldedInstanceConfig =
        registerOutput<InstanceShieldedInstanceConfig2>(
            'shieldedInstanceConfig');
    this.state = registerOutput<String>('state');
    this.subnet = registerOutput<String>('subnet');
    this.tags = registerOutput<List<String>>('tags');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmImage = registerOutput<InstanceVmImage?>('vmImage');
  }
}
