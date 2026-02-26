import 'package:pulumi/pulumi.dart';
import '../notebook_execution_custom_environment_spec/notebook_execution_custom_environment_spec.dart';
import '../notebook_execution_dataform_repository_source/notebook_execution_dataform_repository_source.dart';
import '../notebook_execution_direct_notebook_source/notebook_execution_direct_notebook_source.dart';
import '../notebook_execution_gcs_notebook_source/notebook_execution_gcs_notebook_source.dart';
import 'notebook_execution_args.dart';

/// 'An instance of a notebook Execution'
///
///
/// To get more information about NotebookExecution, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.notebookExecutionJobs)
/// * How-to Guides
/// * [Schedule a notebook run](https://cloud.google.com/colab/docs/schedule-notebook-run)
///
/// ## Example Usage
///
/// ### Colab Notebook Execution Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
/// name: "runtime-template-name",
/// displayName: "Runtime template",
/// location: "us-central1",
/// machineSpec: {
/// machineType: "e2-standard-4",
/// },
/// networkSpec: {
/// enableInternetAccess: true,
/// },
/// });
/// const outputBucket = new gcp.storage.Bucket("output_bucket", {
/// name: "my_bucket",
/// location: "US",
/// forceDestroy: true,
/// uniformBucketLevelAccess: true,
/// });
/// const notebook_execution = new gcp.colab.NotebookExecution("notebook-execution", {
/// displayName: "Notebook execution basic",
/// location: "us-central1",
/// directNotebookSource: {
/// content: std.base64encode({
/// input: `    {
/// \\"cells\\": [
/// {
/// \\"cell_type\\": \\"code\\",
/// \\"execution_count\\": null,
/// \\"metadata\\": {},
/// \\"outputs\\": [],
/// \\"source\\": [
/// \\"print(\\\\\\"Hello, World!\\\\\\")\\"
/// ]
/// }
/// ],
/// \\"metadata\\": {
/// \\"kernelspec\\": {
/// \\"display_name\\": \\"Python 3\\",
/// \\"language\\": \\"python\\",
/// \\"name\\": \\"python3\\"
/// },
/// \\"language_info\\": {
/// \\"codemirror_mode\\": {
/// \\"name\\": \\"ipython\\",
/// \\"version\\": 3
/// },
/// \\"file_extension\\": \\".py\\",
/// \\"mimetype\\": \\"text/x-python\\",
/// \\"name\\": \\"python\\",
/// \\"nbconvert_exporter\\": \\"python\\",
/// \\"pygments_lexer\\": \\"ipython3\\",
/// \\"version\\": \\"3.8.5\\"
/// }
/// },
/// \\"nbformat\\": 4,
/// \\"nbformat_minor\\": 4
/// }
/// `,
/// }).then(invoke => invoke.result),
/// },
/// notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
/// gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
/// serviceAccount: "my@service-account.com",
/// }, {
/// dependsOn: [
/// myRuntimeTemplate,
/// outputBucket,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
/// name="runtime-template-name",
/// display_name="Runtime template",
/// location="us-central1",
/// machine_spec={
/// "machine_type": "e2-standard-4",
/// },
/// network_spec={
/// "enable_internet_access": True,
/// })
/// output_bucket = gcp.storage.Bucket("output_bucket",
/// name="my_bucket",
/// location="US",
/// force_destroy=True,
/// uniform_bucket_level_access=True)
/// notebook_execution = gcp.colab.NotebookExecution("notebook-execution",
/// display_name="Notebook execution basic",
/// location="us-central1",
/// direct_notebook_source={
/// "content": std.base64encode(input="""    {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// """).result,
/// },
/// notebook_runtime_template_resource_name=pulumi.Output.all(
/// project=my_runtime_template.project,
/// location=my_runtime_template.location,
/// name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
/// gcs_output_uri=output_bucket.name.apply(lambda name: f"gs://{name}"),
/// service_account="my@service-account.com",
/// opts = pulumi.ResourceOptions(depends_on=[
/// my_runtime_template,
/// output_bucket,
/// ]))
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
/// var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
/// {
/// Name = "runtime-template-name",
/// DisplayName = "Runtime template",
/// Location = "us-central1",
/// MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
/// {
/// MachineType = "e2-standard-4",
/// },
/// NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
/// {
/// EnableInternetAccess = true,
/// },
/// });
///
/// var outputBucket = new Gcp.Storage.Bucket("output_bucket", new()
/// {
/// Name = "my_bucket",
/// Location = "US",
/// ForceDestroy = true,
/// UniformBucketLevelAccess = true,
/// });
///
/// var notebook_execution = new Gcp.Colab.NotebookExecution("notebook-execution", new()
/// {
/// DisplayName = "Notebook execution basic",
/// Location = "us-central1",
/// DirectNotebookSource = new Gcp.Colab.Inputs.NotebookExecutionDirectNotebookSourceArgs
/// {
/// Content = Std.Base64encode.Invoke(new()
/// {
/// Input = @"    {
/// \""cells\"": [
/// {
/// \""cell_type\"": \""code\"",
/// \""execution_count\"": null,
/// \""metadata\"": {},
/// \""outputs\"": [],
/// \""source\"": [
/// \""print(\\\""Hello, World!\\\"")\""
/// ]
/// }
/// ],
/// \""metadata\"": {
/// \""kernelspec\"": {
/// \""display_name\"": \""Python 3\"",
/// \""language\"": \""python\"",
/// \""name\"": \""python3\""
/// },
/// \""language_info\"": {
/// \""codemirror_mode\"": {
/// \""name\"": \""ipython\"",
/// \""version\"": 3
/// },
/// \""file_extension\"": \"".py\"",
/// \""mimetype\"": \""text/x-python\"",
/// \""name\"": \""python\"",
/// \""nbconvert_exporter\"": \""python\"",
/// \""pygments_lexer\"": \""ipython3\"",
/// \""version\"": \""3.8.5\""
/// }
/// },
/// \""nbformat\"": 4,
/// \""nbformat_minor\"": 4
/// }
/// ",
/// }).Apply(invoke => invoke.Result),
/// },
/// NotebookRuntimeTemplateResourceName = Output.Tuple(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).Apply(values =>
/// {
/// var project = values.Item1;
/// var location = values.Item2;
/// var name = values.Item3;
/// return $"projects/{project}/locations/{location}/notebookRuntimeTemplates/{name}";
/// }),
/// GcsOutputUri = outputBucket.Name.Apply(name => $"gs://{name}"),
/// ServiceAccount = "my@service-account.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// myRuntimeTemplate,
/// outputBucket,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// Name:        pulumi.String("runtime-template-name"),
/// DisplayName: pulumi.String("Runtime template"),
/// Location:    pulumi.String("us-central1"),
/// MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// MachineType: pulumi.String("e2-standard-4"),
/// },
/// NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// EnableInternetAccess: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// outputBucket, err := storage.NewBucket(ctx, "output_bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("my_bucket"),
/// Location:                 pulumi.String("US"),
/// ForceDestroy:             pulumi.Bool(true),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: `    {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// `,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = colab.NewNotebookExecution(ctx, "notebook-execution", &colab.NotebookExecutionArgs{
/// DisplayName: pulumi.String("Notebook execution basic"),
/// Location:    pulumi.String("us-central1"),
/// DirectNotebookSource: &colab.NotebookExecutionDirectNotebookSourceArgs{
/// Content: pulumi.String(invokeBase64encode.Result),
/// },
/// NotebookRuntimeTemplateResourceName: pulumi.All(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// location := _args[1].(string)
/// name := _args[2].(string)
/// return fmt.Sprintf("projects/%v/locations/%v/notebookRuntimeTemplates/%v", project, location, name), nil
/// }).(pulumi.StringOutput),
/// GcsOutputUri: outputBucket.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("gs://%v", name), nil
/// }).(pulumi.StringOutput),
/// ServiceAccount: pulumi.String("my@service-account.com"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// myRuntimeTemplate,
/// outputBucket,
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
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.colab.NotebookExecution;
/// import com.pulumi.gcp.colab.NotebookExecutionArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionDirectNotebookSourceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var myRuntimeTemplate = new RuntimeTemplate("myRuntimeTemplate", RuntimeTemplateArgs.builder()
/// .name("runtime-template-name")
/// .displayName("Runtime template")
/// .location("us-central1")
/// .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
/// .machineType("e2-standard-4")
/// .build())
/// .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
/// .enableInternetAccess(true)
/// .build())
/// .build());
///
/// var outputBucket = new Bucket("outputBucket", BucketArgs.builder()
/// .name("my_bucket")
/// .location("US")
/// .forceDestroy(true)
/// .uniformBucketLevelAccess(true)
/// .build());
///
/// var notebook_execution = new NotebookExecution("notebook-execution", NotebookExecutionArgs.builder()
/// .displayName("Notebook execution basic")
/// .location("us-central1")
/// .directNotebookSource(NotebookExecutionDirectNotebookSourceArgs.builder()
/// .content(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("""
/// {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// """)
/// .build()).result())
/// .build())
/// .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
/// var project = values.t1;
/// var location = values.t2;
/// var name = values.t3;
/// return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
/// }))
/// .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .serviceAccount("my@service-account.com")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// myRuntimeTemplate,
/// outputBucket)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myRuntimeTemplate:
/// type: gcp:colab:RuntimeTemplate
/// name: my_runtime_template
/// properties:
/// name: runtime-template-name
/// displayName: Runtime template
/// location: us-central1
/// machineSpec:
/// machineType: e2-standard-4
/// networkSpec:
/// enableInternetAccess: true
/// outputBucket:
/// type: gcp:storage:Bucket
/// name: output_bucket
/// properties:
/// name: my_bucket
/// location: US
/// forceDestroy: true
/// uniformBucketLevelAccess: true
/// notebook-execution:
/// type: gcp:colab:NotebookExecution
/// properties:
/// displayName: Notebook execution basic
/// location: us-central1
/// directNotebookSource:
/// content:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: |2
/// {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// return: result
/// notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
/// gcsOutputUri: gs://${outputBucket.name}
/// serviceAccount: my@service-account.com
/// options:
/// dependsOn:
/// - ${myRuntimeTemplate}
/// - ${outputBucket}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Colab Notebook Execution Custom Env
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
/// name: "colab-test-default",
/// autoCreateSubnetworks: false,
/// });
/// const mySubnetwork = new gcp.compute.Subnetwork("my_subnetwork", {
/// name: "colab-test-default",
/// network: myNetwork.id,
/// region: "us-central1",
/// ipCidrRange: "10.0.1.0/24",
/// });
/// const outputBucket = new gcp.storage.Bucket("output_bucket", {
/// name: "my_bucket",
/// location: "US",
/// forceDestroy: true,
/// uniformBucketLevelAccess: true,
/// });
/// const notebook_execution = new gcp.colab.NotebookExecution("notebook-execution", {
/// displayName: "Notebook execution basic",
/// location: "us-central1",
/// directNotebookSource: {
/// content: std.base64encode({
/// input: `    {
/// \\"cells\\": [
/// {
/// \\"cell_type\\": \\"code\\",
/// \\"execution_count\\": null,
/// \\"metadata\\": {},
/// \\"outputs\\": [],
/// \\"source\\": [
/// \\"print(\\\\\\"Hello, World!\\\\\\")\\"
/// ]
/// }
/// ],
/// \\"metadata\\": {
/// \\"kernelspec\\": {
/// \\"display_name\\": \\"Python 3\\",
/// \\"language\\": \\"python\\",
/// \\"name\\": \\"python3\\"
/// },
/// \\"language_info\\": {
/// \\"codemirror_mode\\": {
/// \\"name\\": \\"ipython\\",
/// \\"version\\": 3
/// },
/// \\"file_extension\\": \\".py\\",
/// \\"mimetype\\": \\"text/x-python\\",
/// \\"name\\": \\"python\\",
/// \\"nbconvert_exporter\\": \\"python\\",
/// \\"pygments_lexer\\": \\"ipython3\\",
/// \\"version\\": \\"3.8.5\\"
/// }
/// },
/// \\"nbformat\\": 4,
/// \\"nbformat_minor\\": 4
/// }
/// `,
/// }).then(invoke => invoke.result),
/// },
/// customEnvironmentSpec: {
/// machineSpec: {
/// machineType: "n1-standard-2",
/// acceleratorType: "NVIDIA_TESLA_T4",
/// acceleratorCount: 1,
/// },
/// persistentDiskSpec: {
/// diskType: "pd-standard",
/// diskSizeGb: "200",
/// },
/// networkSpec: {
/// enableInternetAccess: true,
/// network: myNetwork.id,
/// subnetwork: mySubnetwork.id,
/// },
/// },
/// gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
/// serviceAccount: "my@service-account.com",
/// }, {
/// dependsOn: [outputBucket],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_network = gcp.compute.Network("my_network",
/// name="colab-test-default",
/// auto_create_subnetworks=False)
/// my_subnetwork = gcp.compute.Subnetwork("my_subnetwork",
/// name="colab-test-default",
/// network=my_network.id,
/// region="us-central1",
/// ip_cidr_range="10.0.1.0/24")
/// output_bucket = gcp.storage.Bucket("output_bucket",
/// name="my_bucket",
/// location="US",
/// force_destroy=True,
/// uniform_bucket_level_access=True)
/// notebook_execution = gcp.colab.NotebookExecution("notebook-execution",
/// display_name="Notebook execution basic",
/// location="us-central1",
/// direct_notebook_source={
/// "content": std.base64encode(input="""    {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// """).result,
/// },
/// custom_environment_spec={
/// "machine_spec": {
/// "machine_type": "n1-standard-2",
/// "accelerator_type": "NVIDIA_TESLA_T4",
/// "accelerator_count": 1,
/// },
/// "persistent_disk_spec": {
/// "disk_type": "pd-standard",
/// "disk_size_gb": "200",
/// },
/// "network_spec": {
/// "enable_internet_access": True,
/// "network": my_network.id,
/// "subnetwork": my_subnetwork.id,
/// },
/// },
/// gcs_output_uri=output_bucket.name.apply(lambda name: f"gs://{name}"),
/// service_account="my@service-account.com",
/// opts = pulumi.ResourceOptions(depends_on=[output_bucket]))
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
/// var myNetwork = new Gcp.Compute.Network("my_network", new()
/// {
/// Name = "colab-test-default",
/// AutoCreateSubnetworks = false,
/// });
///
/// var mySubnetwork = new Gcp.Compute.Subnetwork("my_subnetwork", new()
/// {
/// Name = "colab-test-default",
/// Network = myNetwork.Id,
/// Region = "us-central1",
/// IpCidrRange = "10.0.1.0/24",
/// });
///
/// var outputBucket = new Gcp.Storage.Bucket("output_bucket", new()
/// {
/// Name = "my_bucket",
/// Location = "US",
/// ForceDestroy = true,
/// UniformBucketLevelAccess = true,
/// });
///
/// var notebook_execution = new Gcp.Colab.NotebookExecution("notebook-execution", new()
/// {
/// DisplayName = "Notebook execution basic",
/// Location = "us-central1",
/// DirectNotebookSource = new Gcp.Colab.Inputs.NotebookExecutionDirectNotebookSourceArgs
/// {
/// Content = Std.Base64encode.Invoke(new()
/// {
/// Input = @"    {
/// \""cells\"": [
/// {
/// \""cell_type\"": \""code\"",
/// \""execution_count\"": null,
/// \""metadata\"": {},
/// \""outputs\"": [],
/// \""source\"": [
/// \""print(\\\""Hello, World!\\\"")\""
/// ]
/// }
/// ],
/// \""metadata\"": {
/// \""kernelspec\"": {
/// \""display_name\"": \""Python 3\"",
/// \""language\"": \""python\"",
/// \""name\"": \""python3\""
/// },
/// \""language_info\"": {
/// \""codemirror_mode\"": {
/// \""name\"": \""ipython\"",
/// \""version\"": 3
/// },
/// \""file_extension\"": \"".py\"",
/// \""mimetype\"": \""text/x-python\"",
/// \""name\"": \""python\"",
/// \""nbconvert_exporter\"": \""python\"",
/// \""pygments_lexer\"": \""ipython3\"",
/// \""version\"": \""3.8.5\""
/// }
/// },
/// \""nbformat\"": 4,
/// \""nbformat_minor\"": 4
/// }
/// ",
/// }).Apply(invoke => invoke.Result),
/// },
/// CustomEnvironmentSpec = new Gcp.Colab.Inputs.NotebookExecutionCustomEnvironmentSpecArgs
/// {
/// MachineSpec = new Gcp.Colab.Inputs.NotebookExecutionCustomEnvironmentSpecMachineSpecArgs
/// {
/// MachineType = "n1-standard-2",
/// AcceleratorType = "NVIDIA_TESLA_T4",
/// AcceleratorCount = 1,
/// },
/// PersistentDiskSpec = new Gcp.Colab.Inputs.NotebookExecutionCustomEnvironmentSpecPersistentDiskSpecArgs
/// {
/// DiskType = "pd-standard",
/// DiskSizeGb = "200",
/// },
/// NetworkSpec = new Gcp.Colab.Inputs.NotebookExecutionCustomEnvironmentSpecNetworkSpecArgs
/// {
/// EnableInternetAccess = true,
/// Network = myNetwork.Id,
/// Subnetwork = mySubnetwork.Id,
/// },
/// },
/// GcsOutputUri = outputBucket.Name.Apply(name => $"gs://{name}"),
/// ServiceAccount = "my@service-account.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// outputBucket,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// Name:                  pulumi.String("colab-test-default"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// mySubnetwork, err := compute.NewSubnetwork(ctx, "my_subnetwork", &compute.SubnetworkArgs{
/// Name:        pulumi.String("colab-test-default"),
/// Network:     myNetwork.ID(),
/// Region:      pulumi.String("us-central1"),
/// IpCidrRange: pulumi.String("10.0.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// outputBucket, err := storage.NewBucket(ctx, "output_bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("my_bucket"),
/// Location:                 pulumi.String("US"),
/// ForceDestroy:             pulumi.Bool(true),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: `    {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// `,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = colab.NewNotebookExecution(ctx, "notebook-execution", &colab.NotebookExecutionArgs{
/// DisplayName: pulumi.String("Notebook execution basic"),
/// Location:    pulumi.String("us-central1"),
/// DirectNotebookSource: &colab.NotebookExecutionDirectNotebookSourceArgs{
/// Content: pulumi.String(invokeBase64encode.Result),
/// },
/// CustomEnvironmentSpec: &colab.NotebookExecutionCustomEnvironmentSpecArgs{
/// MachineSpec: &colab.NotebookExecutionCustomEnvironmentSpecMachineSpecArgs{
/// MachineType:      pulumi.String("n1-standard-2"),
/// AcceleratorType:  pulumi.String("NVIDIA_TESLA_T4"),
/// AcceleratorCount: pulumi.Int(1),
/// },
/// PersistentDiskSpec: &colab.NotebookExecutionCustomEnvironmentSpecPersistentDiskSpecArgs{
/// DiskType:   pulumi.String("pd-standard"),
/// DiskSizeGb: pulumi.String("200"),
/// },
/// NetworkSpec: &colab.NotebookExecutionCustomEnvironmentSpecNetworkSpecArgs{
/// EnableInternetAccess: pulumi.Bool(true),
/// Network:              myNetwork.ID(),
/// Subnetwork:           mySubnetwork.ID(),
/// },
/// },
/// GcsOutputUri: outputBucket.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("gs://%v", name), nil
/// }).(pulumi.StringOutput),
/// ServiceAccount: pulumi.String("my@service-account.com"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// outputBucket,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.colab.NotebookExecution;
/// import com.pulumi.gcp.colab.NotebookExecutionArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionDirectNotebookSourceArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionCustomEnvironmentSpecArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionCustomEnvironmentSpecMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionCustomEnvironmentSpecPersistentDiskSpecArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionCustomEnvironmentSpecNetworkSpecArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var myNetwork = new Network("myNetwork", NetworkArgs.builder()
/// .name("colab-test-default")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var mySubnetwork = new Subnetwork("mySubnetwork", SubnetworkArgs.builder()
/// .name("colab-test-default")
/// .network(myNetwork.id())
/// .region("us-central1")
/// .ipCidrRange("10.0.1.0/24")
/// .build());
///
/// var outputBucket = new Bucket("outputBucket", BucketArgs.builder()
/// .name("my_bucket")
/// .location("US")
/// .forceDestroy(true)
/// .uniformBucketLevelAccess(true)
/// .build());
///
/// var notebook_execution = new NotebookExecution("notebook-execution", NotebookExecutionArgs.builder()
/// .displayName("Notebook execution basic")
/// .location("us-central1")
/// .directNotebookSource(NotebookExecutionDirectNotebookSourceArgs.builder()
/// .content(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("""
/// {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// """)
/// .build()).result())
/// .build())
/// .customEnvironmentSpec(NotebookExecutionCustomEnvironmentSpecArgs.builder()
/// .machineSpec(NotebookExecutionCustomEnvironmentSpecMachineSpecArgs.builder()
/// .machineType("n1-standard-2")
/// .acceleratorType("NVIDIA_TESLA_T4")
/// .acceleratorCount(1)
/// .build())
/// .persistentDiskSpec(NotebookExecutionCustomEnvironmentSpecPersistentDiskSpecArgs.builder()
/// .diskType("pd-standard")
/// .diskSizeGb("200")
/// .build())
/// .networkSpec(NotebookExecutionCustomEnvironmentSpecNetworkSpecArgs.builder()
/// .enableInternetAccess(true)
/// .network(myNetwork.id())
/// .subnetwork(mySubnetwork.id())
/// .build())
/// .build())
/// .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .serviceAccount("my@service-account.com")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(outputBucket)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myNetwork:
/// type: gcp:compute:Network
/// name: my_network
/// properties:
/// name: colab-test-default
/// autoCreateSubnetworks: false
/// mySubnetwork:
/// type: gcp:compute:Subnetwork
/// name: my_subnetwork
/// properties:
/// name: colab-test-default
/// network: ${myNetwork.id}
/// region: us-central1
/// ipCidrRange: 10.0.1.0/24
/// outputBucket:
/// type: gcp:storage:Bucket
/// name: output_bucket
/// properties:
/// name: my_bucket
/// location: US
/// forceDestroy: true
/// uniformBucketLevelAccess: true
/// notebook-execution:
/// type: gcp:colab:NotebookExecution
/// properties:
/// displayName: Notebook execution basic
/// location: us-central1
/// directNotebookSource:
/// content:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: |2
/// {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// return: result
/// customEnvironmentSpec:
/// machineSpec:
/// machineType: n1-standard-2
/// acceleratorType: NVIDIA_TESLA_T4
/// acceleratorCount: '1'
/// persistentDiskSpec:
/// diskType: pd-standard
/// diskSizeGb: 200
/// networkSpec:
/// enableInternetAccess: true
/// network: ${myNetwork.id}
/// subnetwork: ${mySubnetwork.id}
/// gcsOutputUri: gs://${outputBucket.name}
/// serviceAccount: my@service-account.com
/// options:
/// dependsOn:
/// - ${outputBucket}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Colab Notebook Execution Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
/// name: "runtime-template-name",
/// displayName: "Runtime template",
/// location: "us-central1",
/// machineSpec: {
/// machineType: "e2-standard-4",
/// },
/// networkSpec: {
/// enableInternetAccess: true,
/// },
/// });
/// const outputBucket = new gcp.storage.Bucket("output_bucket", {
/// name: "my_bucket",
/// location: "US",
/// forceDestroy: true,
/// uniformBucketLevelAccess: true,
/// });
/// const notebook = new gcp.storage.BucketObject("notebook", {
/// name: "hello_world.ipynb",
/// bucket: outputBucket.name,
/// content: `    {
/// \\"cells\\": [
/// {
/// \\"cell_type\\": \\"code\\",
/// \\"execution_count\\": null,
/// \\"metadata\\": {},
/// \\"outputs\\": [],
/// \\"source\\": [
/// \\"print(\\\\\\"Hello, World!\\\\\\")\\"
/// ]
/// }
/// ],
/// \\"metadata\\": {
/// \\"kernelspec\\": {
/// \\"display_name\\": \\"Python 3\\",
/// \\"language\\": \\"python\\",
/// \\"name\\": \\"python3\\"
/// },
/// \\"language_info\\": {
/// \\"codemirror_mode\\": {
/// \\"name\\": \\"ipython\\",
/// \\"version\\": 3
/// },
/// \\"file_extension\\": \\".py\\",
/// \\"mimetype\\": \\"text/x-python\\",
/// \\"name\\": \\"python\\",
/// \\"nbconvert_exporter\\": \\"python\\",
/// \\"pygments_lexer\\": \\"ipython3\\",
/// \\"version\\": \\"3.8.5\\"
/// }
/// },
/// \\"nbformat\\": 4,
/// \\"nbformat_minor\\": 4
/// }
/// `,
/// });
/// const notebook_execution = new gcp.colab.NotebookExecution("notebook-execution", {
/// notebookExecutionJobId: "colab-notebook-execution",
/// displayName: "Notebook execution full",
/// location: "us-central1",
/// executionTimeout: "86400s",
/// gcsNotebookSource: {
/// uri: pulumi.interpolate`gs://${notebook.bucket}/${notebook.name}`,
/// generation: notebook.generation,
/// },
/// serviceAccount: "my@service-account.com",
/// gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
/// notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
/// }, {
/// dependsOn: [
/// notebook,
/// outputBucket,
/// myRuntimeTemplate,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
/// name="runtime-template-name",
/// display_name="Runtime template",
/// location="us-central1",
/// machine_spec={
/// "machine_type": "e2-standard-4",
/// },
/// network_spec={
/// "enable_internet_access": True,
/// })
/// output_bucket = gcp.storage.Bucket("output_bucket",
/// name="my_bucket",
/// location="US",
/// force_destroy=True,
/// uniform_bucket_level_access=True)
/// notebook = gcp.storage.BucketObject("notebook",
/// name="hello_world.ipynb",
/// bucket=output_bucket.name,
/// content="""    {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// """)
/// notebook_execution = gcp.colab.NotebookExecution("notebook-execution",
/// notebook_execution_job_id="colab-notebook-execution",
/// display_name="Notebook execution full",
/// location="us-central1",
/// execution_timeout="86400s",
/// gcs_notebook_source={
/// "uri": pulumi.Output.all(
/// bucket=notebook.bucket,
/// name=notebook.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ,
/// "generation": notebook.generation,
/// },
/// service_account="my@service-account.com",
/// gcs_output_uri=output_bucket.name.apply(lambda name: f"gs://{name}"),
/// notebook_runtime_template_resource_name=pulumi.Output.all(
/// project=my_runtime_template.project,
/// location=my_runtime_template.location,
/// name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
/// opts = pulumi.ResourceOptions(depends_on=[
/// notebook,
/// output_bucket,
/// my_runtime_template,
/// ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
/// {
/// Name = "runtime-template-name",
/// DisplayName = "Runtime template",
/// Location = "us-central1",
/// MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
/// {
/// MachineType = "e2-standard-4",
/// },
/// NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
/// {
/// EnableInternetAccess = true,
/// },
/// });
///
/// var outputBucket = new Gcp.Storage.Bucket("output_bucket", new()
/// {
/// Name = "my_bucket",
/// Location = "US",
/// ForceDestroy = true,
/// UniformBucketLevelAccess = true,
/// });
///
/// var notebook = new Gcp.Storage.BucketObject("notebook", new()
/// {
/// Name = "hello_world.ipynb",
/// Bucket = outputBucket.Name,
/// Content = @"    {
/// \""cells\"": [
/// {
/// \""cell_type\"": \""code\"",
/// \""execution_count\"": null,
/// \""metadata\"": {},
/// \""outputs\"": [],
/// \""source\"": [
/// \""print(\\\""Hello, World!\\\"")\""
/// ]
/// }
/// ],
/// \""metadata\"": {
/// \""kernelspec\"": {
/// \""display_name\"": \""Python 3\"",
/// \""language\"": \""python\"",
/// \""name\"": \""python3\""
/// },
/// \""language_info\"": {
/// \""codemirror_mode\"": {
/// \""name\"": \""ipython\"",
/// \""version\"": 3
/// },
/// \""file_extension\"": \"".py\"",
/// \""mimetype\"": \""text/x-python\"",
/// \""name\"": \""python\"",
/// \""nbconvert_exporter\"": \""python\"",
/// \""pygments_lexer\"": \""ipython3\"",
/// \""version\"": \""3.8.5\""
/// }
/// },
/// \""nbformat\"": 4,
/// \""nbformat_minor\"": 4
/// }
/// ",
/// });
///
/// var notebook_execution = new Gcp.Colab.NotebookExecution("notebook-execution", new()
/// {
/// NotebookExecutionJobId = "colab-notebook-execution",
/// DisplayName = "Notebook execution full",
/// Location = "us-central1",
/// ExecutionTimeout = "86400s",
/// GcsNotebookSource = new Gcp.Colab.Inputs.NotebookExecutionGcsNotebookSourceArgs
/// {
/// Uri = Output.Tuple(notebook.Bucket, notebook.Name).Apply(values =>
/// {
/// var bucket = values.Item1;
/// var name = values.Item2;
/// return $"gs://{bucket}/{name}";
/// }),
/// Generation = notebook.Generation,
/// },
/// ServiceAccount = "my@service-account.com",
/// GcsOutputUri = outputBucket.Name.Apply(name => $"gs://{name}"),
/// NotebookRuntimeTemplateResourceName = Output.Tuple(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).Apply(values =>
/// {
/// var project = values.Item1;
/// var location = values.Item2;
/// var name = values.Item3;
/// return $"projects/{project}/locations/{location}/notebookRuntimeTemplates/{name}";
/// }),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// notebook,
/// outputBucket,
/// myRuntimeTemplate,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// Name:        pulumi.String("runtime-template-name"),
/// DisplayName: pulumi.String("Runtime template"),
/// Location:    pulumi.String("us-central1"),
/// MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// MachineType: pulumi.String("e2-standard-4"),
/// },
/// NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// EnableInternetAccess: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// outputBucket, err := storage.NewBucket(ctx, "output_bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("my_bucket"),
/// Location:                 pulumi.String("US"),
/// ForceDestroy:             pulumi.Bool(true),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// notebook, err := storage.NewBucketObject(ctx, "notebook", &storage.BucketObjectArgs{
/// Name:   pulumi.String("hello_world.ipynb"),
/// Bucket: outputBucket.Name,
/// Content: pulumi.String(`    {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = colab.NewNotebookExecution(ctx, "notebook-execution", &colab.NotebookExecutionArgs{
/// NotebookExecutionJobId: pulumi.String("colab-notebook-execution"),
/// DisplayName:            pulumi.String("Notebook execution full"),
/// Location:               pulumi.String("us-central1"),
/// ExecutionTimeout:       pulumi.String("86400s"),
/// GcsNotebookSource: &colab.NotebookExecutionGcsNotebookSourceArgs{
/// Uri: pulumi.All(notebook.Bucket, notebook.Name).ApplyT(func(_args []interface{}) (string, error) {
/// bucket := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// }).(pulumi.StringOutput),
/// Generation: notebook.Generation,
/// },
/// ServiceAccount: pulumi.String("my@service-account.com"),
/// GcsOutputUri: outputBucket.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("gs://%v", name), nil
/// }).(pulumi.StringOutput),
/// NotebookRuntimeTemplateResourceName: pulumi.All(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// location := _args[1].(string)
/// name := _args[2].(string)
/// return fmt.Sprintf("projects/%v/locations/%v/notebookRuntimeTemplates/%v", project, location, name), nil
/// }).(pulumi.StringOutput),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// notebook,
/// outputBucket,
/// myRuntimeTemplate,
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
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.colab.NotebookExecution;
/// import com.pulumi.gcp.colab.NotebookExecutionArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionGcsNotebookSourceArgs;
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
/// var myRuntimeTemplate = new RuntimeTemplate("myRuntimeTemplate", RuntimeTemplateArgs.builder()
/// .name("runtime-template-name")
/// .displayName("Runtime template")
/// .location("us-central1")
/// .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
/// .machineType("e2-standard-4")
/// .build())
/// .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
/// .enableInternetAccess(true)
/// .build())
/// .build());
///
/// var outputBucket = new Bucket("outputBucket", BucketArgs.builder()
/// .name("my_bucket")
/// .location("US")
/// .forceDestroy(true)
/// .uniformBucketLevelAccess(true)
/// .build());
///
/// var notebook = new BucketObject("notebook", BucketObjectArgs.builder()
/// .name("hello_world.ipynb")
/// .bucket(outputBucket.name())
/// .content("""
/// {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// """)
/// .build());
///
/// var notebook_execution = new NotebookExecution("notebook-execution", NotebookExecutionArgs.builder()
/// .notebookExecutionJobId("colab-notebook-execution")
/// .displayName("Notebook execution full")
/// .location("us-central1")
/// .executionTimeout("86400s")
/// .gcsNotebookSource(NotebookExecutionGcsNotebookSourceArgs.builder()
/// .uri(Output.tuple(notebook.bucket(), notebook.name()).applyValue(values -> {
/// var bucket = values.t1;
/// var name = values.t2;
/// return String.format("gs://%s/%s", bucket,name);
/// }))
/// .generation(notebook.generation())
/// .build())
/// .serviceAccount("my@service-account.com")
/// .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
/// var project = values.t1;
/// var location = values.t2;
/// var name = values.t3;
/// return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
/// }))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// notebook,
/// outputBucket,
/// myRuntimeTemplate)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myRuntimeTemplate:
/// type: gcp:colab:RuntimeTemplate
/// name: my_runtime_template
/// properties:
/// name: runtime-template-name
/// displayName: Runtime template
/// location: us-central1
/// machineSpec:
/// machineType: e2-standard-4
/// networkSpec:
/// enableInternetAccess: true
/// outputBucket:
/// type: gcp:storage:Bucket
/// name: output_bucket
/// properties:
/// name: my_bucket
/// location: US
/// forceDestroy: true
/// uniformBucketLevelAccess: true
/// notebook:
/// type: gcp:storage:BucketObject
/// properties:
/// name: hello_world.ipynb
/// bucket: ${outputBucket.name}
/// content: |2
/// {
/// \"cells\": [
/// {
/// \"cell_type\": \"code\",
/// \"execution_count\": null,
/// \"metadata\": {},
/// \"outputs\": [],
/// \"source\": [
/// \"print(\\\"Hello, World!\\\")\"
/// ]
/// }
/// ],
/// \"metadata\": {
/// \"kernelspec\": {
/// \"display_name\": \"Python 3\",
/// \"language\": \"python\",
/// \"name\": \"python3\"
/// },
/// \"language_info\": {
/// \"codemirror_mode\": {
/// \"name\": \"ipython\",
/// \"version\": 3
/// },
/// \"file_extension\": \".py\",
/// \"mimetype\": \"text/x-python\",
/// \"name\": \"python\",
/// \"nbconvert_exporter\": \"python\",
/// \"pygments_lexer\": \"ipython3\",
/// \"version\": \"3.8.5\"
/// }
/// },
/// \"nbformat\": 4,
/// \"nbformat_minor\": 4
/// }
/// notebook-execution:
/// type: gcp:colab:NotebookExecution
/// properties:
/// notebookExecutionJobId: colab-notebook-execution
/// displayName: Notebook execution full
/// location: us-central1
/// executionTimeout: 86400s
/// gcsNotebookSource:
/// uri: gs://${notebook.bucket}/${notebook.name}
/// generation: ${notebook.generation}
/// serviceAccount: my@service-account.com
/// gcsOutputUri: gs://${outputBucket.name}
/// notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
/// options:
/// dependsOn:
/// - ${notebook}
/// - ${outputBucket}
/// - ${myRuntimeTemplate}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Colab Notebook Execution Dataform
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
/// name: "runtime-template-name",
/// displayName: "Runtime template",
/// location: "us-central1",
/// machineSpec: {
/// machineType: "e2-standard-4",
/// },
/// networkSpec: {
/// enableInternetAccess: true,
/// },
/// });
/// const outputBucket = new gcp.storage.Bucket("output_bucket", {
/// name: "my_bucket",
/// location: "US",
/// forceDestroy: true,
/// uniformBucketLevelAccess: true,
/// });
/// const secret = new gcp.secretmanager.Secret("secret", {
/// secretId: "secret",
/// replication: {
/// auto: {},
/// },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
/// secret: secret.id,
/// secretData: "secret-data",
/// });
/// const dataformRepository = new gcp.dataform.Repository("dataform_repository", {
/// name: "dataform-repository",
/// displayName: "dataform_repository",
/// npmrcEnvironmentVariablesSecretVersion: secretVersion.id,
/// kmsKeyName: "my-crypto-key",
/// labels: {
/// label_foo1: "label-bar1",
/// },
/// gitRemoteSettings: {
/// url: "https://github.com/OWNER/REPOSITORY.git",
/// defaultBranch: "main",
/// authenticationTokenSecretVersion: secretVersion.id,
/// },
/// workspaceCompilationOverrides: {
/// defaultDatabase: "database",
/// schemaSuffix: "_suffix",
/// tablePrefix: "prefix_",
/// },
/// });
/// const notebook_execution = new gcp.colab.NotebookExecution("notebook-execution", {
/// displayName: "Notebook execution Dataform",
/// location: "us-central1",
/// dataformRepositorySource: {
/// commitSha: "randomsha123",
/// dataformRepositoryResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/repositories/${dataformRepository.name}`,
/// },
/// notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
/// gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
/// serviceAccount: "my@service-account.com",
/// }, {
/// dependsOn: [
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository,
/// secret,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
/// name="runtime-template-name",
/// display_name="Runtime template",
/// location="us-central1",
/// machine_spec={
/// "machine_type": "e2-standard-4",
/// },
/// network_spec={
/// "enable_internet_access": True,
/// })
/// output_bucket = gcp.storage.Bucket("output_bucket",
/// name="my_bucket",
/// location="US",
/// force_destroy=True,
/// uniform_bucket_level_access=True)
/// secret = gcp.secretmanager.Secret("secret",
/// secret_id="secret",
/// replication={
/// "auto": {},
/// })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
/// secret=secret.id,
/// secret_data="secret-data")
/// dataform_repository = gcp.dataform.Repository("dataform_repository",
/// name="dataform-repository",
/// display_name="dataform_repository",
/// npmrc_environment_variables_secret_version=secret_version.id,
/// kms_key_name="my-crypto-key",
/// labels={
/// "label_foo1": "label-bar1",
/// },
/// git_remote_settings={
/// "url": "https://github.com/OWNER/REPOSITORY.git",
/// "default_branch": "main",
/// "authentication_token_secret_version": secret_version.id,
/// },
/// workspace_compilation_overrides={
/// "default_database": "database",
/// "schema_suffix": "_suffix",
/// "table_prefix": "prefix_",
/// })
/// notebook_execution = gcp.colab.NotebookExecution("notebook-execution",
/// display_name="Notebook execution Dataform",
/// location="us-central1",
/// dataform_repository_source={
/// "commit_sha": "randomsha123",
/// "dataform_repository_resource_name": pulumi.Output.all(
/// project=my_runtime_template.project,
/// location=my_runtime_template.location,
/// name=dataform_repository.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/repositories/{resolved_outputs['name']}")
/// ,
/// },
/// notebook_runtime_template_resource_name=pulumi.Output.all(
/// project=my_runtime_template.project,
/// location=my_runtime_template.location,
/// name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
/// gcs_output_uri=output_bucket.name.apply(lambda name: f"gs://{name}"),
/// service_account="my@service-account.com",
/// opts = pulumi.ResourceOptions(depends_on=[
/// my_runtime_template,
/// output_bucket,
/// secret_version,
/// dataform_repository,
/// secret,
/// ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
/// {
/// Name = "runtime-template-name",
/// DisplayName = "Runtime template",
/// Location = "us-central1",
/// MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
/// {
/// MachineType = "e2-standard-4",
/// },
/// NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
/// {
/// EnableInternetAccess = true,
/// },
/// });
///
/// var outputBucket = new Gcp.Storage.Bucket("output_bucket", new()
/// {
/// Name = "my_bucket",
/// Location = "US",
/// ForceDestroy = true,
/// UniformBucketLevelAccess = true,
/// });
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
/// SecretData = "secret-data",
/// });
///
/// var dataformRepository = new Gcp.Dataform.Repository("dataform_repository", new()
/// {
/// Name = "dataform-repository",
/// DisplayName = "dataform_repository",
/// NpmrcEnvironmentVariablesSecretVersion = secretVersion.Id,
/// KmsKeyName = "my-crypto-key",
/// Labels =
/// {
/// { "label_foo1", "label-bar1" },
/// },
/// GitRemoteSettings = new Gcp.Dataform.Inputs.RepositoryGitRemoteSettingsArgs
/// {
/// Url = "https://github.com/OWNER/REPOSITORY.git",
/// DefaultBranch = "main",
/// AuthenticationTokenSecretVersion = secretVersion.Id,
/// },
/// WorkspaceCompilationOverrides = new Gcp.Dataform.Inputs.RepositoryWorkspaceCompilationOverridesArgs
/// {
/// DefaultDatabase = "database",
/// SchemaSuffix = "_suffix",
/// TablePrefix = "prefix_",
/// },
/// });
///
/// var notebook_execution = new Gcp.Colab.NotebookExecution("notebook-execution", new()
/// {
/// DisplayName = "Notebook execution Dataform",
/// Location = "us-central1",
/// DataformRepositorySource = new Gcp.Colab.Inputs.NotebookExecutionDataformRepositorySourceArgs
/// {
/// CommitSha = "randomsha123",
/// DataformRepositoryResourceName = Output.Tuple(myRuntimeTemplate.Project, myRuntimeTemplate.Location, dataformRepository.Name).Apply(values =>
/// {
/// var project = values.Item1;
/// var location = values.Item2;
/// var name = values.Item3;
/// return $"projects/{project}/locations/{location}/repositories/{name}";
/// }),
/// },
/// NotebookRuntimeTemplateResourceName = Output.Tuple(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).Apply(values =>
/// {
/// var project = values.Item1;
/// var location = values.Item2;
/// var name = values.Item3;
/// return $"projects/{project}/locations/{location}/notebookRuntimeTemplates/{name}";
/// }),
/// GcsOutputUri = outputBucket.Name.Apply(name => $"gs://{name}"),
/// ServiceAccount = "my@service-account.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository,
/// secret,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// Name:        pulumi.String("runtime-template-name"),
/// DisplayName: pulumi.String("Runtime template"),
/// Location:    pulumi.String("us-central1"),
/// MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// MachineType: pulumi.String("e2-standard-4"),
/// },
/// NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// EnableInternetAccess: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// outputBucket, err := storage.NewBucket(ctx, "output_bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("my_bucket"),
/// Location:                 pulumi.String("US"),
/// ForceDestroy:             pulumi.Bool(true),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
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
/// SecretData: pulumi.String("secret-data"),
/// })
/// if err != nil {
/// return err
/// }
/// dataformRepository, err := dataform.NewRepository(ctx, "dataform_repository", &dataform.RepositoryArgs{
/// Name:                                   pulumi.String("dataform-repository"),
/// DisplayName:                            pulumi.String("dataform_repository"),
/// NpmrcEnvironmentVariablesSecretVersion: secretVersion.ID(),
/// KmsKeyName:                             pulumi.String("my-crypto-key"),
/// Labels: pulumi.StringMap{
/// "label_foo1": pulumi.String("label-bar1"),
/// },
/// GitRemoteSettings: &dataform.RepositoryGitRemoteSettingsArgs{
/// Url:                              pulumi.String("https://github.com/OWNER/REPOSITORY.git"),
/// DefaultBranch:                    pulumi.String("main"),
/// AuthenticationTokenSecretVersion: secretVersion.ID(),
/// },
/// WorkspaceCompilationOverrides: &dataform.RepositoryWorkspaceCompilationOverridesArgs{
/// DefaultDatabase: pulumi.String("database"),
/// SchemaSuffix:    pulumi.String("_suffix"),
/// TablePrefix:     pulumi.String("prefix_"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = colab.NewNotebookExecution(ctx, "notebook-execution", &colab.NotebookExecutionArgs{
/// DisplayName: pulumi.String("Notebook execution Dataform"),
/// Location:    pulumi.String("us-central1"),
/// DataformRepositorySource: &colab.NotebookExecutionDataformRepositorySourceArgs{
/// CommitSha: pulumi.String("randomsha123"),
/// DataformRepositoryResourceName: pulumi.All(myRuntimeTemplate.Project, myRuntimeTemplate.Location, dataformRepository.Name).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// location := _args[1].(string)
/// name := _args[2].(string)
/// return fmt.Sprintf("projects/%v/locations/%v/repositories/%v", project, location, name), nil
/// }).(pulumi.StringOutput),
/// },
/// NotebookRuntimeTemplateResourceName: pulumi.All(myRuntimeTemplate.Project, myRuntimeTemplate.Location, myRuntimeTemplate.Name).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// location := _args[1].(string)
/// name := _args[2].(string)
/// return fmt.Sprintf("projects/%v/locations/%v/notebookRuntimeTemplates/%v", project, location, name), nil
/// }).(pulumi.StringOutput),
/// GcsOutputUri: outputBucket.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("gs://%v", name), nil
/// }).(pulumi.StringOutput),
/// ServiceAccount: pulumi.String("my@service-account.com"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository,
/// secret,
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
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.dataform.Repository;
/// import com.pulumi.gcp.dataform.RepositoryArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryGitRemoteSettingsArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryWorkspaceCompilationOverridesArgs;
/// import com.pulumi.gcp.colab.NotebookExecution;
/// import com.pulumi.gcp.colab.NotebookExecutionArgs;
/// import com.pulumi.gcp.colab.inputs.NotebookExecutionDataformRepositorySourceArgs;
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
/// var myRuntimeTemplate = new RuntimeTemplate("myRuntimeTemplate", RuntimeTemplateArgs.builder()
/// .name("runtime-template-name")
/// .displayName("Runtime template")
/// .location("us-central1")
/// .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
/// .machineType("e2-standard-4")
/// .build())
/// .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
/// .enableInternetAccess(true)
/// .build())
/// .build());
///
/// var outputBucket = new Bucket("outputBucket", BucketArgs.builder()
/// .name("my_bucket")
/// .location("US")
/// .forceDestroy(true)
/// .uniformBucketLevelAccess(true)
/// .build());
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
/// .secretData("secret-data")
/// .build());
///
/// var dataformRepository = new Repository("dataformRepository", RepositoryArgs.builder()
/// .name("dataform-repository")
/// .displayName("dataform_repository")
/// .npmrcEnvironmentVariablesSecretVersion(secretVersion.id())
/// .kmsKeyName("my-crypto-key")
/// .labels(Map.of("label_foo1", "label-bar1"))
/// .gitRemoteSettings(RepositoryGitRemoteSettingsArgs.builder()
/// .url("https://github.com/OWNER/REPOSITORY.git")
/// .defaultBranch("main")
/// .authenticationTokenSecretVersion(secretVersion.id())
/// .build())
/// .workspaceCompilationOverrides(RepositoryWorkspaceCompilationOverridesArgs.builder()
/// .defaultDatabase("database")
/// .schemaSuffix("_suffix")
/// .tablePrefix("prefix_")
/// .build())
/// .build());
///
/// var notebook_execution = new NotebookExecution("notebook-execution", NotebookExecutionArgs.builder()
/// .displayName("Notebook execution Dataform")
/// .location("us-central1")
/// .dataformRepositorySource(NotebookExecutionDataformRepositorySourceArgs.builder()
/// .commitSha("randomsha123")
/// .dataformRepositoryResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), dataformRepository.name()).applyValue(values -> {
/// var project = values.t1;
/// var location = values.t2;
/// var name = values.t3;
/// return String.format("projects/%s/locations/%s/repositories/%s", project,location,name);
/// }))
/// .build())
/// .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
/// var project = values.t1;
/// var location = values.t2;
/// var name = values.t3;
/// return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
/// }))
/// .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .serviceAccount("my@service-account.com")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository,
/// secret)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myRuntimeTemplate:
/// type: gcp:colab:RuntimeTemplate
/// name: my_runtime_template
/// properties:
/// name: runtime-template-name
/// displayName: Runtime template
/// location: us-central1
/// machineSpec:
/// machineType: e2-standard-4
/// networkSpec:
/// enableInternetAccess: true
/// outputBucket:
/// type: gcp:storage:Bucket
/// name: output_bucket
/// properties:
/// name: my_bucket
/// location: US
/// forceDestroy: true
/// uniformBucketLevelAccess: true
/// secret:
/// type: gcp:secretmanager:Secret
/// properties:
/// secretId: secret
/// replication:
/// auto: {}
/// secretVersion:
/// type: gcp:secretmanager:SecretVersion
/// name: secret_version
/// properties:
/// secret: ${secret.id}
/// secretData: secret-data
/// dataformRepository:
/// type: gcp:dataform:Repository
/// name: dataform_repository
/// properties:
/// name: dataform-repository
/// displayName: dataform_repository
/// npmrcEnvironmentVariablesSecretVersion: ${secretVersion.id}
/// kmsKeyName: my-crypto-key
/// labels:
/// label_foo1: label-bar1
/// gitRemoteSettings:
/// url: https://github.com/OWNER/REPOSITORY.git
/// defaultBranch: main
/// authenticationTokenSecretVersion: ${secretVersion.id}
/// workspaceCompilationOverrides:
/// defaultDatabase: database
/// schemaSuffix: _suffix
/// tablePrefix: prefix_
/// notebook-execution:
/// type: gcp:colab:NotebookExecution
/// properties:
/// displayName: Notebook execution Dataform
/// location: us-central1
/// dataformRepositorySource:
/// commitSha: randomsha123
/// dataformRepositoryResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/repositories/${dataformRepository.name}
/// notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
/// gcsOutputUri: gs://${outputBucket.name}
/// serviceAccount: my@service-account.com
/// options:
/// dependsOn:
/// - ${myRuntimeTemplate}
/// - ${outputBucket}
/// - ${secretVersion}
/// - ${dataformRepository}
/// - ${secret}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NotebookExecution can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notebookExecutionJobs/{{notebook_execution_job_id}}`
///
/// * `{{project}}/{{location}}/{{notebook_execution_job_id}}`
///
/// * `{{location}}/{{notebook_execution_job_id}}`
///
/// When using the `pulumi import` command, NotebookExecution can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/notebookExecution:NotebookExecution default projects/{{project}}/locations/{{location}}/notebookExecutionJobs/{{notebook_execution_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/notebookExecution:NotebookExecution default {{project}}/{{location}}/{{notebook_execution_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/notebookExecution:NotebookExecution default {{location}}/{{notebook_execution_job_id}}
/// ```
class NotebookExecution extends CustomResource {
  /// Compute configuration to use for an execution job
  /// Structure is documented below.
  late final Output<NotebookExecutionCustomEnvironmentSpec?>
      customEnvironmentSpec;

  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  late final Output<NotebookExecutionDataformRepositorySource?>
      dataformRepositorySource;

