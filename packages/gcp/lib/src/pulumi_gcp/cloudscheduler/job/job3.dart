import 'package:pulumi/pulumi.dart';
import '../job_app_engine_http_target/job_app_engine_http_target.dart';
import '../job_http_target/job_http_target.dart';
import '../job_pubsub_target/job_pubsub_target.dart';
import '../job_retry_config/job_retry_config.dart';
import 'job_args3.dart';

/// A scheduled job that can publish a PubSub message or an HTTP request
/// every X interval of time, using a crontab format string.
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/scheduler/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/scheduler/)
///
/// ## Example Usage
///
/// ### Scheduler Job Pubsub
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "job-topic"});
/// const job = new gcp.cloudscheduler.Job("job", {
/// name: "test-job",
/// description: "test job",
/// schedule: "*/2 * * * *",
/// pubsubTarget: {
/// topicName: topic.id,
/// data: std.base64encode({
/// input: "test",
/// }).then(invoke => invoke.result),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// topic = gcp.pubsub.Topic("topic", name="job-topic")
/// job = gcp.cloudscheduler.Job("job",
/// name="test-job",
/// description="test job",
/// schedule="*/2 * * * *",
/// pubsub_target={
/// "topic_name": topic.id,
/// "data": std.base64encode(input="test").result,
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
/// var topic = new Gcp.PubSub.Topic("topic", new()
/// {
/// Name = "job-topic",
/// });
///
/// var job = new Gcp.CloudScheduler.Job("job", new()
/// {
/// Name = "test-job",
/// Description = "test job",
/// Schedule = "*/2 * * * *",
/// PubsubTarget = new Gcp.CloudScheduler.Inputs.JobPubsubTargetArgs
/// {
/// TopicName = topic.Id,
/// Data = Std.Base64encode.Invoke(new()
/// {
/// Input = "test",
/// }).Apply(invoke => invoke.Result),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudscheduler"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// Name: pulumi.String("job-topic"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "test",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudscheduler.NewJob(ctx, "job", &cloudscheduler.JobArgs{
/// Name:        pulumi.String("test-job"),
/// Description: pulumi.String("test job"),
/// Schedule:    pulumi.String("*/2 * * * *"),
/// PubsubTarget: &cloudscheduler.JobPubsubTargetArgs{
/// TopicName: topic.ID(),
/// Data:      pulumi.String(invokeBase64encode.Result),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.cloudscheduler.Job;
/// import com.pulumi.gcp.cloudscheduler.JobArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobPubsubTargetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// .name("job-topic")
/// .build());
///
/// var job = new Job("job", JobArgs.builder()
/// .name("test-job")
/// .description("test job")
/// .schedule("*/2 * * * *")
/// .pubsubTarget(JobPubsubTargetArgs.builder()
/// .topicName(topic.id())
/// .data(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("test")
/// .build()).result())
/// .build())
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
/// name: job-topic
/// job:
/// type: gcp:cloudscheduler:Job
/// properties:
/// name: test-job
/// description: test job
/// schedule: '*/2 * * * *'
/// pubsubTarget:
/// topicName: ${topic.id}
/// data:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: test
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Scheduler Job Http
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const job = new gcp.cloudscheduler.Job("job", {
/// name: "test-job",
/// description: "test http job",
/// schedule: "*/8 * * * *",
/// timeZone: "America/New_York",
/// attemptDeadline: "320s",
/// retryConfig: {
/// retryCount: 1,
/// },
/// httpTarget: {
/// httpMethod: "POST",
/// uri: "https://example.com/",
/// body: std.base64encode({
/// input: "{\"foo\":\"bar\"}",
/// }).then(invoke => invoke.result),
/// headers: {
/// "Content-Type": "application/json",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// job = gcp.cloudscheduler.Job("job",
/// name="test-job",
/// description="test http job",
/// schedule="*/8 * * * *",
/// time_zone="America/New_York",
/// attempt_deadline="320s",
/// retry_config={
/// "retry_count": 1,
/// },
/// http_target={
/// "http_method": "POST",
/// "uri": "https://example.com/",
/// "body": std.base64encode(input="{\"foo\":\"bar\"}").result,
/// "headers": {
/// "Content-Type": "application/json",
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
/// var job = new Gcp.CloudScheduler.Job("job", new()
/// {
/// Name = "test-job",
/// Description = "test http job",
/// Schedule = "*/8 * * * *",
/// TimeZone = "America/New_York",
/// AttemptDeadline = "320s",
/// RetryConfig = new Gcp.CloudScheduler.Inputs.JobRetryConfigArgs
/// {
/// RetryCount = 1,
/// },
/// HttpTarget = new Gcp.CloudScheduler.Inputs.JobHttpTargetArgs
/// {
/// HttpMethod = "POST",
/// Uri = "https://example.com/",
/// Body = Std.Base64encode.Invoke(new()
/// {
/// Input = "{\"foo\":\"bar\"}",
/// }).Apply(invoke => invoke.Result),
/// Headers =
/// {
/// { "Content-Type", "application/json" },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudscheduler"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "{\"foo\":\"bar\"}",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudscheduler.NewJob(ctx, "job", &cloudscheduler.JobArgs{
/// Name:            pulumi.String("test-job"),
/// Description:     pulumi.String("test http job"),
/// Schedule:        pulumi.String("*/8 * * * *"),
/// TimeZone:        pulumi.String("America/New_York"),
/// AttemptDeadline: pulumi.String("320s"),
/// RetryConfig: &cloudscheduler.JobRetryConfigArgs{
/// RetryCount: pulumi.Int(1),
/// },
/// HttpTarget: &cloudscheduler.JobHttpTargetArgs{
/// HttpMethod: pulumi.String("POST"),
/// Uri:        pulumi.String("https://example.com/"),
/// Body:       pulumi.String(invokeBase64encode.Result),
/// Headers: pulumi.StringMap{
/// "Content-Type": pulumi.String("application/json"),
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
/// import com.pulumi.gcp.cloudscheduler.Job;
/// import com.pulumi.gcp.cloudscheduler.JobArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobRetryConfigArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var job = new Job("job", JobArgs.builder()
/// .name("test-job")
/// .description("test http job")
/// .schedule("*/8 * * * *")
/// .timeZone("America/New_York")
/// .attemptDeadline("320s")
/// .retryConfig(JobRetryConfigArgs.builder()
/// .retryCount(1)
/// .build())
/// .httpTarget(JobHttpTargetArgs.builder()
/// .httpMethod("POST")
/// .uri("https://example.com/")
/// .body(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("{\"foo\":\"bar\"}")
/// .build()).result())
/// .headers(Map.of("Content-Type", "application/json"))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// job:
/// type: gcp:cloudscheduler:Job
/// properties:
/// name: test-job
/// description: test http job
/// schedule: '*/8 * * * *'
/// timeZone: America/New_York
/// attemptDeadline: 320s
/// retryConfig:
/// retryCount: 1
/// httpTarget:
/// httpMethod: POST
/// uri: https://example.com/
/// body:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: '{"foo":"bar"}'
/// return: result
/// headers:
/// Content-Type: application/json
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Scheduler Job Paused
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const job = new gcp.cloudscheduler.Job("job", {
/// paused: true,
/// name: "test-job",
/// description: "test http job with updated fields",
/// schedule: "*/8 * * * *",
/// timeZone: "America/New_York",
/// attemptDeadline: "320s",
/// retryConfig: {
/// retryCount: 1,
/// },
/// httpTarget: {
/// httpMethod: "POST",
/// uri: "https://example.com/ping",
/// body: std.base64encode({
/// input: "{\"foo\":\"bar\"}",
/// }).then(invoke => invoke.result),
/// headers: {
/// "Content-Type": "application/json",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// job = gcp.cloudscheduler.Job("job",
/// paused=True,
/// name="test-job",
/// description="test http job with updated fields",
/// schedule="*/8 * * * *",
/// time_zone="America/New_York",
/// attempt_deadline="320s",
/// retry_config={
/// "retry_count": 1,
/// },
/// http_target={
/// "http_method": "POST",
/// "uri": "https://example.com/ping",
/// "body": std.base64encode(input="{\"foo\":\"bar\"}").result,
/// "headers": {
/// "Content-Type": "application/json",
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
/// var job = new Gcp.CloudScheduler.Job("job", new()
/// {
/// Paused = true,
/// Name = "test-job",
/// Description = "test http job with updated fields",
/// Schedule = "*/8 * * * *",
/// TimeZone = "America/New_York",
/// AttemptDeadline = "320s",
/// RetryConfig = new Gcp.CloudScheduler.Inputs.JobRetryConfigArgs
/// {
/// RetryCount = 1,
/// },
/// HttpTarget = new Gcp.CloudScheduler.Inputs.JobHttpTargetArgs
/// {
/// HttpMethod = "POST",
/// Uri = "https://example.com/ping",
/// Body = Std.Base64encode.Invoke(new()
/// {
/// Input = "{\"foo\":\"bar\"}",
/// }).Apply(invoke => invoke.Result),
/// Headers =
/// {
/// { "Content-Type", "application/json" },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudscheduler"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "{\"foo\":\"bar\"}",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudscheduler.NewJob(ctx, "job", &cloudscheduler.JobArgs{
/// Paused:          pulumi.Bool(true),
/// Name:            pulumi.String("test-job"),
/// Description:     pulumi.String("test http job with updated fields"),
/// Schedule:        pulumi.String("*/8 * * * *"),
/// TimeZone:        pulumi.String("America/New_York"),
/// AttemptDeadline: pulumi.String("320s"),
/// RetryConfig: &cloudscheduler.JobRetryConfigArgs{
/// RetryCount: pulumi.Int(1),
/// },
/// HttpTarget: &cloudscheduler.JobHttpTargetArgs{
/// HttpMethod: pulumi.String("POST"),
/// Uri:        pulumi.String("https://example.com/ping"),
/// Body:       pulumi.String(invokeBase64encode.Result),
/// Headers: pulumi.StringMap{
/// "Content-Type": pulumi.String("application/json"),
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
/// import com.pulumi.gcp.cloudscheduler.Job;
/// import com.pulumi.gcp.cloudscheduler.JobArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobRetryConfigArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var job = new Job("job", JobArgs.builder()
/// .paused(true)
/// .name("test-job")
/// .description("test http job with updated fields")
/// .schedule("*/8 * * * *")
/// .timeZone("America/New_York")
/// .attemptDeadline("320s")
/// .retryConfig(JobRetryConfigArgs.builder()
/// .retryCount(1)
/// .build())
/// .httpTarget(JobHttpTargetArgs.builder()
/// .httpMethod("POST")
/// .uri("https://example.com/ping")
/// .body(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("{\"foo\":\"bar\"}")
/// .build()).result())
/// .headers(Map.of("Content-Type", "application/json"))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// job:
/// type: gcp:cloudscheduler:Job
/// properties:
/// paused: true
/// name: test-job
/// description: test http job with updated fields
/// schedule: '*/8 * * * *'
/// timeZone: America/New_York
/// attemptDeadline: 320s
/// retryConfig:
/// retryCount: 1
/// httpTarget:
/// httpMethod: POST
/// uri: https://example.com/ping
/// body:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: '{"foo":"bar"}'
/// return: result
/// headers:
/// Content-Type: application/json
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Scheduler Job App Engine
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const job = new gcp.cloudscheduler.Job("job", {
/// name: "test-job",
/// schedule: "*/4 * * * *",
/// description: "test app engine job",
/// timeZone: "Europe/London",
/// attemptDeadline: "320s",
/// retryConfig: {
/// minBackoffDuration: "1s",
/// maxRetryDuration: "10s",
/// maxDoublings: 2,
/// retryCount: 3,
/// },
/// appEngineHttpTarget: {
/// httpMethod: "POST",
/// appEngineRouting: {
/// service: "web",
/// version: "prod",
/// instance: "my-instance-001",
/// },
/// relativeUri: "/ping",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// job = gcp.cloudscheduler.Job("job",
/// name="test-job",
/// schedule="*/4 * * * *",
/// description="test app engine job",
/// time_zone="Europe/London",
/// attempt_deadline="320s",
/// retry_config={
/// "min_backoff_duration": "1s",
/// "max_retry_duration": "10s",
/// "max_doublings": 2,
/// "retry_count": 3,
/// },
/// app_engine_http_target={
/// "http_method": "POST",
/// "app_engine_routing": {
/// "service": "web",
/// "version": "prod",
/// "instance": "my-instance-001",
/// },
/// "relative_uri": "/ping",
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
/// var job = new Gcp.CloudScheduler.Job("job", new()
/// {
/// Name = "test-job",
/// Schedule = "*/4 * * * *",
/// Description = "test app engine job",
/// TimeZone = "Europe/London",
/// AttemptDeadline = "320s",
/// RetryConfig = new Gcp.CloudScheduler.Inputs.JobRetryConfigArgs
/// {
/// MinBackoffDuration = "1s",
/// MaxRetryDuration = "10s",
/// MaxDoublings = 2,
/// RetryCount = 3,
/// },
/// AppEngineHttpTarget = new Gcp.CloudScheduler.Inputs.JobAppEngineHttpTargetArgs
/// {
/// HttpMethod = "POST",
/// AppEngineRouting = new Gcp.CloudScheduler.Inputs.JobAppEngineHttpTargetAppEngineRoutingArgs
/// {
/// Service = "web",
/// Version = "prod",
/// Instance = "my-instance-001",
/// },
/// RelativeUri = "/ping",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudscheduler"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudscheduler.NewJob(ctx, "job", &cloudscheduler.JobArgs{
/// Name:            pulumi.String("test-job"),
/// Schedule:        pulumi.String("*/4 * * * *"),
/// Description:     pulumi.String("test app engine job"),
/// TimeZone:        pulumi.String("Europe/London"),
/// AttemptDeadline: pulumi.String("320s"),
/// RetryConfig: &cloudscheduler.JobRetryConfigArgs{
/// MinBackoffDuration: pulumi.String("1s"),
/// MaxRetryDuration:   pulumi.String("10s"),
/// MaxDoublings:       pulumi.Int(2),
/// RetryCount:         pulumi.Int(3),
/// },
/// AppEngineHttpTarget: &cloudscheduler.JobAppEngineHttpTargetArgs{
/// HttpMethod: pulumi.String("POST"),
/// AppEngineRouting: &cloudscheduler.JobAppEngineHttpTargetAppEngineRoutingArgs{
/// Service:  pulumi.String("web"),
/// Version:  pulumi.String("prod"),
/// Instance: pulumi.String("my-instance-001"),
/// },
/// RelativeUri: pulumi.String("/ping"),
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
/// import com.pulumi.gcp.cloudscheduler.Job;
/// import com.pulumi.gcp.cloudscheduler.JobArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobRetryConfigArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobAppEngineHttpTargetArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobAppEngineHttpTargetAppEngineRoutingArgs;
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
/// var job = new Job("job", JobArgs.builder()
/// .name("test-job")
/// .schedule("*/4 * * * *")
/// .description("test app engine job")
/// .timeZone("Europe/London")
/// .attemptDeadline("320s")
/// .retryConfig(JobRetryConfigArgs.builder()
/// .minBackoffDuration("1s")
/// .maxRetryDuration("10s")
/// .maxDoublings(2)
/// .retryCount(3)
/// .build())
/// .appEngineHttpTarget(JobAppEngineHttpTargetArgs.builder()
/// .httpMethod("POST")
/// .appEngineRouting(JobAppEngineHttpTargetAppEngineRoutingArgs.builder()
/// .service("web")
/// .version("prod")
/// .instance("my-instance-001")
/// .build())
/// .relativeUri("/ping")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// job:
/// type: gcp:cloudscheduler:Job
/// properties:
/// name: test-job
/// schedule: '*/4 * * * *'
/// description: test app engine job
/// timeZone: Europe/London
/// attemptDeadline: 320s
/// retryConfig:
/// minBackoffDuration: 1s
/// maxRetryDuration: 10s
/// maxDoublings: 2
/// retryCount: 3
/// appEngineHttpTarget:
/// httpMethod: POST
/// appEngineRouting:
/// service: web
/// version: prod
/// instance: my-instance-001
/// relativeUri: /ping
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Scheduler Job Oauth
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getDefaultServiceAccount({});
/// const job = new gcp.cloudscheduler.Job("job", {
/// name: "test-job",
/// description: "test http job",
/// schedule: "*/8 * * * *",
/// timeZone: "America/New_York",
/// attemptDeadline: "320s",
/// httpTarget: {
/// httpMethod: "GET",
/// uri: "https://cloudscheduler.googleapis.com/v1/projects/my-project-name/locations/us-west1/jobs",
/// oauthToken: {
/// serviceAccountEmail: _default.then(_default => _default.email),
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_default_service_account()
/// job = gcp.cloudscheduler.Job("job",
/// name="test-job",
/// description="test http job",
/// schedule="*/8 * * * *",
/// time_zone="America/New_York",
/// attempt_deadline="320s",
/// http_target={
/// "http_method": "GET",
/// "uri": "https://cloudscheduler.googleapis.com/v1/projects/my-project-name/locations/us-west1/jobs",
/// "oauth_token": {
/// "service_account_email": default.email,
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
/// var @default = Gcp.Compute.GetDefaultServiceAccount.Invoke();
///
/// var job = new Gcp.CloudScheduler.Job("job", new()
/// {
/// Name = "test-job",
/// Description = "test http job",
/// Schedule = "*/8 * * * *",
/// TimeZone = "America/New_York",
/// AttemptDeadline = "320s",
/// HttpTarget = new Gcp.CloudScheduler.Inputs.JobHttpTargetArgs
/// {
/// HttpMethod = "GET",
/// Uri = "https://cloudscheduler.googleapis.com/v1/projects/my-project-name/locations/us-west1/jobs",
/// OauthToken = new Gcp.CloudScheduler.Inputs.JobHttpTargetOauthTokenArgs
/// {
/// ServiceAccountEmail = @default.Apply(@default => @default.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudscheduler"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.GetDefaultServiceAccount(ctx, &compute.GetDefaultServiceAccountArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudscheduler.NewJob(ctx, "job", &cloudscheduler.JobArgs{
/// Name:            pulumi.String("test-job"),
/// Description:     pulumi.String("test http job"),
/// Schedule:        pulumi.String("*/8 * * * *"),
/// TimeZone:        pulumi.String("America/New_York"),
/// AttemptDeadline: pulumi.String("320s"),
/// HttpTarget: &cloudscheduler.JobHttpTargetArgs{
/// HttpMethod: pulumi.String("GET"),
/// Uri:        pulumi.String("https://cloudscheduler.googleapis.com/v1/projects/my-project-name/locations/us-west1/jobs"),
/// OauthToken: &cloudscheduler.JobHttpTargetOauthTokenArgs{
/// ServiceAccountEmail: pulumi.String(_default.Email),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetDefaultServiceAccountArgs;
/// import com.pulumi.gcp.cloudscheduler.Job;
/// import com.pulumi.gcp.cloudscheduler.JobArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetOauthTokenArgs;
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
/// final var default = ComputeFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
/// .build());
///
/// var job = new Job("job", JobArgs.builder()
/// .name("test-job")
/// .description("test http job")
/// .schedule("*/8 * * * *")
/// .timeZone("America/New_York")
/// .attemptDeadline("320s")
/// .httpTarget(JobHttpTargetArgs.builder()
/// .httpMethod("GET")
/// .uri("https://cloudscheduler.googleapis.com/v1/projects/my-project-name/locations/us-west1/jobs")
/// .oauthToken(JobHttpTargetOauthTokenArgs.builder()
/// .serviceAccountEmail(default_.email())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// job:
/// type: gcp:cloudscheduler:Job
/// properties:
/// name: test-job
/// description: test http job
/// schedule: '*/8 * * * *'
/// timeZone: America/New_York
/// attemptDeadline: 320s
/// httpTarget:
/// httpMethod: GET
/// uri: https://cloudscheduler.googleapis.com/v1/projects/my-project-name/locations/us-west1/jobs
/// oauthToken:
/// serviceAccountEmail: ${default.email}
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getDefaultServiceAccount
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Scheduler Job Oidc
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getDefaultServiceAccount({});
/// const job = new gcp.cloudscheduler.Job("job", {
/// name: "test-job",
/// description: "test http job",
/// schedule: "*/8 * * * *",
/// timeZone: "America/New_York",
/// attemptDeadline: "320s",
/// httpTarget: {
/// httpMethod: "GET",
/// uri: "https://example.com/ping",
/// oidcToken: {
/// serviceAccountEmail: _default.then(_default => _default.email),
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_default_service_account()
/// job = gcp.cloudscheduler.Job("job",
/// name="test-job",
/// description="test http job",
/// schedule="*/8 * * * *",
/// time_zone="America/New_York",
/// attempt_deadline="320s",
/// http_target={
/// "http_method": "GET",
/// "uri": "https://example.com/ping",
/// "oidc_token": {
/// "service_account_email": default.email,
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
/// var @default = Gcp.Compute.GetDefaultServiceAccount.Invoke();
///
/// var job = new Gcp.CloudScheduler.Job("job", new()
/// {
/// Name = "test-job",
/// Description = "test http job",
/// Schedule = "*/8 * * * *",
/// TimeZone = "America/New_York",
/// AttemptDeadline = "320s",
/// HttpTarget = new Gcp.CloudScheduler.Inputs.JobHttpTargetArgs
/// {
/// HttpMethod = "GET",
/// Uri = "https://example.com/ping",
/// OidcToken = new Gcp.CloudScheduler.Inputs.JobHttpTargetOidcTokenArgs
/// {
/// ServiceAccountEmail = @default.Apply(@default => @default.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudscheduler"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.GetDefaultServiceAccount(ctx, &compute.GetDefaultServiceAccountArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudscheduler.NewJob(ctx, "job", &cloudscheduler.JobArgs{
/// Name:            pulumi.String("test-job"),
/// Description:     pulumi.String("test http job"),
/// Schedule:        pulumi.String("*/8 * * * *"),
/// TimeZone:        pulumi.String("America/New_York"),
/// AttemptDeadline: pulumi.String("320s"),
/// HttpTarget: &cloudscheduler.JobHttpTargetArgs{
/// HttpMethod: pulumi.String("GET"),
/// Uri:        pulumi.String("https://example.com/ping"),
/// OidcToken: &cloudscheduler.JobHttpTargetOidcTokenArgs{
/// ServiceAccountEmail: pulumi.String(_default.Email),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetDefaultServiceAccountArgs;
/// import com.pulumi.gcp.cloudscheduler.Job;
/// import com.pulumi.gcp.cloudscheduler.JobArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetArgs;
/// import com.pulumi.gcp.cloudscheduler.inputs.JobHttpTargetOidcTokenArgs;
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
/// final var default = ComputeFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
/// .build());
///
/// var job = new Job("job", JobArgs.builder()
/// .name("test-job")
/// .description("test http job")
/// .schedule("*/8 * * * *")
/// .timeZone("America/New_York")
/// .attemptDeadline("320s")
/// .httpTarget(JobHttpTargetArgs.builder()
/// .httpMethod("GET")
/// .uri("https://example.com/ping")
/// .oidcToken(JobHttpTargetOidcTokenArgs.builder()
/// .serviceAccountEmail(default_.email())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// job:
/// type: gcp:cloudscheduler:Job
/// properties:
/// name: test-job
/// description: test http job
/// schedule: '*/8 * * * *'
/// timeZone: America/New_York
/// attemptDeadline: 320s
/// httpTarget:
/// httpMethod: GET
/// uri: https://example.com/ping
/// oidcToken:
/// serviceAccountEmail: ${default.email}
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getDefaultServiceAccount
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/jobs/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default projects/{{project}}/locations/{{region}}/jobs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default {{name}}
/// ```
class Job3 extends CustomResource {
  /// App Engine HTTP target.
  /// If the job providers a App Engine HTTP target the cron will
  /// send a request to the service instance
  /// Structure is documented below.
  late final Output<JobAppEngineHttpTarget?> appEngineHttpTarget;

  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is
  /// cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
  /// execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
  /// The allowed duration for this deadline is:
  /// * For HTTP targets, between 15 seconds and 30 minutes.
  /// * For App Engine HTTP targets, between 15 seconds and 24 hours.
  /// * **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  late final Output<String?> attemptDeadline;

  /// A human-readable description for the job.
  /// This string must not contain more than 500 characters.
  late final Output<String?> description;

  /// HTTP target.
  /// If the job providers a<span pulumi-lang-nodejs=" httpTarget " pulumi-lang-dotnet=" HttpTarget " pulumi-lang-go=" httpTarget " pulumi-lang-python=" http_target " pulumi-lang-yaml=" httpTarget " pulumi-lang-java=" httpTarget "> http_target </span>the cron will
  /// send a request to the targeted url
  /// Structure is documented below.
  late final Output<JobHttpTarget?> httpTarget;

  /// The name of the job.
  late final Output<String> name;

  /// Sets the job to a paused state. Jobs default to being enabled when this property is not set.
  late final Output<bool> paused;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Pub/Sub target
  /// If the job providers a Pub/Sub target the cron will publish
  /// a message to the provided topic
  /// Structure is documented below.
  late final Output<JobPubsubTarget?> pubsubTarget;

  /// Region where the scheduler job resides. If it is not provided, this provider will use the provider default.
  late final Output<String> region;

  /// By default, if a job does not complete successfully,
  /// meaning that an acknowledgement is not received from the handler,
  /// then it will be retried with exponential backoff according to the settings
  /// Structure is documented below.
  late final Output<JobRetryConfig?> retryConfig;

  /// Describes the schedule on which the job will be executed.
  late final Output<String?> schedule;

  /// State of the job.
  late final Output<String> state;

  /// Specifies the time zone to be used in interpreting schedule.
  /// The value of this field must be a time zone name from the tz database.
  late final Output<String?> timeZone;

  Job3(
    String name, {
    JobArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudscheduler/job:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appEngineHttpTarget =
        registerOutput<JobAppEngineHttpTarget?>('appEngineHttpTarget');
    this.attemptDeadline = registerOutput<String?>('attemptDeadline');
    this.description = registerOutput<String?>('description');
    this.httpTarget = registerOutput<JobHttpTarget?>('httpTarget');
    this.name = registerOutput<String>('name');
    this.paused = registerOutput<bool>('paused');
    this.project = registerOutput<String>('project');
    this.pubsubTarget = registerOutput<JobPubsubTarget?>('pubsubTarget');
    this.region = registerOutput<String>('region');
    this.retryConfig = registerOutput<JobRetryConfig?>('retryConfig');
    this.schedule = registerOutput<String?>('schedule');
    this.state = registerOutput<String>('state');
    this.timeZone = registerOutput<String?>('timeZone');
  }
}
