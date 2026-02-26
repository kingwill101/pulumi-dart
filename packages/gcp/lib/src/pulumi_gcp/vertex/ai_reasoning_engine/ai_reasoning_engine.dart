import 'package:pulumi/pulumi.dart';
import '../ai_reasoning_engine_encryption_spec/ai_reasoning_engine_encryption_spec.dart';
import '../ai_reasoning_engine_spec/ai_reasoning_engine_spec.dart';
import 'ai_reasoning_engine_args.dart';

/// ReasoningEngine provides a customizable runtime for models to determine which actions to take and in which order.
///
///
/// To get more information about ReasoningEngine, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.reasoningEngines/)
/// * How-to Guides
/// * [Develop and deploy agents on Vertex AI Agent Engine](https://cloud.google.com/vertex-ai/generative-ai/docs/agent-engine/quickstart)
///
/// ## Example Usage
///
/// ### Vertex Ai Reasoning Engine Source Based Deployment
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
/// displayName: "reasoning-engine",
/// description: "A basic reasoning engine",
/// region: "us-central1",
/// spec: {
/// sourceCodeSpec: {
/// inlineSource: {
/// sourceArchive: std.filebase64({
/// input: "./test-fixtures/source.tar.gz",
/// }).then(invoke => invoke.result),
/// },
/// pythonSpec: {
/// entrypointModule: "simple_agent",
/// entrypointObject: "fixed_name_generator",
/// requirementsFile: "./test-fixtures/requirements.txt",
/// version: "3.11",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
/// display_name="reasoning-engine",
/// description="A basic reasoning engine",
/// region="us-central1",
/// spec={
/// "source_code_spec": {
/// "inline_source": {
/// "source_archive": std.filebase64(input="./test-fixtures/source.tar.gz").result,
/// },
/// "python_spec": {
/// "entrypoint_module": "simple_agent",
/// "entrypoint_object": "fixed_name_generator",
/// "requirements_file": "./test-fixtures/requirements.txt",
/// "version": "3.11",
/// },
/// },
/// })
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
/// var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
/// {
/// DisplayName = "reasoning-engine",
/// Description = "A basic reasoning engine",
/// Region = "us-central1",
/// Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
/// {
/// SourceCodeSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecArgs
/// {
/// InlineSource = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs
/// {
/// SourceArchive = Std.Filebase64.Invoke(new()
/// {
/// Input = "./test-fixtures/source.tar.gz",
/// }).Apply(invoke => invoke.Result),
/// },
/// PythonSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs
/// {
/// EntrypointModule = "simple_agent",
/// EntrypointObject = "fixed_name_generator",
/// RequirementsFile = "./test-fixtures/requirements.txt",
/// Version = "3.11",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// Input: "./test-fixtures/source.tar.gz",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// DisplayName: pulumi.String("reasoning-engine"),
/// Description: pulumi.String("A basic reasoning engine"),
/// Region:      pulumi.String("us-central1"),
/// Spec: &vertex.AiReasoningEngineSpecArgs{
/// SourceCodeSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecArgs{
/// InlineSource: &vertex.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs{
/// SourceArchive: pulumi.String(invokeFilebase64.Result),
/// },
/// PythonSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs{
/// EntrypointModule: pulumi.String("simple_agent"),
/// EntrypointObject: pulumi.String("fixed_name_generator"),
/// RequirementsFile: pulumi.String("./test-fixtures/requirements.txt"),
/// Version:          pulumi.String("3.11"),
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
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
/// var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
/// .displayName("reasoning-engine")
/// .description("A basic reasoning engine")
/// .region("us-central1")
/// .spec(AiReasoningEngineSpecArgs.builder()
/// .sourceCodeSpec(AiReasoningEngineSpecSourceCodeSpecArgs.builder()
/// .inlineSource(AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs.builder()
/// .sourceArchive(StdFunctions.filebase64(Filebase64Args.builder()
/// .input("./test-fixtures/source.tar.gz")
/// .build()).result())
/// .build())
/// .pythonSpec(AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs.builder()
/// .entrypointModule("simple_agent")
/// .entrypointObject("fixed_name_generator")
/// .requirementsFile("./test-fixtures/requirements.txt")
/// .version("3.11")
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
/// reasoningEngine:
/// type: gcp:vertex:AiReasoningEngine
/// name: reasoning_engine
/// properties:
/// displayName: reasoning-engine
/// description: A basic reasoning engine
/// region: us-central1
/// spec:
/// sourceCodeSpec:
/// inlineSource:
/// sourceArchive:
/// fn::invoke:
/// function: std:filebase64
/// arguments:
/// input: ./test-fixtures/source.tar.gz
/// return: result
/// pythonSpec:
/// entrypointModule: simple_agent
/// entrypointObject: fixed_name_generator
/// requirementsFile: ./test-fixtures/requirements.txt
/// version: '3.11'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Vertex Ai Reasoning Engine Psc Interface
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "reasoning-engine",
/// location: "us-central1",
/// uniformBucketLevelAccess: true,
/// forceDestroy: true,
/// });
/// const bucketObjRequirementsTxt = new gcp.storage.BucketObject("bucket_obj_requirements_txt", {
/// name: "requirements.txt",
/// bucket: bucket.id,
/// source: new pulumi.asset.FileAsset("./test-fixtures/requirements_adk.txt"),
/// });
/// const bucketObjPickle = new gcp.storage.BucketObject("bucket_obj_pickle", {
/// name: "code.pkl",
/// bucket: bucket.id,
/// source: new pulumi.asset.FileAsset("./test-fixtures/pickle_adk.pkl"),
/// });
/// const bucketObjDependenciesTarGz = new gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz", {
/// name: "dependencies.tar.gz",
/// bucket: bucket.id,
/// source: new pulumi.asset.FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// });
/// const network = new gcp.compute.Network("network", {
/// name: "network",
/// autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
/// name: "subnetwork",
/// region: "us-central1",
/// ipCidrRange: "10.0.0.0/16",
/// network: network.id,
/// });
/// const networkAttachment = new gcp.compute.NetworkAttachment("network_attachment", {
/// name: "network-attachment",
/// region: "us-central1",
/// connectionPreference: "ACCEPT_MANUAL",
/// subnetworks: [subnetwork.id],
/// });
/// // Destroy network attachment 35 minutes after reasoning engine is deleted.
/// // It guarantees that the network attachment has no more active PSC interfaces.
/// const wait35Minutes = new time.Sleep("wait_35_minutes", {destroyDuration: "35m"}, {
/// dependsOn: [networkAttachment],
/// });
/// const project = gcp.organizations.getProject({});
/// // When PSC-I is configured, Agent deletion will fail,
/// // although the agent will be deleted.
/// // Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
/// displayName: "reasoning-engine",
/// description: "A basic reasoning engine",
/// region: "us-central1",
/// spec: {
/// agentFramework: "google-adk",
/// packageSpec: {
/// pythonVersion: "3.11",
/// dependencyFilesGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjDependenciesTarGz.name}`,
/// pickleObjectGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjPickle.name}`,
/// requirementsGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjRequirementsTxt.name}`,
/// },
/// deploymentSpec: {
/// pscInterfaceConfig: {
/// networkAttachment: networkAttachment.id,
/// dnsPeeringConfigs: [{
/// domain: "example.com.",
/// targetProject: project.then(project => project.projectId),
/// targetNetwork: network.name,
/// }],
/// },
/// },
/// },
/// }, {
/// dependsOn: [wait35Minutes],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// bucket = gcp.storage.Bucket("bucket",
/// name="reasoning-engine",
/// location="us-central1",
/// uniform_bucket_level_access=True,
/// force_destroy=True)
/// bucket_obj_requirements_txt = gcp.storage.BucketObject("bucket_obj_requirements_txt",
/// name="requirements.txt",
/// bucket=bucket.id,
/// source=pulumi.FileAsset("./test-fixtures/requirements_adk.txt"))
/// bucket_obj_pickle = gcp.storage.BucketObject("bucket_obj_pickle",
/// name="code.pkl",
/// bucket=bucket.id,
/// source=pulumi.FileAsset("./test-fixtures/pickle_adk.pkl"))
/// bucket_obj_dependencies_tar_gz = gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz",
/// name="dependencies.tar.gz",
/// bucket=bucket.id,
/// source=pulumi.FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
/// network = gcp.compute.Network("network",
/// name="network",
/// auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
/// name="subnetwork",
/// region="us-central1",
/// ip_cidr_range="10.0.0.0/16",
/// network=network.id)
/// network_attachment = gcp.compute.NetworkAttachment("network_attachment",
/// name="network-attachment",
/// region="us-central1",
/// connection_preference="ACCEPT_MANUAL",
/// subnetworks=[subnetwork.id])
/// # Destroy network attachment 35 minutes after reasoning engine is deleted.
/// # It guarantees that the network attachment has no more active PSC interfaces.
/// wait35_minutes = time.Sleep("wait_35_minutes", destroy_duration="35m",
/// opts = pulumi.ResourceOptions(depends_on=[network_attachment]))
/// project = gcp.organizations.get_project()
/// # When PSC-I is configured, Agent deletion will fail,
/// # although the agent will be deleted.
/// # Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
/// display_name="reasoning-engine",
/// description="A basic reasoning engine",
/// region="us-central1",
/// spec={
/// "agent_framework": "google-adk",
/// "package_spec": {
/// "python_version": "3.11",
/// "dependency_files_gcs_uri": pulumi.Output.all(
/// url=bucket.url,
/// name=bucket_obj_dependencies_tar_gz.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
/// "pickle_object_gcs_uri": pulumi.Output.all(
/// url=bucket.url,
/// name=bucket_obj_pickle.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
/// "requirements_gcs_uri": pulumi.Output.all(
/// url=bucket.url,
/// name=bucket_obj_requirements_txt.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
/// },
/// "deployment_spec": {
/// "psc_interface_config": {
/// "network_attachment": network_attachment.id,
/// "dns_peering_configs": [{
/// "domain": "example.com.",
/// "target_project": project.project_id,
/// "target_network": network.name,
/// }],
/// },
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[wait35_minutes]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "reasoning-engine",
/// Location = "us-central1",
/// UniformBucketLevelAccess = true,
/// ForceDestroy = true,
/// });
///
/// var bucketObjRequirementsTxt = new Gcp.Storage.BucketObject("bucket_obj_requirements_txt", new()
/// {
/// Name = "requirements.txt",
/// Bucket = bucket.Id,
/// Source = new FileAsset("./test-fixtures/requirements_adk.txt"),
/// });
///
/// var bucketObjPickle = new Gcp.Storage.BucketObject("bucket_obj_pickle", new()
/// {
/// Name = "code.pkl",
/// Bucket = bucket.Id,
/// Source = new FileAsset("./test-fixtures/pickle_adk.pkl"),
/// });
///
/// var bucketObjDependenciesTarGz = new Gcp.Storage.BucketObject("bucket_obj_dependencies_tar_gz", new()
/// {
/// Name = "dependencies.tar.gz",
/// Bucket = bucket.Id,
/// Source = new FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// });
///
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Name = "network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
/// {
/// Name = "subnetwork",
/// Region = "us-central1",
/// IpCidrRange = "10.0.0.0/16",
/// Network = network.Id,
/// });
///
/// var networkAttachment = new Gcp.Compute.NetworkAttachment("network_attachment", new()
/// {
/// Name = "network-attachment",
/// Region = "us-central1",
/// ConnectionPreference = "ACCEPT_MANUAL",
/// Subnetworks = new[]
/// {
/// subnetwork.Id,
/// },
/// });
///
/// // Destroy network attachment 35 minutes after reasoning engine is deleted.
/// // It guarantees that the network attachment has no more active PSC interfaces.
/// var wait35Minutes = new Time.Sleep("wait_35_minutes", new()
/// {
/// DestroyDuration = "35m",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// networkAttachment,
/// },
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// // When PSC-I is configured, Agent deletion will fail,
/// // although the agent will be deleted.
/// // Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
/// {
/// DisplayName = "reasoning-engine",
/// Description = "A basic reasoning engine",
/// Region = "us-central1",
/// Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
/// {
/// AgentFramework = "google-adk",
/// PackageSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecPackageSpecArgs
/// {
/// PythonVersion = "3.11",
/// DependencyFilesGcsUri = Output.Tuple(bucket.Url, bucketObjDependenciesTarGz.Name).Apply(values =>
/// {
/// var url = values.Item1;
/// var name = values.Item2;
/// return $"{url}/{name}";
/// }),
/// PickleObjectGcsUri = Output.Tuple(bucket.Url, bucketObjPickle.Name).Apply(values =>
/// {
/// var url = values.Item1;
/// var name = values.Item2;
/// return $"{url}/{name}";
/// }),
/// RequirementsGcsUri = Output.Tuple(bucket.Url, bucketObjRequirementsTxt.Name).Apply(values =>
/// {
/// var url = values.Item1;
/// var name = values.Item2;
/// return $"{url}/{name}";
/// }),
/// },
/// DeploymentSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecArgs
/// {
/// PscInterfaceConfig = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs
/// {
/// NetworkAttachment = networkAttachment.Id,
/// DnsPeeringConfigs = new[]
/// {
/// new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArgs
/// {
/// Domain = "example.com.",
/// TargetProject = project.Apply(getProjectResult => getProjectResult.ProjectId),
/// TargetNetwork = network.Name,
/// },
/// },
/// },
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// wait35Minutes,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("reasoning-engine"),
/// Location:                 pulumi.String("us-central1"),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// ForceDestroy:             pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// bucketObjRequirementsTxt, err := storage.NewBucketObject(ctx, "bucket_obj_requirements_txt", &storage.BucketObjectArgs{
/// Name:   pulumi.String("requirements.txt"),
/// Bucket: bucket.ID(),
/// Source: pulumi.NewFileAsset("./test-fixtures/requirements_adk.txt"),
/// })
/// if err != nil {
/// return err
/// }
/// bucketObjPickle, err := storage.NewBucketObject(ctx, "bucket_obj_pickle", &storage.BucketObjectArgs{
/// Name:   pulumi.String("code.pkl"),
/// Bucket: bucket.ID(),
/// Source: pulumi.NewFileAsset("./test-fixtures/pickle_adk.pkl"),
/// })
/// if err != nil {
/// return err
/// }
/// bucketObjDependenciesTarGz, err := storage.NewBucketObject(ctx, "bucket_obj_dependencies_tar_gz", &storage.BucketObjectArgs{
/// Name:   pulumi.String("dependencies.tar.gz"),
/// Bucket: bucket.ID(),
/// Source: pulumi.NewFileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// })
/// if err != nil {
/// return err
/// }
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// Name:        pulumi.String("subnetwork"),
/// Region:      pulumi.String("us-central1"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Network:     network.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// networkAttachment, err := compute.NewNetworkAttachment(ctx, "network_attachment", &compute.NetworkAttachmentArgs{
/// Name:                 pulumi.String("network-attachment"),
/// Region:               pulumi.String("us-central1"),
/// ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// Subnetworks: pulumi.StringArray{
/// subnetwork.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // Destroy network attachment 35 minutes after reasoning engine is deleted.
/// // It guarantees that the network attachment has no more active PSC interfaces.
/// wait35Minutes, err := time.NewSleep(ctx, "wait_35_minutes", &time.SleepArgs{
/// DestroyDuration: pulumi.String("35m"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// networkAttachment,
/// }))
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// // When PSC-I is configured, Agent deletion will fail,
/// // although the agent will be deleted.
/// // Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// _, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// DisplayName: pulumi.String("reasoning-engine"),
/// Description: pulumi.String("A basic reasoning engine"),
/// Region:      pulumi.String("us-central1"),
/// Spec: &vertex.AiReasoningEngineSpecArgs{
/// AgentFramework: pulumi.String("google-adk"),
/// PackageSpec: &vertex.AiReasoningEngineSpecPackageSpecArgs{
/// PythonVersion: pulumi.String("3.11"),
/// DependencyFilesGcsUri: pulumi.All(bucket.Url, bucketObjDependenciesTarGz.Name).ApplyT(func(_args []interface{}) (string, error) {
/// url := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("%v/%v", url, name), nil
/// }).(pulumi.StringOutput),
/// PickleObjectGcsUri: pulumi.All(bucket.Url, bucketObjPickle.Name).ApplyT(func(_args []interface{}) (string, error) {
/// url := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("%v/%v", url, name), nil
/// }).(pulumi.StringOutput),
/// RequirementsGcsUri: pulumi.All(bucket.Url, bucketObjRequirementsTxt.Name).ApplyT(func(_args []interface{}) (string, error) {
/// url := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("%v/%v", url, name), nil
/// }).(pulumi.StringOutput),
/// },
/// DeploymentSpec: &vertex.AiReasoningEngineSpecDeploymentSpecArgs{
/// PscInterfaceConfig: &vertex.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs{
/// NetworkAttachment: networkAttachment.ID(),
/// DnsPeeringConfigs: vertex.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArray{
/// &vertex.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArgs{
/// Domain:        pulumi.String("example.com."),
/// TargetProject: pulumi.String(project.ProjectId),
/// TargetNetwork: network.Name,
/// },
/// },
/// },
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// wait35Minutes,
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecPackageSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs;
/// import com.pulumi.asset.FileAsset;
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
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("reasoning-engine")
/// .location("us-central1")
/// .uniformBucketLevelAccess(true)
/// .forceDestroy(true)
/// .build());
///
/// var bucketObjRequirementsTxt = new BucketObject("bucketObjRequirementsTxt", BucketObjectArgs.builder()
/// .name("requirements.txt")
/// .bucket(bucket.id())
/// .source(new FileAsset("./test-fixtures/requirements_adk.txt"))
/// .build());
///
/// var bucketObjPickle = new BucketObject("bucketObjPickle", BucketObjectArgs.builder()
/// .name("code.pkl")
/// .bucket(bucket.id())
/// .source(new FileAsset("./test-fixtures/pickle_adk.pkl"))
/// .build());
///
/// var bucketObjDependenciesTarGz = new BucketObject("bucketObjDependenciesTarGz", BucketObjectArgs.builder()
/// .name("dependencies.tar.gz")
/// .bucket(bucket.id())
/// .source(new FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
/// .build());
///
/// var network = new Network("network", NetworkArgs.builder()
/// .name("network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
/// .name("subnetwork")
/// .region("us-central1")
/// .ipCidrRange("10.0.0.0/16")
/// .network(network.id())
/// .build());
///
/// var networkAttachment = new NetworkAttachment("networkAttachment", NetworkAttachmentArgs.builder()
/// .name("network-attachment")
/// .region("us-central1")
/// .connectionPreference("ACCEPT_MANUAL")
/// .subnetworks(subnetwork.id())
/// .build());
///
/// // Destroy network attachment 35 minutes after reasoning engine is deleted.
/// // It guarantees that the network attachment has no more active PSC interfaces.
/// var wait35Minutes = new Sleep("wait35Minutes", SleepArgs.builder()
/// .destroyDuration("35m")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(networkAttachment)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// // When PSC-I is configured, Agent deletion will fail,
/// // although the agent will be deleted.
/// // Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
/// .displayName("reasoning-engine")
/// .description("A basic reasoning engine")
/// .region("us-central1")
/// .spec(AiReasoningEngineSpecArgs.builder()
/// .agentFramework("google-adk")
/// .packageSpec(AiReasoningEngineSpecPackageSpecArgs.builder()
/// .pythonVersion("3.11")
/// .dependencyFilesGcsUri(Output.tuple(bucket.url(), bucketObjDependenciesTarGz.name()).applyValue(values -> {
/// var url = values.t1;
/// var name = values.t2;
/// return String.format("%s/%s", url,name);
/// }))
/// .pickleObjectGcsUri(Output.tuple(bucket.url(), bucketObjPickle.name()).applyValue(values -> {
/// var url = values.t1;
/// var name = values.t2;
/// return String.format("%s/%s", url,name);
/// }))
/// .requirementsGcsUri(Output.tuple(bucket.url(), bucketObjRequirementsTxt.name()).applyValue(values -> {
/// var url = values.t1;
/// var name = values.t2;
/// return String.format("%s/%s", url,name);
/// }))
/// .build())
/// .deploymentSpec(AiReasoningEngineSpecDeploymentSpecArgs.builder()
/// .pscInterfaceConfig(AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs.builder()
/// .networkAttachment(networkAttachment.id())
/// .dnsPeeringConfigs(AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArgs.builder()
/// .domain("example.com.")
/// .targetProject(project.projectId())
/// .targetNetwork(network.name())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(wait35Minutes)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # When PSC-I is configured, Agent deletion will fail,
/// # although the agent will be deleted.
/// # Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// reasoningEngine:
/// type: gcp:vertex:AiReasoningEngine
/// name: reasoning_engine
/// properties:
/// displayName: reasoning-engine
/// description: A basic reasoning engine
/// region: us-central1
/// spec:
/// agentFramework: google-adk
/// packageSpec:
/// pythonVersion: '3.11'
/// dependencyFilesGcsUri: ${bucket.url}/${bucketObjDependenciesTarGz.name}
/// pickleObjectGcsUri: ${bucket.url}/${bucketObjPickle.name}
/// requirementsGcsUri: ${bucket.url}/${bucketObjRequirementsTxt.name}
/// deploymentSpec:
/// pscInterfaceConfig:
/// networkAttachment: ${networkAttachment.id}
/// dnsPeeringConfigs:
/// - domain: example.com.
/// targetProject: ${project.projectId}
/// targetNetwork: ${network.name}
/// options:
/// dependsOn:
/// - ${wait35Minutes}
/// bucketObjRequirementsTxt:
/// type: gcp:storage:BucketObject
/// name: bucket_obj_requirements_txt
/// properties:
/// name: requirements.txt
/// bucket: ${bucket.id}
/// source:
/// fn::FileAsset: ./test-fixtures/requirements_adk.txt
/// bucketObjPickle:
/// type: gcp:storage:BucketObject
/// name: bucket_obj_pickle
/// properties:
/// name: code.pkl
/// bucket: ${bucket.id}
/// source:
/// fn::FileAsset: ./test-fixtures/pickle_adk.pkl
/// bucketObjDependenciesTarGz:
/// type: gcp:storage:BucketObject
/// name: bucket_obj_dependencies_tar_gz
/// properties:
/// name: dependencies.tar.gz
/// bucket: ${bucket.id}
/// source:
/// fn::FileAsset: ./test-fixtures/dependencies_adk.tar.gz
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: reasoning-engine
/// location: us-central1
/// uniformBucketLevelAccess: true
/// forceDestroy: true
/// # Destroy network attachment 35 minutes after reasoning engine is deleted.
/// # It guarantees that the network attachment has no more active PSC interfaces.
/// wait35Minutes:
/// type: time:Sleep
/// name: wait_35_minutes
/// properties:
/// destroyDuration: 35m
/// options:
/// dependsOn:
/// - ${networkAttachment}
/// networkAttachment:
/// type: gcp:compute:NetworkAttachment
/// name: network_attachment
/// properties:
/// name: network-attachment
/// region: us-central1
/// connectionPreference: ACCEPT_MANUAL
/// subnetworks:
/// - ${subnetwork.id}
/// subnetwork:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: subnetwork
/// region: us-central1
/// ipCidrRange: 10.0.0.0/16
/// network: ${network.id}
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: network
/// autoCreateSubnetworks: false
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Vertex Ai Reasoning Engine Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const classMethods = [{
/// apiMode: "async",
/// description: null,
/// name: "async_query",
/// parameters: {
/// type: "object",
/// required: [],
/// properties: {},
/// },
/// }];
/// const secret = new gcp.secretmanager.Secret("secret", {
/// secretId: "secret",
/// replication: {
/// auto: {},
/// },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
/// secret: secret.id,
/// secretData: "test",
/// });
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {accountId: "sa"});
/// const secretAccess = new gcp.secretmanager.SecretIamMember("secret_access", {
/// secretId: secret.id,
/// role: "roles/secretmanager.secretAccessor",
/// member: serviceAccount.member,
/// });
/// const project = gcp.organizations.getProject({});
/// const saIamObjectViewer = new gcp.projects.IAMMember("sa_iam_object_viewer", {
/// role: "roles/storage.objectViewer",
/// project: project.then(project => project.id),
/// member: serviceAccount.member,
/// });
/// const saIamAiPlatformUser = new gcp.projects.IAMMember("sa_iam_ai_platform_user", {
/// role: "roles/aiplatform.user",
/// project: project.then(project => project.id),
/// member: serviceAccount.member,
/// });
/// const saIamViewer = new gcp.projects.IAMMember("sa_iam_viewer", {
/// role: "roles/viewer",
/// project: project.then(project => project.id),
/// member: serviceAccount.member,
/// });
/// // Ensure we wait enough time for IAM permissions to be propagated
/// const wait5Minutes = new time.Sleep("wait_5_minutes", {createDuration: "5m"}, {
/// dependsOn: [
/// saIamAiPlatformUser,
/// saIamObjectViewer,
/// saIamViewer,
/// secretAccess,
/// secretVersion,
/// ],
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "reasoning-engine",
/// location: "us-central1",
/// uniformBucketLevelAccess: true,
/// forceDestroy: true,
/// });
/// const bucketObjRequirementsTxt = new gcp.storage.BucketObject("bucket_obj_requirements_txt", {
/// name: "requirements.txt",
/// bucket: bucket.id,
/// source: new pulumi.asset.FileAsset("./test-fixtures/requirements_adk.txt"),
/// });
/// const bucketObjPickle = new gcp.storage.BucketObject("bucket_obj_pickle", {
/// name: "code.pkl",
/// bucket: bucket.id,
/// source: new pulumi.asset.FileAsset("./test-fixtures/pickle_adk.pkl"),
/// });
/// const bucketObjDependenciesTarGz = new gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz", {
/// name: "dependencies.tar.gz",
/// bucket: bucket.id,
/// source: new pulumi.asset.FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// });
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
/// displayName: "reasoning-engine",
/// description: "A basic reasoning engine",
/// region: "us-central1",
/// encryptionSpec: {
/// kmsKeyName: "example-key",
/// },
/// spec: {
/// agentFramework: "google-adk",
/// classMethods: JSON.stringify(classMethods),
/// serviceAccount: serviceAccount.email,
/// deploymentSpec: {
/// minInstances: 1,
/// maxInstances: 3,
/// containerConcurrency: 5,
/// resourceLimits: {
/// cpu: "4",
/// memory: "4Gi",
/// },
/// envs: [
/// {
/// name: "var_1",
/// value: "value_2",
/// },
/// {
/// name: "var_2",
/// value: "value_2",
/// },
/// ],
/// secretEnvs: [
/// {
/// name: "secret_var_1",
/// secretRef: {
/// secret: secret.secretId,
/// version: "latest",
/// },
/// },
/// {
/// name: "secret_var_2",
/// secretRef: {
/// secret: secret.secretId,
/// version: "latest",
/// },
/// },
/// ],
/// },
/// packageSpec: {
/// dependencyFilesGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjDependenciesTarGz.name}`,
/// pickleObjectGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjPickle.name}`,
/// pythonVersion: "3.11",
/// requirementsGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjRequirementsTxt.name}`,
/// },
/// },
/// }, {
/// dependsOn: [wait5Minutes],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// class_methods = [{
/// "apiMode": "async",
/// "description": None,
/// "name": "async_query",
/// "parameters": {
/// "type": "object",
/// "required": [],
/// "properties": {},
/// },
/// }]
/// secret = gcp.secretmanager.Secret("secret",
/// secret_id="secret",
/// replication={
/// "auto": {},
/// })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
/// secret=secret.id,
/// secret_data="test")
/// service_account = gcp.serviceaccount.Account("service_account", account_id="sa")
/// secret_access = gcp.secretmanager.SecretIamMember("secret_access",
/// secret_id=secret.id,
/// role="roles/secretmanager.secretAccessor",
/// member=service_account.member)
/// project = gcp.organizations.get_project()
/// sa_iam_object_viewer = gcp.projects.IAMMember("sa_iam_object_viewer",
/// role="roles/storage.objectViewer",
/// project=project.id,
/// member=service_account.member)
/// sa_iam_ai_platform_user = gcp.projects.IAMMember("sa_iam_ai_platform_user",
/// role="roles/aiplatform.user",
/// project=project.id,
/// member=service_account.member)
/// sa_iam_viewer = gcp.projects.IAMMember("sa_iam_viewer",
/// role="roles/viewer",
/// project=project.id,
/// member=service_account.member)
/// # Ensure we wait enough time for IAM permissions to be propagated
/// wait5_minutes = time.Sleep("wait_5_minutes", create_duration="5m",
/// opts = pulumi.ResourceOptions(depends_on=[
/// sa_iam_ai_platform_user,
/// sa_iam_object_viewer,
/// sa_iam_viewer,
/// secret_access,
/// secret_version,
/// ]))
/// bucket = gcp.storage.Bucket("bucket",
/// name="reasoning-engine",
/// location="us-central1",
/// uniform_bucket_level_access=True,
/// force_destroy=True)
/// bucket_obj_requirements_txt = gcp.storage.BucketObject("bucket_obj_requirements_txt",
/// name="requirements.txt",
/// bucket=bucket.id,
/// source=pulumi.FileAsset("./test-fixtures/requirements_adk.txt"))
/// bucket_obj_pickle = gcp.storage.BucketObject("bucket_obj_pickle",
/// name="code.pkl",
/// bucket=bucket.id,
/// source=pulumi.FileAsset("./test-fixtures/pickle_adk.pkl"))
/// bucket_obj_dependencies_tar_gz = gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz",
/// name="dependencies.tar.gz",
/// bucket=bucket.id,
/// source=pulumi.FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
/// display_name="reasoning-engine",
/// description="A basic reasoning engine",
/// region="us-central1",
/// encryption_spec={
/// "kms_key_name": "example-key",
/// },
/// spec={
/// "agent_framework": "google-adk",
/// "class_methods": json.dumps(class_methods),
/// "service_account": service_account.email,
/// "deployment_spec": {
/// "min_instances": 1,
/// "max_instances": 3,
/// "container_concurrency": 5,
/// "resource_limits": {
/// "cpu": "4",
/// "memory": "4Gi",
/// },
/// "envs": [
/// {
/// "name": "var_1",
/// "value": "value_2",
/// },
/// {
/// "name": "var_2",
/// "value": "value_2",
/// },
/// ],
/// "secret_envs": [
/// {
/// "name": "secret_var_1",
/// "secret_ref": {
/// "secret": secret.secret_id,
/// "version": "latest",
/// },
/// },
/// {
/// "name": "secret_var_2",
/// "secret_ref": {
/// "secret": secret.secret_id,
/// "version": "latest",
/// },
/// },
/// ],
/// },
/// "package_spec": {
/// "dependency_files_gcs_uri": pulumi.Output.all(
/// url=bucket.url,
/// name=bucket_obj_dependencies_tar_gz.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
/// "pickle_object_gcs_uri": pulumi.Output.all(
/// url=bucket.url,
/// name=bucket_obj_pickle.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
/// "python_version": "3.11",
/// "requirements_gcs_uri": pulumi.Output.all(
/// url=bucket.url,
/// name=bucket_obj_requirements_txt.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[wait5_minutes]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var classMethods = new[]
/// {
///
/// {
/// { "apiMode", "async" },
/// { "description", null },
/// { "name", "async_query" },
/// { "parameters",
/// {
/// { "type", "object" },
/// { "required", new[] {} },
/// { "properties", null },
/// } },
/// },
/// };
///
/// var secret = new Gcp.SecretManager.Secret("secret", new()
/// {
/// SecretId = "secret",
/// Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
/// {
/// Auto = null,
/// },
/// });
///
/// var secretVersion = new Gcp.SecretManager.SecretVersion("secret_version", new()
/// {
/// Secret = secret.Id,
/// SecretData = "test",
/// });
///
/// var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
/// {
/// AccountId = "sa",
/// });
///
/// var secretAccess = new Gcp.SecretManager.SecretIamMember("secret_access", new()
/// {
/// SecretId = secret.Id,
/// Role = "roles/secretmanager.secretAccessor",
/// Member = serviceAccount.Member,
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var saIamObjectViewer = new Gcp.Projects.IAMMember("sa_iam_object_viewer", new()
/// {
/// Role = "roles/storage.objectViewer",
/// Project = project.Apply(getProjectResult => getProjectResult.Id),
/// Member = serviceAccount.Member,
/// });
///
/// var saIamAiPlatformUser = new Gcp.Projects.IAMMember("sa_iam_ai_platform_user", new()
/// {
/// Role = "roles/aiplatform.user",
/// Project = project.Apply(getProjectResult => getProjectResult.Id),
/// Member = serviceAccount.Member,
/// });
///
/// var saIamViewer = new Gcp.Projects.IAMMember("sa_iam_viewer", new()
/// {
/// Role = "roles/viewer",
/// Project = project.Apply(getProjectResult => getProjectResult.Id),
/// Member = serviceAccount.Member,
/// });
///
/// // Ensure we wait enough time for IAM permissions to be propagated
/// var wait5Minutes = new Time.Sleep("wait_5_minutes", new()
/// {
/// CreateDuration = "5m",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// saIamAiPlatformUser,
/// saIamObjectViewer,
/// saIamViewer,
/// secretAccess,
/// secretVersion,
/// },
/// });
///
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "reasoning-engine",
/// Location = "us-central1",
/// UniformBucketLevelAccess = true,
/// ForceDestroy = true,
/// });
///
/// var bucketObjRequirementsTxt = new Gcp.Storage.BucketObject("bucket_obj_requirements_txt", new()
/// {
/// Name = "requirements.txt",
/// Bucket = bucket.Id,
/// Source = new FileAsset("./test-fixtures/requirements_adk.txt"),
/// });
///
/// var bucketObjPickle = new Gcp.Storage.BucketObject("bucket_obj_pickle", new()
/// {
/// Name = "code.pkl",
/// Bucket = bucket.Id,
/// Source = new FileAsset("./test-fixtures/pickle_adk.pkl"),
/// });
///
/// var bucketObjDependenciesTarGz = new Gcp.Storage.BucketObject("bucket_obj_dependencies_tar_gz", new()
/// {
/// Name = "dependencies.tar.gz",
/// Bucket = bucket.Id,
/// Source = new FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// });
///
/// var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
/// {
/// DisplayName = "reasoning-engine",
/// Description = "A basic reasoning engine",
/// Region = "us-central1",
/// EncryptionSpec = new Gcp.Vertex.Inputs.AiReasoningEngineEncryptionSpecArgs
/// {
/// KmsKeyName = "example-key",
/// },
/// Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
/// {
/// AgentFramework = "google-adk",
/// ClassMethods = JsonSerializer.Serialize(classMethods),
/// ServiceAccount = serviceAccount.Email,
/// DeploymentSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecArgs
/// {
/// MinInstances = 1,
/// MaxInstances = 3,
/// ContainerConcurrency = 5,
/// ResourceLimits =
/// {
/// { "cpu", "4" },
/// { "memory", "4Gi" },
/// },
/// Envs = new[]
/// {
/// new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecEnvArgs
/// {
/// Name = "var_1",
/// Value = "value_2",
/// },
/// new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecEnvArgs
/// {
/// Name = "var_2",
/// Value = "value_2",
/// },
/// },
/// SecretEnvs = new[]
/// {
/// new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs
/// {
/// Name = "secret_var_1",
/// SecretRef = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs
/// {
/// Secret = secret.SecretId,
/// Version = "latest",
/// },
/// },
/// new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs
/// {
/// Name = "secret_var_2",
/// SecretRef = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs
/// {
/// Secret = secret.SecretId,
/// Version = "latest",
/// },
/// },
/// },
/// },
/// PackageSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecPackageSpecArgs
/// {
/// DependencyFilesGcsUri = Output.Tuple(bucket.Url, bucketObjDependenciesTarGz.Name).Apply(values =>
/// {
/// var url = values.Item1;
/// var name = values.Item2;
/// return $"{url}/{name}";
/// }),
/// PickleObjectGcsUri = Output.Tuple(bucket.Url, bucketObjPickle.Name).Apply(values =>
/// {
/// var url = values.Item1;
/// var name = values.Item2;
/// return $"{url}/{name}";
/// }),
/// PythonVersion = "3.11",
/// RequirementsGcsUri = Output.Tuple(bucket.Url, bucketObjRequirementsTxt.Name).Apply(values =>
/// {
/// var url = values.Item1;
/// var name = values.Item2;
/// return $"{url}/{name}";
/// }),
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// wait5Minutes,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// classMethods := []map[string]interface{}{
/// map[string]interface{}{
/// "apiMode":     "async",
/// "description": nil,
/// "name":        "async_query",
/// "parameters": map[string]interface{}{
/// "type":       "object",
/// "required":   []interface{}{},
/// "properties": map[string]interface{}{},
/// },
/// },
/// }
/// secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// SecretId: pulumi.String("secret"),
/// Replication: &secretmanager.SecretReplicationArgs{
/// Auto: &secretmanager.SecretReplicationAutoArgs{},
/// },
/// })
/// if err != nil {
/// return err
/// }
/// secretVersion, err := secretmanager.NewSecretVersion(ctx, "secret_version", &secretmanager.SecretVersionArgs{
/// Secret:     secret.ID(),
/// SecretData: pulumi.String("test"),
/// })
/// if err != nil {
/// return err
/// }
/// serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// AccountId: pulumi.String("sa"),
/// })
/// if err != nil {
/// return err
/// }
/// secretAccess, err := secretmanager.NewSecretIamMember(ctx, "secret_access", &secretmanager.SecretIamMemberArgs{
/// SecretId: secret.ID(),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Member:   serviceAccount.Member,
/// })
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// saIamObjectViewer, err := projects.NewIAMMember(ctx, "sa_iam_object_viewer", &projects.IAMMemberArgs{
/// Role:    pulumi.String("roles/storage.objectViewer"),
/// Project: pulumi.String(project.Id),
/// Member:  serviceAccount.Member,
/// })
/// if err != nil {
/// return err
/// }
/// saIamAiPlatformUser, err := projects.NewIAMMember(ctx, "sa_iam_ai_platform_user", &projects.IAMMemberArgs{
/// Role:    pulumi.String("roles/aiplatform.user"),
/// Project: pulumi.String(project.Id),
/// Member:  serviceAccount.Member,
/// })
/// if err != nil {
/// return err
/// }
/// saIamViewer, err := projects.NewIAMMember(ctx, "sa_iam_viewer", &projects.IAMMemberArgs{
/// Role:    pulumi.String("roles/viewer"),
/// Project: pulumi.String(project.Id),
/// Member:  serviceAccount.Member,
/// })
/// if err != nil {
/// return err
/// }
/// // Ensure we wait enough time for IAM permissions to be propagated
/// wait5Minutes, err := time.NewSleep(ctx, "wait_5_minutes", &time.SleepArgs{
/// CreateDuration: pulumi.String("5m"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// saIamAiPlatformUser,
/// saIamObjectViewer,
/// saIamViewer,
/// secretAccess,
/// secretVersion,
/// }))
/// if err != nil {
/// return err
/// }
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("reasoning-engine"),
/// Location:                 pulumi.String("us-central1"),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// ForceDestroy:             pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// bucketObjRequirementsTxt, err := storage.NewBucketObject(ctx, "bucket_obj_requirements_txt", &storage.BucketObjectArgs{
/// Name:   pulumi.String("requirements.txt"),
/// Bucket: bucket.ID(),
/// Source: pulumi.NewFileAsset("./test-fixtures/requirements_adk.txt"),
/// })
/// if err != nil {
/// return err
/// }
/// bucketObjPickle, err := storage.NewBucketObject(ctx, "bucket_obj_pickle", &storage.BucketObjectArgs{
/// Name:   pulumi.String("code.pkl"),
/// Bucket: bucket.ID(),
/// Source: pulumi.NewFileAsset("./test-fixtures/pickle_adk.pkl"),
/// })
/// if err != nil {
/// return err
/// }
/// bucketObjDependenciesTarGz, err := storage.NewBucketObject(ctx, "bucket_obj_dependencies_tar_gz", &storage.BucketObjectArgs{
/// Name:   pulumi.String("dependencies.tar.gz"),
/// Bucket: bucket.ID(),
/// Source: pulumi.NewFileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(classMethods)
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// DisplayName: pulumi.String("reasoning-engine"),
/// Description: pulumi.String("A basic reasoning engine"),
/// Region:      pulumi.String("us-central1"),
/// EncryptionSpec: &vertex.AiReasoningEngineEncryptionSpecArgs{
/// KmsKeyName: pulumi.String("example-key"),
/// },
/// Spec: &vertex.AiReasoningEngineSpecArgs{
/// AgentFramework: pulumi.String("google-adk"),
/// ClassMethods:   pulumi.String(json0),
/// ServiceAccount: serviceAccount.Email,
/// DeploymentSpec: &vertex.AiReasoningEngineSpecDeploymentSpecArgs{
/// MinInstances:         pulumi.Int(1),
/// MaxInstances:         pulumi.Int(3),
/// ContainerConcurrency: pulumi.Int(5),
/// ResourceLimits: pulumi.StringMap{
/// "cpu":    pulumi.String("4"),
/// "memory": pulumi.String("4Gi"),
/// },
/// Envs: vertex.AiReasoningEngineSpecDeploymentSpecEnvArray{
/// &vertex.AiReasoningEngineSpecDeploymentSpecEnvArgs{
/// Name:  pulumi.String("var_1"),
/// Value: pulumi.String("value_2"),
/// },
/// &vertex.AiReasoningEngineSpecDeploymentSpecEnvArgs{
/// Name:  pulumi.String("var_2"),
/// Value: pulumi.String("value_2"),
/// },
/// },
/// SecretEnvs: vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvArray{
/// &vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs{
/// Name: pulumi.String("secret_var_1"),
/// SecretRef: &vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs{
/// Secret:  secret.SecretId,
/// Version: pulumi.String("latest"),
/// },
/// },
/// &vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs{
/// Name: pulumi.String("secret_var_2"),
/// SecretRef: &vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs{
/// Secret:  secret.SecretId,
/// Version: pulumi.String("latest"),
/// },
/// },
/// },
/// },
/// PackageSpec: &vertex.AiReasoningEngineSpecPackageSpecArgs{
/// DependencyFilesGcsUri: pulumi.All(bucket.Url, bucketObjDependenciesTarGz.Name).ApplyT(func(_args []interface{}) (string, error) {
/// url := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("%v/%v", url, name), nil
/// }).(pulumi.StringOutput),
/// PickleObjectGcsUri: pulumi.All(bucket.Url, bucketObjPickle.Name).ApplyT(func(_args []interface{}) (string, error) {
/// url := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("%v/%v", url, name), nil
/// }).(pulumi.StringOutput),
/// PythonVersion: pulumi.String("3.11"),
/// RequirementsGcsUri: pulumi.All(bucket.Url, bucketObjRequirementsTxt.Name).ApplyT(func(_args []interface{}) (string, error) {
/// url := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("%v/%v", url, name), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// wait5Minutes,
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecPackageSpecArgs;
/// import com.pulumi.asset.FileAsset;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// final var classMethods = List.of(Map.ofEntries(
/// Map.entry("apiMode", "async"),
/// Map.entry("description", null),
/// Map.entry("name", "async_query"),
/// Map.entry("parameters", Map.ofEntries(
/// Map.entry("type", "object"),
/// Map.entry("required", List.of()),
/// Map.entry("properties", Map.ofEntries(
/// ))
/// ))
/// ));
///
/// var secret = new Secret("secret", SecretArgs.builder()
/// .secretId("secret")
/// .replication(SecretReplicationArgs.builder()
/// .auto(SecretReplicationAutoArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// var secretVersion = new SecretVersion("secretVersion", SecretVersionArgs.builder()
/// .secret(secret.id())
/// .secretData("test")
/// .build());
///
/// var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
/// .accountId("sa")
/// .build());
///
/// var secretAccess = new SecretIamMember("secretAccess", SecretIamMemberArgs.builder()
/// .secretId(secret.id())
/// .role("roles/secretmanager.secretAccessor")
/// .member(serviceAccount.member())
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var saIamObjectViewer = new IAMMember("saIamObjectViewer", IAMMemberArgs.builder()
/// .role("roles/storage.objectViewer")
/// .project(project.id())
/// .member(serviceAccount.member())
/// .build());
///
/// var saIamAiPlatformUser = new IAMMember("saIamAiPlatformUser", IAMMemberArgs.builder()
/// .role("roles/aiplatform.user")
/// .project(project.id())
/// .member(serviceAccount.member())
/// .build());
///
/// var saIamViewer = new IAMMember("saIamViewer", IAMMemberArgs.builder()
/// .role("roles/viewer")
/// .project(project.id())
/// .member(serviceAccount.member())
/// .build());
///
/// // Ensure we wait enough time for IAM permissions to be propagated
/// var wait5Minutes = new Sleep("wait5Minutes", SleepArgs.builder()
/// .createDuration("5m")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// saIamAiPlatformUser,
/// saIamObjectViewer,
/// saIamViewer,
/// secretAccess,
/// secretVersion)
/// .build());
///
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("reasoning-engine")
/// .location("us-central1")
/// .uniformBucketLevelAccess(true)
/// .forceDestroy(true)
/// .build());
///
/// var bucketObjRequirementsTxt = new BucketObject("bucketObjRequirementsTxt", BucketObjectArgs.builder()
/// .name("requirements.txt")
/// .bucket(bucket.id())
/// .source(new FileAsset("./test-fixtures/requirements_adk.txt"))
/// .build());
///
/// var bucketObjPickle = new BucketObject("bucketObjPickle", BucketObjectArgs.builder()
/// .name("code.pkl")
/// .bucket(bucket.id())
/// .source(new FileAsset("./test-fixtures/pickle_adk.pkl"))
/// .build());
///
/// var bucketObjDependenciesTarGz = new BucketObject("bucketObjDependenciesTarGz", BucketObjectArgs.builder()
/// .name("dependencies.tar.gz")
/// .bucket(bucket.id())
/// .source(new FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
/// .build());
///
/// var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
/// .displayName("reasoning-engine")
/// .description("A basic reasoning engine")
/// .region("us-central1")
/// .encryptionSpec(AiReasoningEngineEncryptionSpecArgs.builder()
/// .kmsKeyName("example-key")
/// .build())
/// .spec(AiReasoningEngineSpecArgs.builder()
/// .agentFramework("google-adk")
/// .classMethods(serializeJson(
/// classMethods))
/// .serviceAccount(serviceAccount.email())
/// .deploymentSpec(AiReasoningEngineSpecDeploymentSpecArgs.builder()
/// .minInstances(1)
/// .maxInstances(3)
/// .containerConcurrency(5)
/// .resourceLimits(Map.ofEntries(
/// Map.entry("cpu", "4"),
/// Map.entry("memory", "4Gi")
/// ))
/// .envs(
/// AiReasoningEngineSpecDeploymentSpecEnvArgs.builder()
/// .name("var_1")
/// .value("value_2")
/// .build(),
/// AiReasoningEngineSpecDeploymentSpecEnvArgs.builder()
/// .name("var_2")
/// .value("value_2")
/// .build())
/// .secretEnvs(
/// AiReasoningEngineSpecDeploymentSpecSecretEnvArgs.builder()
/// .name("secret_var_1")
/// .secretRef(AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs.builder()
/// .secret(secret.secretId())
/// .version("latest")
/// .build())
/// .build(),
/// AiReasoningEngineSpecDeploymentSpecSecretEnvArgs.builder()
/// .name("secret_var_2")
/// .secretRef(AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs.builder()
/// .secret(secret.secretId())
/// .version("latest")
/// .build())
/// .build())
/// .build())
/// .packageSpec(AiReasoningEngineSpecPackageSpecArgs.builder()
/// .dependencyFilesGcsUri(Output.tuple(bucket.url(), bucketObjDependenciesTarGz.name()).applyValue(values -> {
/// var url = values.t1;
/// var name = values.t2;
/// return String.format("%s/%s", url,name);
/// }))
/// .pickleObjectGcsUri(Output.tuple(bucket.url(), bucketObjPickle.name()).applyValue(values -> {
/// var url = values.t1;
/// var name = values.t2;
/// return String.format("%s/%s", url,name);
/// }))
/// .pythonVersion("3.11")
/// .requirementsGcsUri(Output.tuple(bucket.url(), bucketObjRequirementsTxt.name()).applyValue(values -> {
/// var url = values.t1;
/// var name = values.t2;
/// return String.format("%s/%s", url,name);
/// }))
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(wait5Minutes)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// reasoningEngine:
/// type: gcp:vertex:AiReasoningEngine
/// name: reasoning_engine
/// properties:
/// displayName: reasoning-engine
/// description: A basic reasoning engine
/// region: us-central1
/// encryptionSpec:
/// kmsKeyName: example-key
/// spec:
/// agentFramework: google-adk
/// classMethods:
/// fn::toJSON: ${classMethods}
/// serviceAccount: ${serviceAccount.email}
/// deploymentSpec:
/// minInstances: 1
/// maxInstances: 3
/// containerConcurrency: 5
/// resourceLimits:
/// cpu: '4'
/// memory: 4Gi
/// envs:
/// - name: var_1
/// value: value_2
/// - name: var_2
/// value: value_2
/// secretEnvs:
/// - name: secret_var_1
/// secretRef:
/// secret: ${secret.secretId}
/// version: latest
/// - name: secret_var_2
/// secretRef:
/// secret: ${secret.secretId}
/// version: latest
/// packageSpec:
/// dependencyFilesGcsUri: ${bucket.url}/${bucketObjDependenciesTarGz.name}
/// pickleObjectGcsUri: ${bucket.url}/${bucketObjPickle.name}
/// pythonVersion: '3.11'
/// requirementsGcsUri: ${bucket.url}/${bucketObjRequirementsTxt.name}
/// options:
/// dependsOn:
/// - ${wait5Minutes}
/// # Ensure we wait enough time for IAM permissions to be propagated
/// wait5Minutes:
/// type: time:Sleep
/// name: wait_5_minutes
/// properties:
/// createDuration: 5m
/// options:
/// dependsOn:
/// - ${saIamAiPlatformUser}
/// - ${saIamObjectViewer}
/// - ${saIamViewer}
/// - ${secretAccess}
/// - ${secretVersion}
/// secretVersion:
/// type: gcp:secretmanager:SecretVersion
/// name: secret_version
/// properties:
/// secret: ${secret.id}
/// secretData: test
/// secret:
/// type: gcp:secretmanager:Secret
/// properties:
/// secretId: secret
/// replication:
/// auto: {}
/// secretAccess:
/// type: gcp:secretmanager:SecretIamMember
/// name: secret_access
/// properties:
/// secretId: ${secret.id}
/// role: roles/secretmanager.secretAccessor
/// member: ${serviceAccount.member}
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: reasoning-engine
/// location: us-central1
/// uniformBucketLevelAccess: true
/// forceDestroy: true
/// bucketObjRequirementsTxt:
/// type: gcp:storage:BucketObject
/// name: bucket_obj_requirements_txt
/// properties:
/// name: requirements.txt
/// bucket: ${bucket.id}
/// source:
/// fn::FileAsset: ./test-fixtures/requirements_adk.txt
/// bucketObjPickle:
/// type: gcp:storage:BucketObject
/// name: bucket_obj_pickle
/// properties:
/// name: code.pkl
/// bucket: ${bucket.id}
/// source:
/// fn::FileAsset: ./test-fixtures/pickle_adk.pkl
/// bucketObjDependenciesTarGz:
/// type: gcp:storage:BucketObject
/// name: bucket_obj_dependencies_tar_gz
/// properties:
/// name: dependencies.tar.gz
/// bucket: ${bucket.id}
/// source:
/// fn::FileAsset: ./test-fixtures/dependencies_adk.tar.gz
/// serviceAccount:
/// type: gcp:serviceaccount:Account
/// name: service_account
/// properties:
/// accountId: sa
/// saIamObjectViewer:
/// type: gcp:projects:IAMMember
/// name: sa_iam_object_viewer
/// properties:
/// role: roles/storage.objectViewer
/// project: ${project.id}
/// member: ${serviceAccount.member}
/// saIamAiPlatformUser:
/// type: gcp:projects:IAMMember
/// name: sa_iam_ai_platform_user
/// properties:
/// role: roles/aiplatform.user
/// project: ${project.id}
/// member: ${serviceAccount.member}
/// saIamViewer:
/// type: gcp:projects:IAMMember
/// name: sa_iam_viewer
/// properties:
/// role: roles/viewer
/// project: ${project.id}
/// member: ${serviceAccount.member}
/// variables:
/// classMethods:
/// - apiMode: async
/// description: null
/// name: async_query
/// parameters:
/// type: object
/// required: []
/// properties: {}
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ReasoningEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/reasoningEngines/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ReasoningEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default projects/{{project}}/locations/{{region}}/reasoningEngines/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{name}}
/// ```
class AiReasoningEngine extends CustomResource {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// The description of the ReasoningEngine.
  late final Output<String?> description;

  /// The display name of the ReasoningEngine.
  late final Output<String> displayName;

  /// Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// If set, this ReasoningEngine and all sub-resources of this ReasoningEngine
  /// will be secured by this key.
  /// Structure is documented below.
  late final Output<AiReasoningEngineEncryptionSpec?> encryptionSpec;

  /// The generated name of the ReasoningEngine, in the format
  /// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the reasoning engine. eg us-central1
  late final Output<String?> region;

  /// Optional. Configurations of the ReasoningEngine.
  /// Structure is documented below.
  late final Output<AiReasoningEngineSpec?> spec;

  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
  /// format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiReasoningEngine(
    String name, {
    AiReasoningEngineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiReasoningEngine:AiReasoningEngine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionSpec =
        Output.createUnknown<AiReasoningEngineEncryptionSpec?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String?>();
    this.spec = Output.createUnknown<AiReasoningEngineSpec?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