  /// The content of the input notebook in ipynb format.
  /// Structure is documented below.
  late final Output<NotebookExecutionDirectNotebookSource?>
      directNotebookSource;

  /// Required. The display name of the Notebook Execution.
  late final Output<String> displayName;

  /// Max running time of the execution job in seconds (default 86400s / 24 hrs).
  late final Output<String?> executionTimeout;

  /// The user email to run the execution as.
  late final Output<String?> executionUser;

  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  late final Output<NotebookExecutionGcsNotebookSource?> gcsNotebookSource;

  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  late final Output<String> gcsOutputUri;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final Output<String> location;

  /// User specified ID for the Notebook Execution Job
  late final Output<String> notebookExecutionJobId;

  /// The NotebookRuntimeTemplate to source compute configuration from.
  late final Output<String?> notebookRuntimeTemplateResourceName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The service account to run the execution as.
  late final Output<String?> serviceAccount;

  NotebookExecution(
    String name, {
    NotebookExecutionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:colab/notebookExecution:NotebookExecution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customEnvironmentSpec =
        registerOutput<NotebookExecutionCustomEnvironmentSpec?>(
            'customEnvironmentSpec');
    this.dataformRepositorySource =
        registerOutput<NotebookExecutionDataformRepositorySource?>(
            'dataformRepositorySource');
    this.directNotebookSource =
        registerOutput<NotebookExecutionDirectNotebookSource?>(
            'directNotebookSource');
    this.displayName = registerOutput<String>('displayName');
    this.executionTimeout = registerOutput<String?>('executionTimeout');
    this.executionUser = registerOutput<String?>('executionUser');
    this.gcsNotebookSource =
        registerOutput<NotebookExecutionGcsNotebookSource?>(
            'gcsNotebookSource');
    this.gcsOutputUri = registerOutput<String>('gcsOutputUri');
    this.location = registerOutput<String>('location');
    this.notebookExecutionJobId =
        registerOutput<String>('notebookExecutionJobId');
    this.notebookRuntimeTemplateResourceName =
        registerOutput<String?>('notebookRuntimeTemplateResourceName');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
  }
}
