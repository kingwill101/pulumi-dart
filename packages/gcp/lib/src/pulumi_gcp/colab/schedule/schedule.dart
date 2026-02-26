import 'package:pulumi/pulumi.dart';
import '../schedule_create_notebook_execution_job_request/schedule_create_notebook_execution_job_request.dart';
import 'schedule_args.dart';

/// 'Colab Enterprise Notebook Execution Schedules.'
///
///
/// To get more information about Schedule, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.schedules)
/// * How-to Guides
/// * [Schedule a notebook run](https://cloud.google.com/colab/docs/schedule-notebook-run)
///
/// ## Example Usage
///
/// ### Colab Schedule Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
/// name: "runtime-template",
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
/// const schedule = new gcp.colab.Schedule("schedule", {
/// displayName: "basic-schedule",
/// location: "us-west1",
/// maxConcurrentRunCount: "2",
/// cron: "TZ=America/Los_Angeles * * * * *",
/// createNotebookExecutionJobRequest: {
/// notebookExecutionJob: {
/// displayName: "Notebook execution",
/// gcsNotebookSource: {
/// uri: pulumi.interpolate`gs://${notebook.bucket}/${notebook.name}`,
/// generation: notebook.generation,
/// },
/// notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
/// gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
/// serviceAccount: "my@service-account.com",
/// },
/// },
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
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
/// name="runtime-template",
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
/// schedule = gcp.colab.Schedule("schedule",
/// display_name="basic-schedule",
/// location="us-west1",
/// max_concurrent_run_count="2",
/// cron="TZ=America/Los_Angeles * * * * *",
/// create_notebook_execution_job_request={
/// "notebook_execution_job": {
/// "display_name": "Notebook execution",
/// "gcs_notebook_source": {
/// "uri": pulumi.Output.all(
/// bucket=notebook.bucket,
/// name=notebook.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ,
/// "generation": notebook.generation,
/// },
/// "notebook_runtime_template_resource_name": pulumi.Output.all(
/// project=my_runtime_template.project,
/// location=my_runtime_template.location,
/// name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
/// "gcs_output_uri": output_bucket.name.apply(lambda name: f"gs://{name}"),
/// "service_account": "my@service-account.com",
/// },
/// },
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
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
/// {
/// Name = "runtime-template",
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
/// var schedule = new Gcp.Colab.Schedule("schedule", new()
/// {
/// DisplayName = "basic-schedule",
/// Location = "us-west1",
/// MaxConcurrentRunCount = "2",
/// Cron = "TZ=America/Los_Angeles * * * * *",
/// CreateNotebookExecutionJobRequest = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestArgs
/// {
/// NotebookExecutionJob = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
/// {
/// DisplayName = "Notebook execution",
/// GcsNotebookSource = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs
/// {
/// Uri = Output.Tuple(notebook.Bucket, notebook.Name).Apply(values =>
/// {
/// var bucket = values.Item1;
/// var name = values.Item2;
/// return $"gs://{bucket}/{name}";
/// }),
/// Generation = notebook.Generation,
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
/// },
/// },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// Name:        pulumi.String("runtime-template"),
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
/// _, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// DisplayName:           pulumi.String("basic-schedule"),
/// Location:              pulumi.String("us-west1"),
/// MaxConcurrentRunCount: pulumi.String("2"),
/// Cron:                  pulumi.String("TZ=America/Los_Angeles * * * * *"),
/// CreateNotebookExecutionJobRequest: &colab.ScheduleCreateNotebookExecutionJobRequestArgs{
/// NotebookExecutionJob: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// DisplayName: pulumi.String("Notebook execution"),
/// GcsNotebookSource: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs{
/// Uri: pulumi.All(notebook.Bucket, notebook.Name).ApplyT(func(_args []interface{}) (string, error) {
/// bucket := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// }).(pulumi.StringOutput),
/// Generation: notebook.Generation,
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
/// },
/// },
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs;
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
/// .name("runtime-template")
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
/// var schedule = new Schedule("schedule", ScheduleArgs.builder()
/// .displayName("basic-schedule")
/// .location("us-west1")
/// .maxConcurrentRunCount("2")
/// .cron("TZ=America/Los_Angeles * * * * *")
/// .createNotebookExecutionJobRequest(ScheduleCreateNotebookExecutionJobRequestArgs.builder()
/// .notebookExecutionJob(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
/// .displayName("Notebook execution")
/// .gcsNotebookSource(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs.builder()
/// .uri(Output.tuple(notebook.bucket(), notebook.name()).applyValue(values -> {
/// var bucket = values.t1;
/// var name = values.t2;
/// return String.format("gs://%s/%s", bucket,name);
/// }))
/// .generation(notebook.generation())
/// .build())
/// .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
/// var project = values.t1;
/// var location = values.t2;
/// var name = values.t3;
/// return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
/// }))
/// .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .serviceAccount("my@service-account.com")
/// .build())
/// .build())
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
/// name: runtime-template
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
/// schedule:
/// type: gcp:colab:Schedule
/// properties:
/// displayName: basic-schedule
/// location: us-west1
/// maxConcurrentRunCount: 2
/// cron: TZ=America/Los_Angeles * * * * *
/// createNotebookExecutionJobRequest:
/// notebookExecutionJob:
/// displayName: Notebook execution
/// gcsNotebookSource:
/// uri: gs://${notebook.bucket}/${notebook.name}
/// generation: ${notebook.generation}
/// notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
/// gcsOutputUri: gs://${outputBucket.name}
/// serviceAccount: my@service-account.com
/// options:
/// dependsOn:
/// - ${myRuntimeTemplate}
/// - ${outputBucket}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Colab Schedule Paused
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
/// name: "runtime-template",
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
/// const schedule = new gcp.colab.Schedule("schedule", {
/// displayName: "paused-schedule",
/// location: "us-west1",
/// maxConcurrentRunCount: "2",
/// cron: "TZ=America/Los_Angeles * * * * *",
/// desiredState: "PAUSED",
/// createNotebookExecutionJobRequest: {
/// notebookExecutionJob: {
/// displayName: "Notebook execution",
/// gcsNotebookSource: {
/// uri: pulumi.interpolate`gs://${notebook.bucket}/${notebook.name}`,
/// generation: notebook.generation,
/// },
/// notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
/// gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
/// serviceAccount: "my@service-account.com",
/// },
/// },
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
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
/// name="runtime-template",
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
/// schedule = gcp.colab.Schedule("schedule",
/// display_name="paused-schedule",
/// location="us-west1",
/// max_concurrent_run_count="2",
/// cron="TZ=America/Los_Angeles * * * * *",
/// desired_state="PAUSED",
/// create_notebook_execution_job_request={
/// "notebook_execution_job": {
/// "display_name": "Notebook execution",
/// "gcs_notebook_source": {
/// "uri": pulumi.Output.all(
/// bucket=notebook.bucket,
/// name=notebook.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ,
/// "generation": notebook.generation,
/// },
/// "notebook_runtime_template_resource_name": pulumi.Output.all(
/// project=my_runtime_template.project,
/// location=my_runtime_template.location,
/// name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
/// "gcs_output_uri": output_bucket.name.apply(lambda name: f"gs://{name}"),
/// "service_account": "my@service-account.com",
/// },
/// },
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
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myRuntimeTemplate = new Gcp.Colab.RuntimeTemplate("my_runtime_template", new()
/// {
/// Name = "runtime-template",
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
/// var schedule = new Gcp.Colab.Schedule("schedule", new()
/// {
/// DisplayName = "paused-schedule",
/// Location = "us-west1",
/// MaxConcurrentRunCount = "2",
/// Cron = "TZ=America/Los_Angeles * * * * *",
/// DesiredState = "PAUSED",
/// CreateNotebookExecutionJobRequest = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestArgs
/// {
/// NotebookExecutionJob = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
/// {
/// DisplayName = "Notebook execution",
/// GcsNotebookSource = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs
/// {
/// Uri = Output.Tuple(notebook.Bucket, notebook.Name).Apply(values =>
/// {
/// var bucket = values.Item1;
/// var name = values.Item2;
/// return $"gs://{bucket}/{name}";
/// }),
/// Generation = notebook.Generation,
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
/// },
/// },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myRuntimeTemplate, err := colab.NewRuntimeTemplate(ctx, "my_runtime_template", &colab.RuntimeTemplateArgs{
/// Name:        pulumi.String("runtime-template"),
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
/// _, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// DisplayName:           pulumi.String("paused-schedule"),
/// Location:              pulumi.String("us-west1"),
/// MaxConcurrentRunCount: pulumi.String("2"),
/// Cron:                  pulumi.String("TZ=America/Los_Angeles * * * * *"),
/// DesiredState:          pulumi.String("PAUSED"),
/// CreateNotebookExecutionJobRequest: &colab.ScheduleCreateNotebookExecutionJobRequestArgs{
/// NotebookExecutionJob: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// DisplayName: pulumi.String("Notebook execution"),
/// GcsNotebookSource: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs{
/// Uri: pulumi.All(notebook.Bucket, notebook.Name).ApplyT(func(_args []interface{}) (string, error) {
/// bucket := _args[0].(string)
/// name := _args[1].(string)
/// return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// }).(pulumi.StringOutput),
/// Generation: notebook.Generation,
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
/// },
/// },
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs;
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
/// .name("runtime-template")
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
/// var schedule = new Schedule("schedule", ScheduleArgs.builder()
/// .displayName("paused-schedule")
/// .location("us-west1")
/// .maxConcurrentRunCount("2")
/// .cron("TZ=America/Los_Angeles * * * * *")
/// .desiredState("PAUSED")
/// .createNotebookExecutionJobRequest(ScheduleCreateNotebookExecutionJobRequestArgs.builder()
/// .notebookExecutionJob(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
/// .displayName("Notebook execution")
/// .gcsNotebookSource(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSourceArgs.builder()
/// .uri(Output.tuple(notebook.bucket(), notebook.name()).applyValue(values -> {
/// var bucket = values.t1;
/// var name = values.t2;
/// return String.format("gs://%s/%s", bucket,name);
/// }))
/// .generation(notebook.generation())
/// .build())
/// .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
/// var project = values.t1;
/// var location = values.t2;
/// var name = values.t3;
/// return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
/// }))
/// .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .serviceAccount("my@service-account.com")
/// .build())
/// .build())
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
/// name: runtime-template
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
/// schedule:
/// type: gcp:colab:Schedule
/// properties:
/// displayName: paused-schedule
/// location: us-west1
/// maxConcurrentRunCount: 2
/// cron: TZ=America/Los_Angeles * * * * *
/// desiredState: PAUSED
/// createNotebookExecutionJobRequest:
/// notebookExecutionJob:
/// displayName: Notebook execution
/// gcsNotebookSource:
/// uri: gs://${notebook.bucket}/${notebook.name}
/// generation: ${notebook.generation}
/// notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
/// gcsOutputUri: gs://${outputBucket.name}
/// serviceAccount: my@service-account.com
/// options:
/// dependsOn:
/// - ${myRuntimeTemplate}
/// - ${outputBucket}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Colab Schedule Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRuntimeTemplate = new gcp.colab.RuntimeTemplate("my_runtime_template", {
/// name: "runtime-template",
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
/// kmsKeyName: "my-key",
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
/// const schedule = new gcp.colab.Schedule("schedule", {
/// displayName: "full-schedule",
/// location: "us-west1",
/// allowQueueing: true,
/// maxConcurrentRunCount: "2",
/// cron: "TZ=America/Los_Angeles * * * * *",
/// maxRunCount: "5",
/// startTime: "2014-10-02T15:01:23Z",
/// endTime: "2014-10-10T15:01:23Z",
/// desiredState: "ACTIVE",
/// createNotebookExecutionJobRequest: {
/// notebookExecutionJob: {
/// displayName: "Notebook execution",
/// executionTimeout: "86400s",
/// dataformRepositorySource: {
/// commitSha: "randomsha123",
/// dataformRepositoryResourceName: pulumi.interpolate`projects/my-project-name/locations/us-west1/repositories/${dataformRepository.name}`,
/// },
/// notebookRuntimeTemplateResourceName: pulumi.interpolate`projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}`,
/// gcsOutputUri: pulumi.interpolate`gs://${outputBucket.name}`,
/// serviceAccount: "my@service-account.com",
/// },
/// },
/// }, {
/// dependsOn: [
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_template = gcp.colab.RuntimeTemplate("my_runtime_template",
/// name="runtime-template",
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
/// kms_key_name="my-key",
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
/// schedule = gcp.colab.Schedule("schedule",
/// display_name="full-schedule",
/// location="us-west1",
/// allow_queueing=True,
/// max_concurrent_run_count="2",
/// cron="TZ=America/Los_Angeles * * * * *",
/// max_run_count="5",
/// start_time="2014-10-02T15:01:23Z",
/// end_time="2014-10-10T15:01:23Z",
/// desired_state="ACTIVE",
/// create_notebook_execution_job_request={
/// "notebook_execution_job": {
/// "display_name": "Notebook execution",
/// "execution_timeout": "86400s",
/// "dataform_repository_source": {
/// "commit_sha": "randomsha123",
/// "dataform_repository_resource_name": dataform_repository.name.apply(lambda name: f"projects/my-project-name/locations/us-west1/repositories/{name}"),
/// },
/// "notebook_runtime_template_resource_name": pulumi.Output.all(
/// project=my_runtime_template.project,
/// location=my_runtime_template.location,
/// name=my_runtime_template.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/notebookRuntimeTemplates/{resolved_outputs['name']}")
/// ,
/// "gcs_output_uri": output_bucket.name.apply(lambda name: f"gs://{name}"),
/// "service_account": "my@service-account.com",
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[
/// my_runtime_template,
/// output_bucket,
/// secret_version,
/// dataform_repository,
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
/// Name = "runtime-template",
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
/// KmsKeyName = "my-key",
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
/// var schedule = new Gcp.Colab.Schedule("schedule", new()
/// {
/// DisplayName = "full-schedule",
/// Location = "us-west1",
/// AllowQueueing = true,
/// MaxConcurrentRunCount = "2",
/// Cron = "TZ=America/Los_Angeles * * * * *",
/// MaxRunCount = "5",
/// StartTime = "2014-10-02T15:01:23Z",
/// EndTime = "2014-10-10T15:01:23Z",
/// DesiredState = "ACTIVE",
/// CreateNotebookExecutionJobRequest = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestArgs
/// {
/// NotebookExecutionJob = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs
/// {
/// DisplayName = "Notebook execution",
/// ExecutionTimeout = "86400s",
/// DataformRepositorySource = new Gcp.Colab.Inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs
/// {
/// CommitSha = "randomsha123",
/// DataformRepositoryResourceName = dataformRepository.Name.Apply(name => $"projects/my-project-name/locations/us-west1/repositories/{name}"),
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
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository,
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
/// Name:        pulumi.String("runtime-template"),
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
/// KmsKeyName:                             pulumi.String("my-key"),
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
/// _, err = colab.NewSchedule(ctx, "schedule", &colab.ScheduleArgs{
/// DisplayName:           pulumi.String("full-schedule"),
/// Location:              pulumi.String("us-west1"),
/// AllowQueueing:         pulumi.Bool(true),
/// MaxConcurrentRunCount: pulumi.String("2"),
/// Cron:                  pulumi.String("TZ=America/Los_Angeles * * * * *"),
/// MaxRunCount:           pulumi.String("5"),
/// StartTime:             pulumi.String("2014-10-02T15:01:23Z"),
/// EndTime:               pulumi.String("2014-10-10T15:01:23Z"),
/// DesiredState:          pulumi.String("ACTIVE"),
/// CreateNotebookExecutionJobRequest: &colab.ScheduleCreateNotebookExecutionJobRequestArgs{
/// NotebookExecutionJob: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs{
/// DisplayName:      pulumi.String("Notebook execution"),
/// ExecutionTimeout: pulumi.String("86400s"),
/// DataformRepositorySource: &colab.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs{
/// CommitSha: pulumi.String("randomsha123"),
/// DataformRepositoryResourceName: dataformRepository.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("projects/my-project-name/locations/us-west1/repositories/%v", name), nil
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
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository,
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
/// import com.pulumi.gcp.colab.Schedule;
/// import com.pulumi.gcp.colab.ScheduleArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs;
/// import com.pulumi.gcp.colab.inputs.ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs;
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
/// .name("runtime-template")
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
/// .kmsKeyName("my-key")
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
/// var schedule = new Schedule("schedule", ScheduleArgs.builder()
/// .displayName("full-schedule")
/// .location("us-west1")
/// .allowQueueing(true)
/// .maxConcurrentRunCount("2")
/// .cron("TZ=America/Los_Angeles * * * * *")
/// .maxRunCount("5")
/// .startTime("2014-10-02T15:01:23Z")
/// .endTime("2014-10-10T15:01:23Z")
/// .desiredState("ACTIVE")
/// .createNotebookExecutionJobRequest(ScheduleCreateNotebookExecutionJobRequestArgs.builder()
/// .notebookExecutionJob(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobArgs.builder()
/// .displayName("Notebook execution")
/// .executionTimeout("86400s")
/// .dataformRepositorySource(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySourceArgs.builder()
/// .commitSha("randomsha123")
/// .dataformRepositoryResourceName(dataformRepository.name().applyValue(_name -> String.format("projects/my-project-name/locations/us-west1/repositories/%s", _name)))
/// .build())
/// .notebookRuntimeTemplateResourceName(Output.tuple(myRuntimeTemplate.project(), myRuntimeTemplate.location(), myRuntimeTemplate.name()).applyValue(values -> {
/// var project = values.t1;
/// var location = values.t2;
/// var name = values.t3;
/// return String.format("projects/%s/locations/%s/notebookRuntimeTemplates/%s", project,location,name);
/// }))
/// .gcsOutputUri(outputBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .serviceAccount("my@service-account.com")
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// myRuntimeTemplate,
/// outputBucket,
/// secretVersion,
/// dataformRepository)
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
/// name: runtime-template
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
/// kmsKeyName: my-key
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
/// schedule:
/// type: gcp:colab:Schedule
/// properties:
/// displayName: full-schedule
/// location: us-west1
/// allowQueueing: true
/// maxConcurrentRunCount: 2
/// cron: TZ=America/Los_Angeles * * * * *
/// maxRunCount: 5
/// startTime: 2014-10-02T15:01:23Z
/// endTime: 2014-10-10T15:01:23Z
/// desiredState: ACTIVE
/// createNotebookExecutionJobRequest:
/// notebookExecutionJob:
/// displayName: Notebook execution
/// executionTimeout: 86400s
/// dataformRepositorySource:
/// commitSha: randomsha123
/// dataformRepositoryResourceName: projects/my-project-name/locations/us-west1/repositories/${dataformRepository.name}
/// notebookRuntimeTemplateResourceName: projects/${myRuntimeTemplate.project}/locations/${myRuntimeTemplate.location}/notebookRuntimeTemplates/${myRuntimeTemplate.name}
/// gcsOutputUri: gs://${outputBucket.name}
/// serviceAccount: my@service-account.com
/// options:
/// dependsOn:
/// - ${myRuntimeTemplate}
/// - ${outputBucket}
/// - ${secretVersion}
/// - ${dataformRepository}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Schedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/schedules/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Schedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/schedule:Schedule default projects/{{project}}/locations/{{location}}/schedules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/schedule:Schedule default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/schedule:Schedule default {{location}}/{{name}}
/// ```
class Schedule extends CustomResource {
  /// Whether new scheduled runs can be queued when<span pulumi-lang-nodejs=" maxConcurrentRuns " pulumi-lang-dotnet=" MaxConcurrentRuns " pulumi-lang-go=" maxConcurrentRuns " pulumi-lang-python=" max_concurrent_runs " pulumi-lang-yaml=" maxConcurrentRuns " pulumi-lang-java=" maxConcurrentRuns "> max_concurrent_runs </span>limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  late final Output<bool?> allowQueueing;

  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  late final Output<ScheduleCreateNotebookExecutionJobRequest>
      createNotebookExecutionJobRequest;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  late final Output<String> cron;

  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  late final Output<String?> desiredState;

  /// Required. The display name of the Schedule.
  late final Output<String> displayName;

  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either<span pulumi-lang-nodejs=" endTime " pulumi-lang-dotnet=" EndTime " pulumi-lang-go=" endTime " pulumi-lang-python=" end_time " pulumi-lang-yaml=" endTime " pulumi-lang-java=" endTime "> end_time </span>is reached or when<span pulumi-lang-nodejs=" scheduledRunCount " pulumi-lang-dotnet=" ScheduledRunCount " pulumi-lang-go=" scheduledRunCount " pulumi-lang-python=" scheduled_run_count " pulumi-lang-yaml=" scheduledRunCount " pulumi-lang-java=" scheduledRunCount "> scheduled_run_count </span>>= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  late final Output<String?> endTime;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final Output<String> location;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  late final Output<String> maxConcurrentRunCount;

  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount >= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  late final Output<String?> maxRunCount;

  /// The resource name of the Schedule
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  late final Output<String> startTime;

  /// Output only. The state of the schedule.
  late final Output<String> state;

  Schedule(
    String name, {
    ScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:colab/schedule:Schedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowQueueing = Output.createUnknown<bool?>();
    this.createNotebookExecutionJobRequest =
        Output.createUnknown<ScheduleCreateNotebookExecutionJobRequest>();
    this.cron = Output.createUnknown<String>();
    this.desiredState = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.maxConcurrentRunCount = Output.createUnknown<String>();
    this.maxRunCount = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
