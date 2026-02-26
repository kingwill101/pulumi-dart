import 'package:pulumi/pulumi.dart';
import '../pipeline_destination/pipeline_destination.dart';
import '../pipeline_input_payload_format/pipeline_input_payload_format.dart';
import '../pipeline_logging_config/pipeline_logging_config.dart';
import '../pipeline_mediation/pipeline_mediation.dart';
import '../pipeline_retry_policy/pipeline_retry_policy.dart';
import 'pipeline_args2.dart';

/// The Eventarc Pipeline resource
///
///
/// To get more information about Pipeline, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.pipelines)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/receive-events/create-enrollment)
///
/// ## Example Usage
///
/// ### Eventarc Pipeline With Topic Destination
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "some-topic"});
/// const primary = new gcp.eventarc.Pipeline("primary", {
/// location: "us-central1",
/// pipelineId: "some-pipeline",
/// destinations: [{
/// topic: topic.id,
/// }],
/// labels: {
/// test_label: "test-eventarc-label",
/// },
/// annotations: {
/// test_annotation: "test-eventarc-annotation",
/// },
/// displayName: "Testing Pipeline",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="some-topic")
/// primary = gcp.eventarc.Pipeline("primary",
/// location="us-central1",
/// pipeline_id="some-pipeline",
/// destinations=[{
/// "topic": topic.id,
/// }],
/// labels={
/// "test_label": "test-eventarc-label",
/// },
/// annotations={
/// "test_annotation": "test-eventarc-annotation",
/// },
/// display_name="Testing Pipeline")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var topic = new Gcp.PubSub.Topic("topic", new()
/// {
/// Name = "some-topic",
/// });
///
/// var primary = new Gcp.Eventarc.Pipeline("primary", new()
/// {
/// Location = "us-central1",
/// PipelineId = "some-pipeline",
/// Destinations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineDestinationArgs
/// {
/// Topic = topic.Id,
/// },
/// },
/// Labels =
/// {
/// { "test_label", "test-eventarc-label" },
/// },
/// Annotations =
/// {
/// { "test_annotation", "test-eventarc-annotation" },
/// },
/// DisplayName = "Testing Pipeline",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// Name: pulumi.String("some-topic"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = eventarc.NewPipeline(ctx, "primary", &eventarc.PipelineArgs{
/// Location:   pulumi.String("us-central1"),
/// PipelineId: pulumi.String("some-pipeline"),
/// Destinations: eventarc.PipelineDestinationArray{
/// &eventarc.PipelineDestinationArgs{
/// Topic: topic.ID(),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "test_label": pulumi.String("test-eventarc-label"),
/// },
/// Annotations: pulumi.StringMap{
/// "test_annotation": pulumi.String("test-eventarc-annotation"),
/// },
/// DisplayName: pulumi.String("Testing Pipeline"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.eventarc.Pipeline;
/// import com.pulumi.gcp.eventarc.PipelineArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationArgs;
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
/// var topic = new Topic("topic", TopicArgs.builder()
/// .name("some-topic")
/// .build());
///
/// var primary = new Pipeline("primary", PipelineArgs.builder()
/// .location("us-central1")
/// .pipelineId("some-pipeline")
/// .destinations(PipelineDestinationArgs.builder()
/// .topic(topic.id())
/// .build())
/// .labels(Map.of("test_label", "test-eventarc-label"))
/// .annotations(Map.of("test_annotation", "test-eventarc-annotation"))
/// .displayName("Testing Pipeline")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// topic:
/// type: gcp:pubsub:Topic
/// properties:
/// name: some-topic
/// primary:
/// type: gcp:eventarc:Pipeline
/// properties:
/// location: us-central1
/// pipelineId: some-pipeline
/// destinations:
/// - topic: ${topic.id}
/// labels:
/// test_label: test-eventarc-label
/// annotations:
/// test_annotation: test-eventarc-annotation
/// displayName: Testing Pipeline
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Eventarc Pipeline With Http Destination
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.eventarc.Pipeline("primary", {
/// location: "us-central1",
/// pipelineId: "some-pipeline",
/// destinations: [{
/// httpEndpoint: {
/// uri: "https://10.77.0.0:80/route",
/// },
/// networkConfig: {
/// networkAttachment: "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.eventarc.Pipeline("primary",
/// location="us-central1",
/// pipeline_id="some-pipeline",
/// destinations=[{
/// "http_endpoint": {
/// "uri": "https://10.77.0.0:80/route",
/// },
/// "network_config": {
/// "network_attachment": "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var primary = new Gcp.Eventarc.Pipeline("primary", new()
/// {
/// Location = "us-central1",
/// PipelineId = "some-pipeline",
/// Destinations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineDestinationArgs
/// {
/// HttpEndpoint = new Gcp.Eventarc.Inputs.PipelineDestinationHttpEndpointArgs
/// {
/// Uri = "https://10.77.0.0:80/route",
/// },
/// NetworkConfig = new Gcp.Eventarc.Inputs.PipelineDestinationNetworkConfigArgs
/// {
/// NetworkAttachment = "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eventarc.NewPipeline(ctx, "primary", &eventarc.PipelineArgs{
/// Location:   pulumi.String("us-central1"),
/// PipelineId: pulumi.String("some-pipeline"),
/// Destinations: eventarc.PipelineDestinationArray{
/// &eventarc.PipelineDestinationArgs{
/// HttpEndpoint: &eventarc.PipelineDestinationHttpEndpointArgs{
/// Uri: pulumi.String("https://10.77.0.0:80/route"),
/// },
/// NetworkConfig: &eventarc.PipelineDestinationNetworkConfigArgs{
/// NetworkAttachment: pulumi.String("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment"),
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
/// import com.pulumi.gcp.eventarc.Pipeline;
/// import com.pulumi.gcp.eventarc.PipelineArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationHttpEndpointArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationNetworkConfigArgs;
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
/// var primary = new Pipeline("primary", PipelineArgs.builder()
/// .location("us-central1")
/// .pipelineId("some-pipeline")
/// .destinations(PipelineDestinationArgs.builder()
/// .httpEndpoint(PipelineDestinationHttpEndpointArgs.builder()
/// .uri("https://10.77.0.0:80/route")
/// .build())
/// .networkConfig(PipelineDestinationNetworkConfigArgs.builder()
/// .networkAttachment("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:eventarc:Pipeline
/// properties:
/// location: us-central1
/// pipelineId: some-pipeline
/// destinations:
/// - httpEndpoint:
/// uri: https://10.77.0.0:80/route
/// networkConfig:
/// networkAttachment: projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Eventarc Pipeline With Workflow Destination
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const workflow = new gcp.workflows.Workflow("workflow", {
/// name: "some-workflow",
/// deletionProtection: false,
/// region: "us-central1",
/// sourceContents: `# This is a sample workflow, feel free to replace it with your source code
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in CurrentDateTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from CurrentDateTime
/// # - returns the list of articles as an output of the workflow
/// # FYI, In terraform you need to escape the  or it will cause errors.
///
/// - getCurrentTime:
/// call: http.get
/// args:
/// url: \${sys.get_env(\\"url\\")}
/// result: CurrentDateTime
/// - readWikipedia:
/// call: http.get
/// args:
/// url: https://en.wikipedia.org/w/api.php
/// query:
/// action: opensearch
/// search: \${CurrentDateTime.body.dayOfTheWeek}
/// result: WikiResult
/// - returnOutput:
/// return: \${WikiResult.body[1]}
/// `,
/// });
/// const primary = new gcp.eventarc.Pipeline("primary", {
/// location: "us-central1",
/// pipelineId: "some-pipeline",
/// destinations: [{
/// workflow: workflow.id,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// workflow = gcp.workflows.Workflow("workflow",
/// name="some-workflow",
/// deletion_protection=False,
/// region="us-central1",
/// source_contents="""# This is a sample workflow, feel free to replace it with your source code
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in CurrentDateTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from CurrentDateTime
/// # - returns the list of articles as an output of the workflow
/// # FYI, In terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
/// call: http.get
/// args:
/// url: ${sys.get_env(\"url\")}
/// result: CurrentDateTime
/// - readWikipedia:
/// call: http.get
/// args:
/// url: https://en.wikipedia.org/w/api.php
/// query:
/// action: opensearch
/// search: ${CurrentDateTime.body.dayOfTheWeek}
/// result: WikiResult
/// - returnOutput:
/// return: ${WikiResult.body[1]}
/// """)
/// primary = gcp.eventarc.Pipeline("primary",
/// location="us-central1",
/// pipeline_id="some-pipeline",
/// destinations=[{
/// "workflow": workflow.id,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var workflow = new Gcp.Workflows.Workflow("workflow", new()
/// {
/// Name = "some-workflow",
/// DeletionProtection = false,
/// Region = "us-central1",
/// SourceContents = @"# This is a sample workflow, feel free to replace it with your source code
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in CurrentDateTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from CurrentDateTime
/// # - returns the list of articles as an output of the workflow
/// # FYI, In terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
/// call: http.get
/// args:
/// url: ${sys.get_env(\""url\"")}
/// result: CurrentDateTime
/// - readWikipedia:
/// call: http.get
/// args:
/// url: https://en.wikipedia.org/w/api.php
/// query:
/// action: opensearch
/// search: ${CurrentDateTime.body.dayOfTheWeek}
/// result: WikiResult
/// - returnOutput:
/// return: ${WikiResult.body[1]}
/// ",
/// });
///
/// var primary = new Gcp.Eventarc.Pipeline("primary", new()
/// {
/// Location = "us-central1",
/// PipelineId = "some-pipeline",
/// Destinations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineDestinationArgs
/// {
/// Workflow = workflow.Id,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workflows"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// workflow, err := workflows.NewWorkflow(ctx, "workflow", &workflows.WorkflowArgs{
/// Name:               pulumi.String("some-workflow"),
/// DeletionProtection: pulumi.Bool(false),
/// Region:             pulumi.String("us-central1"),
/// SourceContents: pulumi.String(`# This is a sample workflow, feel free to replace it with your source code
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in CurrentDateTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from CurrentDateTime
/// # - returns the list of articles as an output of the workflow
/// # FYI, In terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
/// call: http.get
/// args:
/// url: ${sys.get_env(\"url\")}
/// result: CurrentDateTime
/// - readWikipedia:
/// call: http.get
/// args:
/// url: https://en.wikipedia.org/w/api.php
/// query:
/// action: opensearch
/// search: ${CurrentDateTime.body.dayOfTheWeek}
/// result: WikiResult
/// - returnOutput:
/// return: ${WikiResult.body[1]}
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = eventarc.NewPipeline(ctx, "primary", &eventarc.PipelineArgs{
/// Location:   pulumi.String("us-central1"),
/// PipelineId: pulumi.String("some-pipeline"),
/// Destinations: eventarc.PipelineDestinationArray{
/// &eventarc.PipelineDestinationArgs{
/// Workflow: workflow.ID(),
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
/// import com.pulumi.gcp.workflows.Workflow;
/// import com.pulumi.gcp.workflows.WorkflowArgs;
/// import com.pulumi.gcp.eventarc.Pipeline;
/// import com.pulumi.gcp.eventarc.PipelineArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationArgs;
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
/// var workflow = new Workflow("workflow", WorkflowArgs.builder()
/// .name("some-workflow")
/// .deletionProtection(false)
/// .region("us-central1")
/// .sourceContents("""
/// # This is a sample workflow, feel free to replace it with your source code
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in CurrentDateTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from CurrentDateTime
/// # - returns the list of articles as an output of the workflow
/// # FYI, In terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
/// call: http.get
/// args:
/// url: ${sys.get_env(\"url\")}
/// result: CurrentDateTime
/// - readWikipedia:
/// call: http.get
/// args:
/// url: https://en.wikipedia.org/w/api.php
/// query:
/// action: opensearch
/// search: ${CurrentDateTime.body.dayOfTheWeek}
/// result: WikiResult
/// - returnOutput:
/// return: ${WikiResult.body[1]}
/// """)
/// .build());
///
/// var primary = new Pipeline("primary", PipelineArgs.builder()
/// .location("us-central1")
/// .pipelineId("some-pipeline")
/// .destinations(PipelineDestinationArgs.builder()
/// .workflow(workflow.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// workflow:
/// type: gcp:workflows:Workflow
/// properties:
/// name: some-workflow
/// deletionProtection: false
/// region: us-central1
/// sourceContents: |
/// # This is a sample workflow, feel free to replace it with your source code
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in CurrentDateTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from CurrentDateTime
/// # - returns the list of articles as an output of the workflow
/// # FYI, In terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
/// call: http.get
/// args:
/// url: $${sys.get_env(\"url\")}
/// result: CurrentDateTime
/// - readWikipedia:
/// call: http.get
/// args:
/// url: https://en.wikipedia.org/w/api.php
/// query:
/// action: opensearch
/// search: $${CurrentDateTime.body.dayOfTheWeek}
/// result: WikiResult
/// - returnOutput:
/// return: $${WikiResult.body[1]}
/// primary:
/// type: gcp:eventarc:Pipeline
/// properties:
/// location: us-central1
/// pipelineId: some-pipeline
/// destinations:
/// - workflow: ${workflow.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Eventarc Pipeline With Oidc And Json Format
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.eventarc.Pipeline("primary", {
/// location: "us-central1",
/// pipelineId: "some-pipeline",
/// destinations: [{
/// httpEndpoint: {
/// uri: "https://10.77.0.0:80/route",
/// messageBindingTemplate: "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// networkConfig: {
/// networkAttachment: "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// authenticationConfig: {
/// googleOidc: {
/// serviceAccount: "my@service-account.com",
/// audience: "http://www.example.com",
/// },
/// },
/// outputPayloadFormat: {
/// json: {},
/// },
/// }],
/// inputPayloadFormat: {
/// json: {},
/// },
/// retryPolicy: {
/// maxRetryDelay: "50s",
/// maxAttempts: 2,
/// minRetryDelay: "40s",
/// },
/// mediations: [{
/// transformation: {
/// transformationTemplate: `{
/// \\"id\\": message.id,
/// \\"datacontenttype\\": \\"application/json\\",
/// \\"data\\": \\"{ \\\\\\"scrubbed\\\\\\": \\\\\\"true\\\\\\" }\\"
/// }
/// `,
/// },
/// }],
/// loggingConfig: {
/// logSeverity: "DEBUG",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.eventarc.Pipeline("primary",
/// location="us-central1",
/// pipeline_id="some-pipeline",
/// destinations=[{
/// "http_endpoint": {
/// "uri": "https://10.77.0.0:80/route",
/// "message_binding_template": "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// "network_config": {
/// "network_attachment": "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// "authentication_config": {
/// "google_oidc": {
/// "service_account": "my@service-account.com",
/// "audience": "http://www.example.com",
/// },
/// },
/// "output_payload_format": {
/// "json": {},
/// },
/// }],
/// input_payload_format={
/// "json": {},
/// },
/// retry_policy={
/// "max_retry_delay": "50s",
/// "max_attempts": 2,
/// "min_retry_delay": "40s",
/// },
/// mediations=[{
/// "transformation": {
/// "transformation_template": """{
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// """,
/// },
/// }],
/// logging_config={
/// "log_severity": "DEBUG",
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
/// var primary = new Gcp.Eventarc.Pipeline("primary", new()
/// {
/// Location = "us-central1",
/// PipelineId = "some-pipeline",
/// Destinations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineDestinationArgs
/// {
/// HttpEndpoint = new Gcp.Eventarc.Inputs.PipelineDestinationHttpEndpointArgs
/// {
/// Uri = "https://10.77.0.0:80/route",
/// MessageBindingTemplate = "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// NetworkConfig = new Gcp.Eventarc.Inputs.PipelineDestinationNetworkConfigArgs
/// {
/// NetworkAttachment = "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// AuthenticationConfig = new Gcp.Eventarc.Inputs.PipelineDestinationAuthenticationConfigArgs
/// {
/// GoogleOidc = new Gcp.Eventarc.Inputs.PipelineDestinationAuthenticationConfigGoogleOidcArgs
/// {
/// ServiceAccount = "my@service-account.com",
/// Audience = "http://www.example.com",
/// },
/// },
/// OutputPayloadFormat = new Gcp.Eventarc.Inputs.PipelineDestinationOutputPayloadFormatArgs
/// {
/// Json = null,
/// },
/// },
/// },
/// InputPayloadFormat = new Gcp.Eventarc.Inputs.PipelineInputPayloadFormatArgs
/// {
/// Json = null,
/// },
/// RetryPolicy = new Gcp.Eventarc.Inputs.PipelineRetryPolicyArgs
/// {
/// MaxRetryDelay = "50s",
/// MaxAttempts = 2,
/// MinRetryDelay = "40s",
/// },
/// Mediations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineMediationArgs
/// {
/// Transformation = new Gcp.Eventarc.Inputs.PipelineMediationTransformationArgs
/// {
/// TransformationTemplate = @"{
/// \""id\"": message.id,
/// \""datacontenttype\"": \""application/json\"",
/// \""data\"": \""{ \\\""scrubbed\\\"": \\\""true\\\"" }\""
/// }
/// ",
/// },
/// },
/// },
/// LoggingConfig = new Gcp.Eventarc.Inputs.PipelineLoggingConfigArgs
/// {
/// LogSeverity = "DEBUG",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eventarc.NewPipeline(ctx, "primary", &eventarc.PipelineArgs{
/// Location:   pulumi.String("us-central1"),
/// PipelineId: pulumi.String("some-pipeline"),
/// Destinations: eventarc.PipelineDestinationArray{
/// &eventarc.PipelineDestinationArgs{
/// HttpEndpoint: &eventarc.PipelineDestinationHttpEndpointArgs{
/// Uri:                    pulumi.String("https://10.77.0.0:80/route"),
/// MessageBindingTemplate: pulumi.String("{\"headers\":{\"new-header-key\": \"new-header-value\"}}"),
/// },
/// NetworkConfig: &eventarc.PipelineDestinationNetworkConfigArgs{
/// NetworkAttachment: pulumi.String("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment"),
/// },
/// AuthenticationConfig: &eventarc.PipelineDestinationAuthenticationConfigArgs{
/// GoogleOidc: &eventarc.PipelineDestinationAuthenticationConfigGoogleOidcArgs{
/// ServiceAccount: pulumi.String("my@service-account.com"),
/// Audience:       pulumi.String("http://www.example.com"),
/// },
/// },
/// OutputPayloadFormat: &eventarc.PipelineDestinationOutputPayloadFormatArgs{
/// Json: &eventarc.PipelineDestinationOutputPayloadFormatJsonArgs{},
/// },
/// },
/// },
/// InputPayloadFormat: &eventarc.PipelineInputPayloadFormatArgs{
/// Json: &eventarc.PipelineInputPayloadFormatJsonArgs{},
/// },
/// RetryPolicy: &eventarc.PipelineRetryPolicyArgs{
/// MaxRetryDelay: pulumi.String("50s"),
/// MaxAttempts:   pulumi.Int(2),
/// MinRetryDelay: pulumi.String("40s"),
/// },
/// Mediations: eventarc.PipelineMediationArray{
/// &eventarc.PipelineMediationArgs{
/// Transformation: &eventarc.PipelineMediationTransformationArgs{
/// TransformationTemplate: pulumi.String(`{
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// `),
/// },
/// },
/// },
/// LoggingConfig: &eventarc.PipelineLoggingConfigArgs{
/// LogSeverity: pulumi.String("DEBUG"),
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
/// import com.pulumi.gcp.eventarc.Pipeline;
/// import com.pulumi.gcp.eventarc.PipelineArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationHttpEndpointArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationNetworkConfigArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationAuthenticationConfigArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationAuthenticationConfigGoogleOidcArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationOutputPayloadFormatArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationOutputPayloadFormatJsonArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineInputPayloadFormatArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineInputPayloadFormatJsonArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineRetryPolicyArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineMediationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineMediationTransformationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineLoggingConfigArgs;
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
/// var primary = new Pipeline("primary", PipelineArgs.builder()
/// .location("us-central1")
/// .pipelineId("some-pipeline")
/// .destinations(PipelineDestinationArgs.builder()
/// .httpEndpoint(PipelineDestinationHttpEndpointArgs.builder()
/// .uri("https://10.77.0.0:80/route")
/// .messageBindingTemplate("{\"headers\":{\"new-header-key\": \"new-header-value\"}}")
/// .build())
/// .networkConfig(PipelineDestinationNetworkConfigArgs.builder()
/// .networkAttachment("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment")
/// .build())
/// .authenticationConfig(PipelineDestinationAuthenticationConfigArgs.builder()
/// .googleOidc(PipelineDestinationAuthenticationConfigGoogleOidcArgs.builder()
/// .serviceAccount("my@service-account.com")
/// .audience("http://www.example.com")
/// .build())
/// .build())
/// .outputPayloadFormat(PipelineDestinationOutputPayloadFormatArgs.builder()
/// .json(PipelineDestinationOutputPayloadFormatJsonArgs.builder()
/// .build())
/// .build())
/// .build())
/// .inputPayloadFormat(PipelineInputPayloadFormatArgs.builder()
/// .json(PipelineInputPayloadFormatJsonArgs.builder()
/// .build())
/// .build())
/// .retryPolicy(PipelineRetryPolicyArgs.builder()
/// .maxRetryDelay("50s")
/// .maxAttempts(2)
/// .minRetryDelay("40s")
/// .build())
/// .mediations(PipelineMediationArgs.builder()
/// .transformation(PipelineMediationTransformationArgs.builder()
/// .transformationTemplate("""
/// {
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// """)
/// .build())
/// .build())
/// .loggingConfig(PipelineLoggingConfigArgs.builder()
/// .logSeverity("DEBUG")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:eventarc:Pipeline
/// properties:
/// location: us-central1
/// pipelineId: some-pipeline
/// destinations:
/// - httpEndpoint:
/// uri: https://10.77.0.0:80/route
/// messageBindingTemplate: '{"headers":{"new-header-key": "new-header-value"}}'
/// networkConfig:
/// networkAttachment: projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment
/// authenticationConfig:
/// googleOidc:
/// serviceAccount: my@service-account.com
/// audience: http://www.example.com
/// outputPayloadFormat:
/// json: {}
/// inputPayloadFormat:
/// json: {}
/// retryPolicy:
/// maxRetryDelay: 50s
/// maxAttempts: 2
/// minRetryDelay: 40s
/// mediations:
/// - transformation:
/// transformationTemplate: |
/// {
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// loggingConfig:
/// logSeverity: DEBUG
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Eventarc Pipeline With Oauth And Protobuf Format
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.eventarc.Pipeline("primary", {
/// location: "us-central1",
/// pipelineId: "some-pipeline",
/// destinations: [{
/// httpEndpoint: {
/// uri: "https://10.77.0.0:80/route",
/// messageBindingTemplate: "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// networkConfig: {
/// networkAttachment: "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// authenticationConfig: {
/// oauthToken: {
/// serviceAccount: "my@service-account.com",
/// scope: "https://www.googleapis.com/auth/cloud-platform",
/// },
/// },
/// outputPayloadFormat: {
/// protobuf: {
/// schemaDefinition: `syntax = \\"proto3\\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// `,
/// },
/// },
/// }],
/// inputPayloadFormat: {
/// protobuf: {
/// schemaDefinition: `syntax = \\"proto3\\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// `,
/// },
/// },
/// retryPolicy: {
/// maxRetryDelay: "50s",
/// maxAttempts: 2,
/// minRetryDelay: "40s",
/// },
/// mediations: [{
/// transformation: {
/// transformationTemplate: `{
/// \\"id\\": message.id,
/// \\"datacontenttype\\": \\"application/json\\",
/// \\"data\\": \\"{ \\\\\\"scrubbed\\\\\\": \\\\\\"true\\\\\\" }\\"
/// }
/// `,
/// },
/// }],
/// loggingConfig: {
/// logSeverity: "DEBUG",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.eventarc.Pipeline("primary",
/// location="us-central1",
/// pipeline_id="some-pipeline",
/// destinations=[{
/// "http_endpoint": {
/// "uri": "https://10.77.0.0:80/route",
/// "message_binding_template": "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// "network_config": {
/// "network_attachment": "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// "authentication_config": {
/// "oauth_token": {
/// "service_account": "my@service-account.com",
/// "scope": "https://www.googleapis.com/auth/cloud-platform",
/// },
/// },
/// "output_payload_format": {
/// "protobuf": {
/// "schema_definition": """syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// """,
/// },
/// },
/// }],
/// input_payload_format={
/// "protobuf": {
/// "schema_definition": """syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// """,
/// },
/// },
/// retry_policy={
/// "max_retry_delay": "50s",
/// "max_attempts": 2,
/// "min_retry_delay": "40s",
/// },
/// mediations=[{
/// "transformation": {
/// "transformation_template": """{
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// """,
/// },
/// }],
/// logging_config={
/// "log_severity": "DEBUG",
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
/// var primary = new Gcp.Eventarc.Pipeline("primary", new()
/// {
/// Location = "us-central1",
/// PipelineId = "some-pipeline",
/// Destinations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineDestinationArgs
/// {
/// HttpEndpoint = new Gcp.Eventarc.Inputs.PipelineDestinationHttpEndpointArgs
/// {
/// Uri = "https://10.77.0.0:80/route",
/// MessageBindingTemplate = "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// NetworkConfig = new Gcp.Eventarc.Inputs.PipelineDestinationNetworkConfigArgs
/// {
/// NetworkAttachment = "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// AuthenticationConfig = new Gcp.Eventarc.Inputs.PipelineDestinationAuthenticationConfigArgs
/// {
/// OauthToken = new Gcp.Eventarc.Inputs.PipelineDestinationAuthenticationConfigOauthTokenArgs
/// {
/// ServiceAccount = "my@service-account.com",
/// Scope = "https://www.googleapis.com/auth/cloud-platform",
/// },
/// },
/// OutputPayloadFormat = new Gcp.Eventarc.Inputs.PipelineDestinationOutputPayloadFormatArgs
/// {
/// Protobuf = new Gcp.Eventarc.Inputs.PipelineDestinationOutputPayloadFormatProtobufArgs
/// {
/// SchemaDefinition = @"syntax = \""proto3\"";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// ",
/// },
/// },
/// },
/// },
/// InputPayloadFormat = new Gcp.Eventarc.Inputs.PipelineInputPayloadFormatArgs
/// {
/// Protobuf = new Gcp.Eventarc.Inputs.PipelineInputPayloadFormatProtobufArgs
/// {
/// SchemaDefinition = @"syntax = \""proto3\"";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// ",
/// },
/// },
/// RetryPolicy = new Gcp.Eventarc.Inputs.PipelineRetryPolicyArgs
/// {
/// MaxRetryDelay = "50s",
/// MaxAttempts = 2,
/// MinRetryDelay = "40s",
/// },
/// Mediations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineMediationArgs
/// {
/// Transformation = new Gcp.Eventarc.Inputs.PipelineMediationTransformationArgs
/// {
/// TransformationTemplate = @"{
/// \""id\"": message.id,
/// \""datacontenttype\"": \""application/json\"",
/// \""data\"": \""{ \\\""scrubbed\\\"": \\\""true\\\"" }\""
/// }
/// ",
/// },
/// },
/// },
/// LoggingConfig = new Gcp.Eventarc.Inputs.PipelineLoggingConfigArgs
/// {
/// LogSeverity = "DEBUG",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eventarc.NewPipeline(ctx, "primary", &eventarc.PipelineArgs{
/// Location:   pulumi.String("us-central1"),
/// PipelineId: pulumi.String("some-pipeline"),
/// Destinations: eventarc.PipelineDestinationArray{
/// &eventarc.PipelineDestinationArgs{
/// HttpEndpoint: &eventarc.PipelineDestinationHttpEndpointArgs{
/// Uri:                    pulumi.String("https://10.77.0.0:80/route"),
/// MessageBindingTemplate: pulumi.String("{\"headers\":{\"new-header-key\": \"new-header-value\"}}"),
/// },
/// NetworkConfig: &eventarc.PipelineDestinationNetworkConfigArgs{
/// NetworkAttachment: pulumi.String("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment"),
/// },
/// AuthenticationConfig: &eventarc.PipelineDestinationAuthenticationConfigArgs{
/// OauthToken: &eventarc.PipelineDestinationAuthenticationConfigOauthTokenArgs{
/// ServiceAccount: pulumi.String("my@service-account.com"),
/// Scope:          pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// },
/// },
/// OutputPayloadFormat: &eventarc.PipelineDestinationOutputPayloadFormatArgs{
/// Protobuf: &eventarc.PipelineDestinationOutputPayloadFormatProtobufArgs{
/// SchemaDefinition: pulumi.String(`syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// `),
/// },
/// },
/// },
/// },
/// InputPayloadFormat: &eventarc.PipelineInputPayloadFormatArgs{
/// Protobuf: &eventarc.PipelineInputPayloadFormatProtobufArgs{
/// SchemaDefinition: pulumi.String(`syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// `),
/// },
/// },
/// RetryPolicy: &eventarc.PipelineRetryPolicyArgs{
/// MaxRetryDelay: pulumi.String("50s"),
/// MaxAttempts:   pulumi.Int(2),
/// MinRetryDelay: pulumi.String("40s"),
/// },
/// Mediations: eventarc.PipelineMediationArray{
/// &eventarc.PipelineMediationArgs{
/// Transformation: &eventarc.PipelineMediationTransformationArgs{
/// TransformationTemplate: pulumi.String(`{
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// `),
/// },
/// },
/// },
/// LoggingConfig: &eventarc.PipelineLoggingConfigArgs{
/// LogSeverity: pulumi.String("DEBUG"),
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
/// import com.pulumi.gcp.eventarc.Pipeline;
/// import com.pulumi.gcp.eventarc.PipelineArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationHttpEndpointArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationNetworkConfigArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationAuthenticationConfigArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationAuthenticationConfigOauthTokenArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationOutputPayloadFormatArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationOutputPayloadFormatProtobufArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineInputPayloadFormatArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineInputPayloadFormatProtobufArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineRetryPolicyArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineMediationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineMediationTransformationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineLoggingConfigArgs;
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
/// var primary = new Pipeline("primary", PipelineArgs.builder()
/// .location("us-central1")
/// .pipelineId("some-pipeline")
/// .destinations(PipelineDestinationArgs.builder()
/// .httpEndpoint(PipelineDestinationHttpEndpointArgs.builder()
/// .uri("https://10.77.0.0:80/route")
/// .messageBindingTemplate("{\"headers\":{\"new-header-key\": \"new-header-value\"}}")
/// .build())
/// .networkConfig(PipelineDestinationNetworkConfigArgs.builder()
/// .networkAttachment("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment")
/// .build())
/// .authenticationConfig(PipelineDestinationAuthenticationConfigArgs.builder()
/// .oauthToken(PipelineDestinationAuthenticationConfigOauthTokenArgs.builder()
/// .serviceAccount("my@service-account.com")
/// .scope("https://www.googleapis.com/auth/cloud-platform")
/// .build())
/// .build())
/// .outputPayloadFormat(PipelineDestinationOutputPayloadFormatArgs.builder()
/// .protobuf(PipelineDestinationOutputPayloadFormatProtobufArgs.builder()
/// .schemaDefinition("""
/// syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// """)
/// .build())
/// .build())
/// .build())
/// .inputPayloadFormat(PipelineInputPayloadFormatArgs.builder()
/// .protobuf(PipelineInputPayloadFormatProtobufArgs.builder()
/// .schemaDefinition("""
/// syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// """)
/// .build())
/// .build())
/// .retryPolicy(PipelineRetryPolicyArgs.builder()
/// .maxRetryDelay("50s")
/// .maxAttempts(2)
/// .minRetryDelay("40s")
/// .build())
/// .mediations(PipelineMediationArgs.builder()
/// .transformation(PipelineMediationTransformationArgs.builder()
/// .transformationTemplate("""
/// {
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// """)
/// .build())
/// .build())
/// .loggingConfig(PipelineLoggingConfigArgs.builder()
/// .logSeverity("DEBUG")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:eventarc:Pipeline
/// properties:
/// location: us-central1
/// pipelineId: some-pipeline
/// destinations:
/// - httpEndpoint:
/// uri: https://10.77.0.0:80/route
/// messageBindingTemplate: '{"headers":{"new-header-key": "new-header-value"}}'
/// networkConfig:
/// networkAttachment: projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment
/// authenticationConfig:
/// oauthToken:
/// serviceAccount: my@service-account.com
/// scope: https://www.googleapis.com/auth/cloud-platform
/// outputPayloadFormat:
/// protobuf:
/// schemaDefinition: |
/// syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// inputPayloadFormat:
/// protobuf:
/// schemaDefinition: |
/// syntax = \"proto3\";
/// message schema {
/// string name = 1;
/// string severity = 2;
/// }
/// retryPolicy:
/// maxRetryDelay: 50s
/// maxAttempts: 2
/// minRetryDelay: 40s
/// mediations:
/// - transformation:
/// transformationTemplate: |
/// {
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// loggingConfig:
/// logSeverity: DEBUG
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Eventarc Pipeline With Cmek And Avro Format
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.eventarc.Pipeline("primary", {
/// location: "us-central1",
/// pipelineId: "some-pipeline",
/// cryptoKeyName: "some-key",
/// destinations: [{
/// httpEndpoint: {
/// uri: "https://10.77.0.0:80/route",
/// messageBindingTemplate: "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// networkConfig: {
/// networkAttachment: "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// outputPayloadFormat: {
/// avro: {
/// schemaDefinition: "{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}",
/// },
/// },
/// }],
/// inputPayloadFormat: {
/// avro: {
/// schemaDefinition: "{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}",
/// },
/// },
/// retryPolicy: {
/// maxRetryDelay: "50s",
/// maxAttempts: 2,
/// minRetryDelay: "40s",
/// },
/// mediations: [{
/// transformation: {
/// transformationTemplate: `{
/// \\"id\\": message.id,
/// \\"datacontenttype\\": \\"application/json\\",
/// \\"data\\": \\"{ \\\\\\"scrubbed\\\\\\": \\\\\\"true\\\\\\" }\\"
/// }
/// `,
/// },
/// }],
/// loggingConfig: {
/// logSeverity: "DEBUG",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.eventarc.Pipeline("primary",
/// location="us-central1",
/// pipeline_id="some-pipeline",
/// crypto_key_name="some-key",
/// destinations=[{
/// "http_endpoint": {
/// "uri": "https://10.77.0.0:80/route",
/// "message_binding_template": "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// "network_config": {
/// "network_attachment": "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// "output_payload_format": {
/// "avro": {
/// "schema_definition": "{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}",
/// },
/// },
/// }],
/// input_payload_format={
/// "avro": {
/// "schema_definition": "{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}",
/// },
/// },
/// retry_policy={
/// "max_retry_delay": "50s",
/// "max_attempts": 2,
/// "min_retry_delay": "40s",
/// },
/// mediations=[{
/// "transformation": {
/// "transformation_template": """{
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// """,
/// },
/// }],
/// logging_config={
/// "log_severity": "DEBUG",
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
/// var primary = new Gcp.Eventarc.Pipeline("primary", new()
/// {
/// Location = "us-central1",
/// PipelineId = "some-pipeline",
/// CryptoKeyName = "some-key",
/// Destinations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineDestinationArgs
/// {
/// HttpEndpoint = new Gcp.Eventarc.Inputs.PipelineDestinationHttpEndpointArgs
/// {
/// Uri = "https://10.77.0.0:80/route",
/// MessageBindingTemplate = "{\"headers\":{\"new-header-key\": \"new-header-value\"}}",
/// },
/// NetworkConfig = new Gcp.Eventarc.Inputs.PipelineDestinationNetworkConfigArgs
/// {
/// NetworkAttachment = "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
/// },
/// OutputPayloadFormat = new Gcp.Eventarc.Inputs.PipelineDestinationOutputPayloadFormatArgs
/// {
/// Avro = new Gcp.Eventarc.Inputs.PipelineDestinationOutputPayloadFormatAvroArgs
/// {
/// SchemaDefinition = "{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}",
/// },
/// },
/// },
/// },
/// InputPayloadFormat = new Gcp.Eventarc.Inputs.PipelineInputPayloadFormatArgs
/// {
/// Avro = new Gcp.Eventarc.Inputs.PipelineInputPayloadFormatAvroArgs
/// {
/// SchemaDefinition = "{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}",
/// },
/// },
/// RetryPolicy = new Gcp.Eventarc.Inputs.PipelineRetryPolicyArgs
/// {
/// MaxRetryDelay = "50s",
/// MaxAttempts = 2,
/// MinRetryDelay = "40s",
/// },
/// Mediations = new[]
/// {
/// new Gcp.Eventarc.Inputs.PipelineMediationArgs
/// {
/// Transformation = new Gcp.Eventarc.Inputs.PipelineMediationTransformationArgs
/// {
/// TransformationTemplate = @"{
/// \""id\"": message.id,
/// \""datacontenttype\"": \""application/json\"",
/// \""data\"": \""{ \\\""scrubbed\\\"": \\\""true\\\"" }\""
/// }
/// ",
/// },
/// },
/// },
/// LoggingConfig = new Gcp.Eventarc.Inputs.PipelineLoggingConfigArgs
/// {
/// LogSeverity = "DEBUG",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eventarc.NewPipeline(ctx, "primary", &eventarc.PipelineArgs{
/// Location:      pulumi.String("us-central1"),
/// PipelineId:    pulumi.String("some-pipeline"),
/// CryptoKeyName: pulumi.String("some-key"),
/// Destinations: eventarc.PipelineDestinationArray{
/// &eventarc.PipelineDestinationArgs{
/// HttpEndpoint: &eventarc.PipelineDestinationHttpEndpointArgs{
/// Uri:                    pulumi.String("https://10.77.0.0:80/route"),
/// MessageBindingTemplate: pulumi.String("{\"headers\":{\"new-header-key\": \"new-header-value\"}}"),
/// },
/// NetworkConfig: &eventarc.PipelineDestinationNetworkConfigArgs{
/// NetworkAttachment: pulumi.String("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment"),
/// },
/// OutputPayloadFormat: &eventarc.PipelineDestinationOutputPayloadFormatArgs{
/// Avro: &eventarc.PipelineDestinationOutputPayloadFormatAvroArgs{
/// SchemaDefinition: pulumi.String("{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}"),
/// },
/// },
/// },
/// },
/// InputPayloadFormat: &eventarc.PipelineInputPayloadFormatArgs{
/// Avro: &eventarc.PipelineInputPayloadFormatAvroArgs{
/// SchemaDefinition: pulumi.String("{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}"),
/// },
/// },
/// RetryPolicy: &eventarc.PipelineRetryPolicyArgs{
/// MaxRetryDelay: pulumi.String("50s"),
/// MaxAttempts:   pulumi.Int(2),
/// MinRetryDelay: pulumi.String("40s"),
/// },
/// Mediations: eventarc.PipelineMediationArray{
/// &eventarc.PipelineMediationArgs{
/// Transformation: &eventarc.PipelineMediationTransformationArgs{
/// TransformationTemplate: pulumi.String(`{
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// `),
/// },
/// },
/// },
/// LoggingConfig: &eventarc.PipelineLoggingConfigArgs{
/// LogSeverity: pulumi.String("DEBUG"),
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
/// import com.pulumi.gcp.eventarc.Pipeline;
/// import com.pulumi.gcp.eventarc.PipelineArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationHttpEndpointArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationNetworkConfigArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationOutputPayloadFormatArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationOutputPayloadFormatAvroArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineInputPayloadFormatArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineInputPayloadFormatAvroArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineRetryPolicyArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineMediationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineMediationTransformationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineLoggingConfigArgs;
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
/// var primary = new Pipeline("primary", PipelineArgs.builder()
/// .location("us-central1")
/// .pipelineId("some-pipeline")
/// .cryptoKeyName("some-key")
/// .destinations(PipelineDestinationArgs.builder()
/// .httpEndpoint(PipelineDestinationHttpEndpointArgs.builder()
/// .uri("https://10.77.0.0:80/route")
/// .messageBindingTemplate("{\"headers\":{\"new-header-key\": \"new-header-value\"}}")
/// .build())
/// .networkConfig(PipelineDestinationNetworkConfigArgs.builder()
/// .networkAttachment("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment")
/// .build())
/// .outputPayloadFormat(PipelineDestinationOutputPayloadFormatArgs.builder()
/// .avro(PipelineDestinationOutputPayloadFormatAvroArgs.builder()
/// .schemaDefinition("{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}")
/// .build())
/// .build())
/// .build())
/// .inputPayloadFormat(PipelineInputPayloadFormatArgs.builder()
/// .avro(PipelineInputPayloadFormatAvroArgs.builder()
/// .schemaDefinition("{\"type\": \"record\", \"name\": \"my_record\", \"fields\": [{\"name\": \"my_field\", \"type\": \"string\"}]}")
/// .build())
/// .build())
/// .retryPolicy(PipelineRetryPolicyArgs.builder()
/// .maxRetryDelay("50s")
/// .maxAttempts(2)
/// .minRetryDelay("40s")
/// .build())
/// .mediations(PipelineMediationArgs.builder()
/// .transformation(PipelineMediationTransformationArgs.builder()
/// .transformationTemplate("""
/// {
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// """)
/// .build())
/// .build())
/// .loggingConfig(PipelineLoggingConfigArgs.builder()
/// .logSeverity("DEBUG")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:eventarc:Pipeline
/// properties:
/// location: us-central1
/// pipelineId: some-pipeline
/// cryptoKeyName: some-key
/// destinations:
/// - httpEndpoint:
/// uri: https://10.77.0.0:80/route
/// messageBindingTemplate: '{"headers":{"new-header-key": "new-header-value"}}'
/// networkConfig:
/// networkAttachment: projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment
/// outputPayloadFormat:
/// avro:
/// schemaDefinition: '{"type": "record", "name": "my_record", "fields": [{"name": "my_field", "type": "string"}]}'
/// inputPayloadFormat:
/// avro:
/// schemaDefinition: '{"type": "record", "name": "my_record", "fields": [{"name": "my_field", "type": "string"}]}'
/// retryPolicy:
/// maxRetryDelay: 50s
/// maxAttempts: 2
/// minRetryDelay: 40s
/// mediations:
/// - transformation:
/// transformationTemplate: |
/// {
/// \"id\": message.id,
/// \"datacontenttype\": \"application/json\",
/// \"data\": \"{ \\\"scrubbed\\\": \\\"true\\\" }\"
/// }
/// loggingConfig:
/// logSeverity: DEBUG
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Pipeline can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}}`
///
/// * `{{project}}/{{location}}/{{pipeline_id}}`
///
/// * `{{location}}/{{pipeline_id}}`
///
/// When using the `pulumi import` command, Pipeline can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/pipeline:Pipeline default projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/pipeline:Pipeline default {{project}}/{{location}}/{{pipeline_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/pipeline:Pipeline default {{location}}/{{pipeline_id}}
/// ```
class Pipeline2 extends CustomResource {
  /// User-defined annotations. See https://google.aip.dev/128#annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt the event data. If not set, an internal Google-owned key
  /// will be used to encrypt messages. It must match the pattern
  /// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
  late final Output<String?> cryptoKeyName;

  /// List of destinations to which messages will be forwarded. Currently,
  /// exactly one destination is supported per Pipeline.
  /// Structure is documented below.
  late final Output<List<PipelineDestination>> destinations;

  /// Display name of resource.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of
  /// other fields, and might be sent only on create requests to ensure that the
  /// client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Represents the format of message data.
  /// Structure is documented below.
  late final Output<PipelineInputPayloadFormat?> inputPayloadFormat;

  /// User labels attached to the Pipeline that can be used to group
  /// resources. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  late final Output<PipelineLoggingConfig> loggingConfig;

  /// List of mediation operations to be performed on the message. Currently,
  /// only one Transformation operation is allowed in each Pipeline.
  /// Structure is documented below.
  late final Output<List<PipelineMediation>?> mediations;

  /// The resource name of the Pipeline. Must be unique within the
  /// location of the project and must be in
  /// `projects/{project}/locations/{location}/pipelines/{pipeline}` format.
  late final Output<String> name;

  /// The user-provided ID to be assigned to the Pipeline. It should match the
  /// format `^a-z?$`.
  late final Output<String> pipelineId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The retry policy configuration for the Pipeline. The pipeline
  /// exponentially backs off in case the destination is non responsive or
  /// returns a retryable error code. The default semantics are as follows:
  /// The backoff starts with a 5 second delay and doubles the
  /// delay after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.).
  /// The delay is capped at 60 seconds by default.
  /// Please note that if you set the<span pulumi-lang-nodejs=" minRetryDelay " pulumi-lang-dotnet=" MinRetryDelay " pulumi-lang-go=" minRetryDelay " pulumi-lang-python=" min_retry_delay " pulumi-lang-yaml=" minRetryDelay " pulumi-lang-java=" minRetryDelay "> min_retry_delay </span>and<span pulumi-lang-nodejs=" maxRetryDelay " pulumi-lang-dotnet=" MaxRetryDelay " pulumi-lang-go=" maxRetryDelay " pulumi-lang-python=" max_retry_delay " pulumi-lang-yaml=" maxRetryDelay " pulumi-lang-java=" maxRetryDelay "> max_retry_delay </span>fields
  /// to the same value this will make the duration between retries constant.
  /// Structure is documented below.
  late final Output<PipelineRetryPolicy> retryPolicy;

  /// Server-assigned unique identifier for the Pipeline. The value
  /// is a UUID4 string and guaranteed to remain unchanged until the resource is
  /// deleted.
  late final Output<String> uid;

  /// The last-modified time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  Pipeline2(
    String name, {
    PipelineArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.destinations =
        registerOutput<List<PipelineDestination>>('destinations');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.inputPayloadFormat =
        registerOutput<PipelineInputPayloadFormat?>('inputPayloadFormat');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.loggingConfig = registerOutput<PipelineLoggingConfig>('loggingConfig');
    this.mediations = registerOutput<List<PipelineMediation>?>('mediations');
    this.name = registerOutput<String>('name');
    this.pipelineId = registerOutput<String>('pipelineId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.retryPolicy = registerOutput<PipelineRetryPolicy>('retryPolicy');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
