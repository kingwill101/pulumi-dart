import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_command.dart';
import 'job_execution_property.dart';
import 'job_notification_property.dart';
import 'job_source_control_details.dart';
import 'job_state.dart';

/// Provides a Glue Job resource.
///
/// &gt; Glue functionality, such as monitoring and logging of jobs, is typically managed with the `default_arguments` argument. See the [Special Parameters Used by AWS Glue](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html) topic in the Glue developer guide for additional information.
///
/// ## Example Usage
///
/// ### Python Glue Job
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // IAM role for Glue jobs
/// const glueJobRole = new aws.iam.Role("glue_job_role", {
///     name: "glue-job-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "glue.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const etlJob = new aws.glue.Job("etl_job", {
///     name: "example-etl-job",
///     description: "An example Glue ETL job",
///     roleArn: glueJobRole.arn,
///     glueVersion: "5.0",
///     maxRetries: 0,
///     timeout: 2880,
///     numberOfWorkers: 2,
///     workerType: "G.1X",
///     connections: [example.name],
///     executionClass: "STANDARD",
///     command: {
///         scriptLocation: `s3://${glueScripts.bucket}/jobs/etl_job.py`,
///         name: "glueetl",
///         pythonVersion: "3",
///     },
///     notificationProperty: {
///         notifyDelayAfter: 3,
///     },
///     defaultArguments: {
///         "--job-language": "python",
///         "--continuous-log-logGroup": "/aws-glue/jobs",
///         "--enable-continuous-cloudwatch-log": "true",
///         "--enable-continuous-log-filter": "true",
///         "--enable-metrics": "",
///         "--enable-auto-scaling": "true",
///     },
///     executionProperty: {
///         maxConcurrentRuns: 1,
///     },
///     tags: {
///         ManagedBy: "AWS",
///     },
/// });
/// const glueEtlScript = new aws.s3.BucketObjectv2("glue_etl_script", {
///     bucket: glueScripts.id,
///     key: "jobs/etl_job.py",
///     source: new pulumi.asset.FileAsset("jobs/etl_job.py"),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// # IAM role for Glue jobs
/// glue_job_role = aws.iam.Role("glue_job_role",
///     name="glue-job-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "glue.amazonaws.com",
///             },
///         }],
///     }))
/// etl_job = aws.glue.Job("etl_job",
///     name="example-etl-job",
///     description="An example Glue ETL job",
///     role_arn=glue_job_role.arn,
///     glue_version="5.0",
///     max_retries=0,
///     timeout=2880,
///     number_of_workers=2,
///     worker_type="G.1X",
///     connections=[example["name"]],
///     execution_class="STANDARD",
///     command={
///         "script_location": f"s3://{glue_scripts['bucket']}/jobs/etl_job.py",
///         "name": "glueetl",
///         "python_version": "3",
///     },
///     notification_property={
///         "notify_delay_after": 3,
///     },
///     default_arguments={
///         "--job-language": "python",
///         "--continuous-log-logGroup": "/aws-glue/jobs",
///         "--enable-continuous-cloudwatch-log": "true",
///         "--enable-continuous-log-filter": "true",
///         "--enable-metrics": "",
///         "--enable-auto-scaling": "true",
///     },
///     execution_property={
///         "max_concurrent_runs": 1,
///     },
///     tags={
///         "ManagedBy": "AWS",
///     })
/// glue_etl_script = aws.s3.BucketObjectv2("glue_etl_script",
///     bucket=glue_scripts["id"],
///     key="jobs/etl_job.py",
///     source=pulumi.FileAsset("jobs/etl_job.py"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // IAM role for Glue jobs
///     var glueJobRole = new Aws.Iam.Role("glue_job_role", new()
///     {
///         Name = "glue-job-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "glue.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var etlJob = new Aws.Glue.Job("etl_job", new()
///     {
///         Name = "example-etl-job",
///         Description = "An example Glue ETL job",
///         RoleArn = glueJobRole.Arn,
///         GlueVersion = "5.0",
///         MaxRetries = 0,
///         Timeout = 2880,
///         NumberOfWorkers = 2,
///         WorkerType = "G.1X",
///         Connections = new[]
///         {
///             example.Name,
///         },
///         ExecutionClass = "STANDARD",
///         Command = new Aws.Glue.Inputs.JobCommandArgs
///         {
///             ScriptLocation = $"s3://{glueScripts.Bucket}/jobs/etl_job.py",
///             Name = "glueetl",
///             PythonVersion = "3",
///         },
///         NotificationProperty = new Aws.Glue.Inputs.JobNotificationPropertyArgs
///         {
///             NotifyDelayAfter = 3,
///         },
///         DefaultArguments =
///         {
///             { "--job-language", "python" },
///             { "--continuous-log-logGroup", "/aws-glue/jobs" },
///             { "--enable-continuous-cloudwatch-log", "true" },
///             { "--enable-continuous-log-filter", "true" },
///             { "--enable-metrics", "" },
///             { "--enable-auto-scaling", "true" },
///         },
///         ExecutionProperty = new Aws.Glue.Inputs.JobExecutionPropertyArgs
///         {
///             MaxConcurrentRuns = 1,
///         },
///         Tags =
///         {
///             { "ManagedBy", "AWS" },
///         },
///     });
///
///     var glueEtlScript = new Aws.S3.BucketObjectv2("glue_etl_script", new()
///     {
///         Bucket = glueScripts.Id,
///         Key = "jobs/etl_job.py",
///         Source = new FileAsset("jobs/etl_job.py"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "glue.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		// IAM role for Glue jobs
/// 		glueJobRole, err := iam.NewRole(ctx, "glue_job_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("glue-job-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewJob(ctx, "etl_job", &glue.JobArgs{
/// 			Name:            pulumi.String("example-etl-job"),
/// 			Description:     pulumi.String("An example Glue ETL job"),
/// 			RoleArn:         glueJobRole.Arn,
/// 			GlueVersion:     pulumi.String("5.0"),
/// 			MaxRetries:      pulumi.Int(0),
/// 			Timeout:         pulumi.Int(2880),
/// 			NumberOfWorkers: pulumi.Int(2),
/// 			WorkerType:      pulumi.String("G.1X"),
/// 			Connections: pulumi.StringArray{
/// 				example.Name,
/// 			},
/// 			ExecutionClass: pulumi.String("STANDARD"),
/// 			Command: &glue.JobCommandArgs{
/// 				ScriptLocation: pulumi.Sprintf("s3://%v/jobs/etl_job.py", glueScripts.Bucket),
/// 				Name:           pulumi.String("glueetl"),
/// 				PythonVersion:  pulumi.String("3"),
/// 			},
/// 			NotificationProperty: &glue.JobNotificationPropertyArgs{
/// 				NotifyDelayAfter: pulumi.Int(3),
/// 			},
/// 			DefaultArguments: pulumi.StringMap{
/// 				"--job-language":                     pulumi.String("python"),
/// 				"--continuous-log-logGroup":          pulumi.String("/aws-glue/jobs"),
/// 				"--enable-continuous-cloudwatch-log": pulumi.String("true"),
/// 				"--enable-continuous-log-filter":     pulumi.String("true"),
/// 				"--enable-metrics":                   pulumi.String(""),
/// 				"--enable-auto-scaling":              pulumi.String("true"),
/// 			},
/// 			ExecutionProperty: &glue.JobExecutionPropertyArgs{
/// 				MaxConcurrentRuns: pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ManagedBy": pulumi.String("AWS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "glue_etl_script", &s3.BucketObjectv2Args{
/// 			Bucket: pulumi.Any(glueScripts.Id),
/// 			Key:    pulumi.String("jobs/etl_job.py"),
/// 			Source: pulumi.NewFileAsset("jobs/etl_job.py"),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.glue.Job;
/// import com.pulumi.aws.glue.JobArgs;
/// import com.pulumi.aws.glue.inputs.JobCommandArgs;
/// import com.pulumi.aws.glue.inputs.JobNotificationPropertyArgs;
/// import com.pulumi.aws.glue.inputs.JobExecutionPropertyArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.asset.FileAsset;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         // IAM role for Glue jobs
///         var glueJobRole = new Role("glueJobRole", RoleArgs.builder()
///             .name("glue-job-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "glue.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var etlJob = new Job("etlJob", JobArgs.builder()
///             .name("example-etl-job")
///             .description("An example Glue ETL job")
///             .roleArn(glueJobRole.arn())
///             .glueVersion("5.0")
///             .maxRetries(0)
///             .timeout(2880)
///             .numberOfWorkers(2)
///             .workerType("G.1X")
///             .connections(example.name())
///             .executionClass("STANDARD")
///             .command(JobCommandArgs.builder()
///                 .scriptLocation(String.format("s3://%s/jobs/etl_job.py", glueScripts.bucket()))
///                 .name("glueetl")
///                 .pythonVersion("3")
///                 .build())
///             .notificationProperty(JobNotificationPropertyArgs.builder()
///                 .notifyDelayAfter(3)
///                 .build())
///             .defaultArguments(Map.ofEntries(
///                 Map.entry("--job-language", "python"),
///                 Map.entry("--continuous-log-logGroup", "/aws-glue/jobs"),
///                 Map.entry("--enable-continuous-cloudwatch-log", "true"),
///                 Map.entry("--enable-continuous-log-filter", "true"),
///                 Map.entry("--enable-metrics", ""),
///                 Map.entry("--enable-auto-scaling", "true")
///             ))
///             .executionProperty(JobExecutionPropertyArgs.builder()
///                 .maxConcurrentRuns(1)
///                 .build())
///             .tags(Map.of("ManagedBy", "AWS"))
///             .build());
///
///         var glueEtlScript = new BucketObjectv2("glueEtlScript", BucketObjectv2Args.builder()
///             .bucket(glueScripts.id())
///             .key("jobs/etl_job.py")
///             .source(new FileAsset("jobs/etl_job.py"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   etlJob:
///     type: aws:glue:Job
///     name: etl_job
///     properties:
///       name: example-etl-job
///       description: An example Glue ETL job
///       roleArn: ${glueJobRole.arn}
///       glueVersion: '5.0'
///       maxRetries: 0
///       timeout: 2880
///       numberOfWorkers: 2
///       workerType: G.1X
///       connections:
///         - ${example.name}
///       executionClass: STANDARD
///       command:
///         scriptLocation: s3://${glueScripts.bucket}/jobs/etl_job.py
///         name: glueetl
///         pythonVersion: '3'
///       notificationProperty:
///         notifyDelayAfter: 3
///       defaultArguments:
///         --job-language: python
///         --continuous-log-logGroup: /aws-glue/jobs
///         --enable-continuous-cloudwatch-log: 'true'
///         --enable-continuous-log-filter: 'true'
///         --enable-metrics: ""
///         --enable-auto-scaling: 'true'
///       executionProperty:
///         maxConcurrentRuns: 1
///       tags:
///         ManagedBy: AWS
///   # IAM role for Glue jobs
///   glueJobRole:
///     type: aws:iam:Role
///     name: glue_job_role
///     properties:
///       name: glue-job-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: glue.amazonaws.com
///   glueEtlScript:
///     type: aws:s3:BucketObjectv2
///     name: glue_etl_script
///     properties:
///       bucket: ${glueScripts.id}
///       key: jobs/etl_job.py
///       source:
///         fn::FileAsset: jobs/etl_job.py
/// ```
///
///
/// ### Pythonshell Job
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // IAM role for Glue jobs
/// const glueJobRole = new aws.iam.Role("glue_job_role", {
///     name: "glue-job-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "glue.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const pythonShellJob = new aws.glue.Job("python_shell_job", {
///     name: "example-python-shell-job",
///     description: "An example Python shell job",
///     roleArn: glueJobRole.arn,
///     maxCapacity: 0.0625,
///     maxRetries: 0,
///     timeout: 2880,
///     connections: [example.name],
///     command: {
///         scriptLocation: `s3://${glueScripts.bucket}/jobs/shell_job.py`,
///         name: "pythonshell",
///         pythonVersion: "3.9",
///     },
///     defaultArguments: {
///         "--job-language": "python",
///         "--continuous-log-logGroup": "/aws-glue/jobs",
///         "--enable-continuous-cloudwatch-log": "true",
///         "library-set": "analytics",
///     },
///     executionProperty: {
///         maxConcurrentRuns: 1,
///     },
///     tags: {
///         ManagedBy: "AWS",
///     },
/// });
/// const pythonShellScript = new aws.s3.BucketObjectv2("python_shell_script", {
///     bucket: glueScripts.id,
///     key: "jobs/shell_job.py",
///     source: new pulumi.asset.FileAsset("jobs/shell_job.py"),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// # IAM role for Glue jobs
/// glue_job_role = aws.iam.Role("glue_job_role",
///     name="glue-job-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "glue.amazonaws.com",
///             },
///         }],
///     }))
/// python_shell_job = aws.glue.Job("python_shell_job",
///     name="example-python-shell-job",
///     description="An example Python shell job",
///     role_arn=glue_job_role.arn,
///     max_capacity=0.0625,
///     max_retries=0,
///     timeout=2880,
///     connections=[example["name"]],
///     command={
///         "script_location": f"s3://{glue_scripts['bucket']}/jobs/shell_job.py",
///         "name": "pythonshell",
///         "python_version": "3.9",
///     },
///     default_arguments={
///         "--job-language": "python",
///         "--continuous-log-logGroup": "/aws-glue/jobs",
///         "--enable-continuous-cloudwatch-log": "true",
///         "library-set": "analytics",
///     },
///     execution_property={
///         "max_concurrent_runs": 1,
///     },
///     tags={
///         "ManagedBy": "AWS",
///     })
/// python_shell_script = aws.s3.BucketObjectv2("python_shell_script",
///     bucket=glue_scripts["id"],
///     key="jobs/shell_job.py",
///     source=pulumi.FileAsset("jobs/shell_job.py"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // IAM role for Glue jobs
///     var glueJobRole = new Aws.Iam.Role("glue_job_role", new()
///     {
///         Name = "glue-job-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "glue.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var pythonShellJob = new Aws.Glue.Job("python_shell_job", new()
///     {
///         Name = "example-python-shell-job",
///         Description = "An example Python shell job",
///         RoleArn = glueJobRole.Arn,
///         MaxCapacity = 0.0625,
///         MaxRetries = 0,
///         Timeout = 2880,
///         Connections = new[]
///         {
///             example.Name,
///         },
///         Command = new Aws.Glue.Inputs.JobCommandArgs
///         {
///             ScriptLocation = $"s3://{glueScripts.Bucket}/jobs/shell_job.py",
///             Name = "pythonshell",
///             PythonVersion = "3.9",
///         },
///         DefaultArguments =
///         {
///             { "--job-language", "python" },
///             { "--continuous-log-logGroup", "/aws-glue/jobs" },
///             { "--enable-continuous-cloudwatch-log", "true" },
///             { "library-set", "analytics" },
///         },
///         ExecutionProperty = new Aws.Glue.Inputs.JobExecutionPropertyArgs
///         {
///             MaxConcurrentRuns = 1,
///         },
///         Tags =
///         {
///             { "ManagedBy", "AWS" },
///         },
///     });
///
///     var pythonShellScript = new Aws.S3.BucketObjectv2("python_shell_script", new()
///     {
///         Bucket = glueScripts.Id,
///         Key = "jobs/shell_job.py",
///         Source = new FileAsset("jobs/shell_job.py"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "glue.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		// IAM role for Glue jobs
/// 		glueJobRole, err := iam.NewRole(ctx, "glue_job_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("glue-job-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewJob(ctx, "python_shell_job", &glue.JobArgs{
/// 			Name:        pulumi.String("example-python-shell-job"),
/// 			Description: pulumi.String("An example Python shell job"),
/// 			RoleArn:     glueJobRole.Arn,
/// 			MaxCapacity: pulumi.Float64(0.0625),
/// 			MaxRetries:  pulumi.Int(0),
/// 			Timeout:     pulumi.Int(2880),
/// 			Connections: pulumi.StringArray{
/// 				example.Name,
/// 			},
/// 			Command: &glue.JobCommandArgs{
/// 				ScriptLocation: pulumi.Sprintf("s3://%v/jobs/shell_job.py", glueScripts.Bucket),
/// 				Name:           pulumi.String("pythonshell"),
/// 				PythonVersion:  pulumi.String("3.9"),
/// 			},
/// 			DefaultArguments: pulumi.StringMap{
/// 				"--job-language":                     pulumi.String("python"),
/// 				"--continuous-log-logGroup":          pulumi.String("/aws-glue/jobs"),
/// 				"--enable-continuous-cloudwatch-log": pulumi.String("true"),
/// 				"library-set":                        pulumi.String("analytics"),
/// 			},
/// 			ExecutionProperty: &glue.JobExecutionPropertyArgs{
/// 				MaxConcurrentRuns: pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ManagedBy": pulumi.String("AWS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "python_shell_script", &s3.BucketObjectv2Args{
/// 			Bucket: pulumi.Any(glueScripts.Id),
/// 			Key:    pulumi.String("jobs/shell_job.py"),
/// 			Source: pulumi.NewFileAsset("jobs/shell_job.py"),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.glue.Job;
/// import com.pulumi.aws.glue.JobArgs;
/// import com.pulumi.aws.glue.inputs.JobCommandArgs;
/// import com.pulumi.aws.glue.inputs.JobExecutionPropertyArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.asset.FileAsset;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         // IAM role for Glue jobs
///         var glueJobRole = new Role("glueJobRole", RoleArgs.builder()
///             .name("glue-job-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "glue.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var pythonShellJob = new Job("pythonShellJob", JobArgs.builder()
///             .name("example-python-shell-job")
///             .description("An example Python shell job")
///             .roleArn(glueJobRole.arn())
///             .maxCapacity(0.0625)
///             .maxRetries(0)
///             .timeout(2880)
///             .connections(example.name())
///             .command(JobCommandArgs.builder()
///                 .scriptLocation(String.format("s3://%s/jobs/shell_job.py", glueScripts.bucket()))
///                 .name("pythonshell")
///                 .pythonVersion("3.9")
///                 .build())
///             .defaultArguments(Map.ofEntries(
///                 Map.entry("--job-language", "python"),
///                 Map.entry("--continuous-log-logGroup", "/aws-glue/jobs"),
///                 Map.entry("--enable-continuous-cloudwatch-log", "true"),
///                 Map.entry("library-set", "analytics")
///             ))
///             .executionProperty(JobExecutionPropertyArgs.builder()
///                 .maxConcurrentRuns(1)
///                 .build())
///             .tags(Map.of("ManagedBy", "AWS"))
///             .build());
///
///         var pythonShellScript = new BucketObjectv2("pythonShellScript", BucketObjectv2Args.builder()
///             .bucket(glueScripts.id())
///             .key("jobs/shell_job.py")
///             .source(new FileAsset("jobs/shell_job.py"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pythonShellJob:
///     type: aws:glue:Job
///     name: python_shell_job
///     properties:
///       name: example-python-shell-job
///       description: An example Python shell job
///       roleArn: ${glueJobRole.arn}
///       maxCapacity: '0.0625'
///       maxRetries: 0
///       timeout: 2880
///       connections:
///         - ${example.name}
///       command:
///         scriptLocation: s3://${glueScripts.bucket}/jobs/shell_job.py
///         name: pythonshell
///         pythonVersion: '3.9'
///       defaultArguments:
///         --job-language: python
///         --continuous-log-logGroup: /aws-glue/jobs
///         --enable-continuous-cloudwatch-log: 'true'
///         library-set: analytics
///       executionProperty:
///         maxConcurrentRuns: 1
///       tags:
///         ManagedBy: AWS
///   # IAM role for Glue jobs
///   glueJobRole:
///     type: aws:iam:Role
///     name: glue_job_role
///     properties:
///       name: glue-job-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: glue.amazonaws.com
///   pythonShellScript:
///     type: aws:s3:BucketObjectv2
///     name: python_shell_script
///     properties:
///       bucket: ${glueScripts.id}
///       key: jobs/shell_job.py
///       source:
///         fn::FileAsset: jobs/shell_job.py
/// ```
///
///
/// ### Ray Job
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Job("example", {
///     name: "example",
///     roleArn: exampleAwsIamRole.arn,
///     glueVersion: "4.0",
///     workerType: "Z.2X",
///     command: {
///         name: "glueray",
///         pythonVersion: "3.9",
///         runtime: "Ray2.4",
///         scriptLocation: `s3://${exampleAwsS3Bucket.bucket}/example.py`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Job("example",
///     name="example",
///     role_arn=example_aws_iam_role["arn"],
///     glue_version="4.0",
///     worker_type="Z.2X",
///     command={
///         "name": "glueray",
///         "python_version": "3.9",
///         "runtime": "Ray2.4",
///         "script_location": f"s3://{example_aws_s3_bucket['bucket']}/example.py",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Job("example", new()
///     {
///         Name = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         GlueVersion = "4.0",
///         WorkerType = "Z.2X",
///         Command = new Aws.Glue.Inputs.JobCommandArgs
///         {
///             Name = "glueray",
///             PythonVersion = "3.9",
///             Runtime = "Ray2.4",
///             ScriptLocation = $"s3://{exampleAwsS3Bucket.Bucket}/example.py",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewJob(ctx, "example", &glue.JobArgs{
/// 			Name:        pulumi.String("example"),
/// 			RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// 			GlueVersion: pulumi.String("4.0"),
/// 			WorkerType:  pulumi.String("Z.2X"),
/// 			Command: &glue.JobCommandArgs{
/// 				Name:           pulumi.String("glueray"),
/// 				PythonVersion:  pulumi.String("3.9"),
/// 				Runtime:        pulumi.String("Ray2.4"),
/// 				ScriptLocation: pulumi.Sprintf("s3://%v/example.py", exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.glue.Job;
/// import com.pulumi.aws.glue.JobArgs;
/// import com.pulumi.aws.glue.inputs.JobCommandArgs;
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
///         var example = new Job("example", JobArgs.builder()
///             .name("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .glueVersion("4.0")
///             .workerType("Z.2X")
///             .command(JobCommandArgs.builder()
///                 .name("glueray")
///                 .pythonVersion("3.9")
///                 .runtime("Ray2.4")
///                 .scriptLocation(String.format("s3://%s/example.py", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Job
///     properties:
///       name: example
///       roleArn: ${exampleAwsIamRole.arn}
///       glueVersion: '4.0'
///       workerType: Z.2X
///       command:
///         name: glueray
///         pythonVersion: '3.9'
///         runtime: Ray2.4
///         scriptLocation: s3://${exampleAwsS3Bucket.bucket}/example.py
/// ```
///
///
/// ### Scala Job
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Job("example", {
///     name: "example",
///     roleArn: exampleAwsIamRole.arn,
///     command: {
///         scriptLocation: `s3://${exampleAwsS3Bucket.bucket}/example.scala`,
///     },
///     defaultArguments: {
///         "--job-language": "scala",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Job("example",
///     name="example",
///     role_arn=example_aws_iam_role["arn"],
///     command={
///         "script_location": f"s3://{example_aws_s3_bucket['bucket']}/example.scala",
///     },
///     default_arguments={
///         "--job-language": "scala",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Job("example", new()
///     {
///         Name = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         Command = new Aws.Glue.Inputs.JobCommandArgs
///         {
///             ScriptLocation = $"s3://{exampleAwsS3Bucket.Bucket}/example.scala",
///         },
///         DefaultArguments =
///         {
///             { "--job-language", "scala" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewJob(ctx, "example", &glue.JobArgs{
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Command: &glue.JobCommandArgs{
/// 				ScriptLocation: pulumi.Sprintf("s3://%v/example.scala", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			DefaultArguments: pulumi.StringMap{
/// 				"--job-language": pulumi.String("scala"),
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
/// import com.pulumi.aws.glue.Job;
/// import com.pulumi.aws.glue.JobArgs;
/// import com.pulumi.aws.glue.inputs.JobCommandArgs;
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
///         var example = new Job("example", JobArgs.builder()
///             .name("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .command(JobCommandArgs.builder()
///                 .scriptLocation(String.format("s3://%s/example.scala", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .defaultArguments(Map.of("--job-language", "scala"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Job
///     properties:
///       name: example
///       roleArn: ${exampleAwsIamRole.arn}
///       command:
///         scriptLocation: s3://${exampleAwsS3Bucket.bucket}/example.scala
///       defaultArguments:
///         --job-language: scala
/// ```
///
///
/// ### Streaming Job
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Job("example", {
///     name: "example streaming job",
///     roleArn: exampleAwsIamRole.arn,
///     command: {
///         name: "gluestreaming",
///         scriptLocation: `s3://${exampleAwsS3Bucket.bucket}/example.script`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Job("example",
///     name="example streaming job",
///     role_arn=example_aws_iam_role["arn"],
///     command={
///         "name": "gluestreaming",
///         "script_location": f"s3://{example_aws_s3_bucket['bucket']}/example.script",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Job("example", new()
///     {
///         Name = "example streaming job",
///         RoleArn = exampleAwsIamRole.Arn,
///         Command = new Aws.Glue.Inputs.JobCommandArgs
///         {
///             Name = "gluestreaming",
///             ScriptLocation = $"s3://{exampleAwsS3Bucket.Bucket}/example.script",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewJob(ctx, "example", &glue.JobArgs{
/// 			Name:    pulumi.String("example streaming job"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Command: &glue.JobCommandArgs{
/// 				Name:           pulumi.String("gluestreaming"),
/// 				ScriptLocation: pulumi.Sprintf("s3://%v/example.script", exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.glue.Job;
/// import com.pulumi.aws.glue.JobArgs;
/// import com.pulumi.aws.glue.inputs.JobCommandArgs;
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
///         var example = new Job("example", JobArgs.builder()
///             .name("example streaming job")
///             .roleArn(exampleAwsIamRole.arn())
///             .command(JobCommandArgs.builder()
///                 .name("gluestreaming")
///                 .scriptLocation(String.format("s3://%s/example.script", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Job
///     properties:
///       name: example streaming job
///       roleArn: ${exampleAwsIamRole.arn}
///       command:
///         name: gluestreaming
///         scriptLocation: s3://${exampleAwsS3Bucket.bucket}/example.script
/// ```
///
///
/// ### Enabling CloudWatch Logs and Metrics
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {
///     name: "example",
///     retentionInDays: 14,
/// });
/// const exampleJob = new aws.glue.Job("example", {defaultArguments: {
///     "--continuous-log-logGroup": example.name,
///     "--enable-continuous-cloudwatch-log": "true",
///     "--enable-continuous-log-filter": "true",
///     "--enable-metrics": "",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example",
///     name="example",
///     retention_in_days=14)
/// example_job = aws.glue.Job("example", default_arguments={
///     "--continuous-log-logGroup": example.name,
///     "--enable-continuous-cloudwatch-log": "true",
///     "--enable-continuous-log-filter": "true",
///     "--enable-metrics": "",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///         RetentionInDays = 14,
///     });
///
///     var exampleJob = new Aws.Glue.Job("example", new()
///     {
///         DefaultArguments =
///         {
///             { "--continuous-log-logGroup", example.Name },
///             { "--enable-continuous-cloudwatch-log", "true" },
///             { "--enable-continuous-log-filter", "true" },
///             { "--enable-metrics", "" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name:            pulumi.String("example"),
/// 			RetentionInDays: pulumi.Int(14),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewJob(ctx, "example", &glue.JobArgs{
/// 			DefaultArguments: pulumi.StringMap{
/// 				"--continuous-log-logGroup":          example.Name,
/// 				"--enable-continuous-cloudwatch-log": pulumi.String("true"),
/// 				"--enable-continuous-log-filter":     pulumi.String("true"),
/// 				"--enable-metrics":                   pulumi.String(""),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.glue.Job;
/// import com.pulumi.aws.glue.JobArgs;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("example")
///             .retentionInDays(14)
///             .build());
///
///         var exampleJob = new Job("exampleJob", JobArgs.builder()
///             .defaultArguments(Map.ofEntries(
///                 Map.entry("--continuous-log-logGroup", example.name()),
///                 Map.entry("--enable-continuous-cloudwatch-log", "true"),
///                 Map.entry("--enable-continuous-log-filter", "true"),
///                 Map.entry("--enable-metrics", "")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: example
///       retentionInDays: 14
///   exampleJob:
///     type: aws:glue:Job
///     name: example
///     properties:
///       defaultArguments:
///         --continuous-log-logGroup: ${example.name}
///         --enable-continuous-cloudwatch-log: 'true'
///         --enable-continuous-log-filter: 'true'
///         --enable-metrics: ""
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Jobs using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/job:Job MyJob MyJob
/// ```
class Job extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of Glue Job
  late final pulumi.Output<String> arn;

  /// The command of the job. Defined below.
  late final pulumi.Output<JobCommand> command;

  /// The list of connections used for this job.
  late final pulumi.Output<List<String>?> connections;

  /// The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-glue-arguments.html) topic in the developer guide.
  late final pulumi.Output<Map<String, String>?> defaultArguments;

  /// Description of the job.
  late final pulumi.Output<String?> description;

  /// Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: `FLEX`, `STANDARD`.
  late final pulumi.Output<String?> executionClass;

  /// Execution property of the job. Defined below.
  late final pulumi.Output<JobExecutionProperty> executionProperty;

  /// The version of glue to use, for example "1.0". Ray jobs should set this to 4.0 or greater. For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  late final pulumi.Output<String> glueVersion;

  /// Describes how a job was created. Valid values are `SCRIPT`, `NOTEBOOK` and `VISUAL`.
  late final pulumi.Output<String> jobMode;

  /// Specifies whether job run queuing is enabled for the job runs for this job. A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.
  late final pulumi.Output<bool?> jobRunQueuingEnabled;

  /// Specifies the day of the week and hour for the maintenance window for streaming jobs.
  late final pulumi.Output<String?> maintenanceWindow;

  /// The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. `Required` when `pythonshell` is set, accept either `0.0625` or `1.0`. Use `number_of_workers` and `worker_type` arguments instead with `glue_version` `2.0` and above.
  late final pulumi.Output<double> maxCapacity;

  /// The maximum number of times to retry this job if it fails.
  late final pulumi.Output<int?> maxRetries;

  /// The name you assign to this job. It must be unique in your account.
  late final pulumi.Output<String> name;

  /// Non-overridable arguments for this job, specified as name-value pairs.
  late final pulumi.Output<Map<String, String>?> nonOverridableArguments;

  /// Notification property of the job. Defined below.
  late final pulumi.Output<JobNotificationProperty> notificationProperty;

  /// The number of workers of a defined workerType that are allocated when a job runs.
  late final pulumi.Output<int> numberOfWorkers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the IAM role associated with this job.
  late final pulumi.Output<String> roleArn;

  /// The name of the Security Configuration to be associated with the job.
  late final pulumi.Output<String?> securityConfiguration;

  /// The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository. Defined below.
  late final pulumi.Output<JobSourceControlDetails?> sourceControlDetails;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The job timeout in minutes. The default is 2880 minutes (48 hours) for `glueetl` and `pythonshell` jobs, and 0 (unlimited) for `gluestreaming` jobs. Leave this attribute argumnet unconfigured for `glueray` jobs.
  late final pulumi.Output<int> timeout;

  /// The type of predefined worker that is allocated when a job runs. Valid values: `Standard`, `G.1X`, `G.2X`, `G.025X`, `G.4X`, `G.8X`, `G.12X`, `G.16X`, `R.1X`, `R.2X`, `R.4X`, `R.8X`, `Z.2X` (Ray jobs). See the [AWS documentation](https://docs.aws.amazon.com/glue/latest/dg/worker-types.html) for details.
  late final pulumi.Output<String> workerType;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_glue_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:glue/job:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    command = registerOutput<JobCommand>('command');
    connections = registerOutput<List<String>?>('connections');
    defaultArguments = registerOutput<Map<String, String>?>('defaultArguments');
    description = registerOutput<String?>('description');
    executionClass = registerOutput<String?>('executionClass');
    executionProperty = registerOutput<JobExecutionProperty>(
      'executionProperty',
    );
    glueVersion = registerOutput<String>('glueVersion');
    jobMode = registerOutput<String>('jobMode');
    jobRunQueuingEnabled = registerOutput<bool?>('jobRunQueuingEnabled');
    maintenanceWindow = registerOutput<String?>('maintenanceWindow');
    maxCapacity = registerOutput<double>('maxCapacity');
    maxRetries = registerOutput<int?>('maxRetries');
    this.name = registerOutput<String>('name');
    nonOverridableArguments = registerOutput<Map<String, String>?>(
      'nonOverridableArguments',
    );
    notificationProperty = registerOutput<JobNotificationProperty>(
      'notificationProperty',
    );
    numberOfWorkers = registerOutput<int>('numberOfWorkers');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityConfiguration = registerOutput<String?>('securityConfiguration');
    sourceControlDetails = registerOutput<JobSourceControlDetails?>(
      'sourceControlDetails',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeout = registerOutput<int>('timeout');
    workerType = registerOutput<String>('workerType');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(String name, pulumi.Input<String> id, {JobState? state}) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/job:Job',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    command = registerOutput<JobCommand>('command');
    connections = registerOutput<List<String>?>('connections');
    defaultArguments = registerOutput<Map<String, String>?>('defaultArguments');
    description = registerOutput<String?>('description');
    executionClass = registerOutput<String?>('executionClass');
    executionProperty = registerOutput<JobExecutionProperty>(
      'executionProperty',
    );
    glueVersion = registerOutput<String>('glueVersion');
    jobMode = registerOutput<String>('jobMode');
    jobRunQueuingEnabled = registerOutput<bool?>('jobRunQueuingEnabled');
    maintenanceWindow = registerOutput<String?>('maintenanceWindow');
    maxCapacity = registerOutput<double>('maxCapacity');
    maxRetries = registerOutput<int?>('maxRetries');
    this.name = registerOutput<String>('name');
    nonOverridableArguments = registerOutput<Map<String, String>?>(
      'nonOverridableArguments',
    );
    notificationProperty = registerOutput<JobNotificationProperty>(
      'notificationProperty',
    );
    numberOfWorkers = registerOutput<int>('numberOfWorkers');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityConfiguration = registerOutput<String?>('securityConfiguration');
    sourceControlDetails = registerOutput<JobSourceControlDetails?>(
      'sourceControlDetails',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeout = registerOutput<int>('timeout');
    workerType = registerOutput<String>('workerType');
  }
}
