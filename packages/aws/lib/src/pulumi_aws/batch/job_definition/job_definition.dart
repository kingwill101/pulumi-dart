import 'package:pulumi/pulumi.dart';
import '../job_definition_eks_properties/job_definition_eks_properties.dart';
import '../job_definition_retry_strategy/job_definition_retry_strategy.dart';
import '../job_definition_timeout/job_definition_timeout.dart';
import 'job_definition_args.dart';

/// Provides a Batch Job Definition resource.
///
/// ## Example Usage
///
/// ### Job definition of type container
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.batch.JobDefinition("test", {
/// name: "my_test_batch_job_definition",
/// type: "container",
/// containerProperties: JSON.stringify({
/// command: [
/// "ls",
/// "-la",
/// ],
/// image: "busybox",
/// resourceRequirements: [
/// {
/// type: "VCPU",
/// value: "0.25",
/// },
/// {
/// type: "MEMORY",
/// value: "512",
/// },
/// ],
/// volumes: [{
/// host: {
/// sourcePath: "/tmp",
/// },
/// name: "tmp",
/// }],
/// environment: [{
/// name: "VARNAME",
/// value: "VARVAL",
/// }],
/// mountPoints: [{
/// sourceVolume: "tmp",
/// containerPath: "/tmp",
/// readOnly: false,
/// }],
/// ulimits: [{
/// hardLimit: 1024,
/// name: "nofile",
/// softLimit: 1024,
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.batch.JobDefinition("test",
/// name="my_test_batch_job_definition",
/// type="container",
/// container_properties=json.dumps({
/// "command": [
/// "ls",
/// "-la",
/// ],
/// "image": "busybox",
/// "resourceRequirements": [
/// {
/// "type": "VCPU",
/// "value": "0.25",
/// },
/// {
/// "type": "MEMORY",
/// "value": "512",
/// },
/// ],
/// "volumes": [{
/// "host": {
/// "sourcePath": "/tmp",
/// },
/// "name": "tmp",
/// }],
/// "environment": [{
/// "name": "VARNAME",
/// "value": "VARVAL",
/// }],
/// "mountPoints": [{
/// "sourceVolume": "tmp",
/// "containerPath": "/tmp",
/// "readOnly": False,
/// }],
/// "ulimits": [{
/// "hardLimit": 1024,
/// "name": "nofile",
/// "softLimit": 1024,
/// }],
/// }))
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
/// var test = new Aws.Batch.JobDefinition("test", new()
/// {
/// Name = "my_test_batch_job_definition",
/// Type = "container",
/// ContainerProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["command"] = new[]
/// {
/// "ls",
/// "-la",
/// },
/// ["image"] = "busybox",
/// ["resourceRequirements"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["type"] = "VCPU",
/// ["value"] = "0.25",
/// },
/// new Dictionary<string, object?>
/// {
/// ["type"] = "MEMORY",
/// ["value"] = "512",
/// },
/// },
/// ["volumes"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["host"] = new Dictionary<string, object?>
/// {
/// ["sourcePath"] = "/tmp",
/// },
/// ["name"] = "tmp",
/// },
/// },
/// ["environment"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["name"] = "VARNAME",
/// ["value"] = "VARVAL",
/// },
/// },
/// ["mountPoints"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["sourceVolume"] = "tmp",
/// ["containerPath"] = "/tmp",
/// ["readOnly"] = false,
/// },
/// },
/// ["ulimits"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["hardLimit"] = 1024,
/// ["name"] = "nofile",
/// ["softLimit"] = 1024,
/// },
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "command": []string{
/// "ls",
/// "-la",
/// },
/// "image": "busybox",
/// "resourceRequirements": []map[string]interface{}{
/// map[string]interface{}{
/// "type":  "VCPU",
/// "value": "0.25",
/// },
/// map[string]interface{}{
/// "type":  "MEMORY",
/// "value": "512",
/// },
/// },
/// "volumes": []map[string]interface{}{
/// map[string]interface{}{
/// "host": map[string]interface{}{
/// "sourcePath": "/tmp",
/// },
/// "name": "tmp",
/// },
/// },
/// "environment": []map[string]interface{}{
/// map[string]interface{}{
/// "name":  "VARNAME",
/// "value": "VARVAL",
/// },
/// },
/// "mountPoints": []map[string]interface{}{
/// map[string]interface{}{
/// "sourceVolume":  "tmp",
/// "containerPath": "/tmp",
/// "readOnly":      false,
/// },
/// },
/// "ulimits": []map[string]interface{}{
/// map[string]interface{}{
/// "hardLimit": 1024,
/// "name":      "nofile",
/// "softLimit": 1024,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = batch.NewJobDefinition(ctx, "test", &batch.JobDefinitionArgs{
/// Name:                pulumi.String("my_test_batch_job_definition"),
/// Type:                pulumi.String("container"),
/// ContainerProperties: pulumi.String(json0),
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
/// import com.pulumi.aws.batch.JobDefinition;
/// import com.pulumi.aws.batch.JobDefinitionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var test = new JobDefinition("test", JobDefinitionArgs.builder()
/// .name("my_test_batch_job_definition")
/// .type("container")
/// .containerProperties(serializeJson(
/// jsonObject(
/// jsonProperty("command", jsonArray(
/// "ls",
/// "-la"
/// )),
/// jsonProperty("image", "busybox"),
/// jsonProperty("resourceRequirements", jsonArray(
/// jsonObject(
/// jsonProperty("type", "VCPU"),
/// jsonProperty("value", "0.25")
/// ),
/// jsonObject(
/// jsonProperty("type", "MEMORY"),
/// jsonProperty("value", "512")
/// )
/// )),
/// jsonProperty("volumes", jsonArray(jsonObject(
/// jsonProperty("host", jsonObject(
/// jsonProperty("sourcePath", "/tmp")
/// )),
/// jsonProperty("name", "tmp")
/// ))),
/// jsonProperty("environment", jsonArray(jsonObject(
/// jsonProperty("name", "VARNAME"),
/// jsonProperty("value", "VARVAL")
/// ))),
/// jsonProperty("mountPoints", jsonArray(jsonObject(
/// jsonProperty("sourceVolume", "tmp"),
/// jsonProperty("containerPath", "/tmp"),
/// jsonProperty("readOnly", false)
/// ))),
/// jsonProperty("ulimits", jsonArray(jsonObject(
/// jsonProperty("hardLimit", 1024),
/// jsonProperty("name", "nofile"),
/// jsonProperty("softLimit", 1024)
/// )))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:batch:JobDefinition
/// properties:
/// name: my_test_batch_job_definition
/// type: container
/// containerProperties:
/// fn::toJSON:
/// command:
/// - ls
/// - -la
/// image: busybox
/// resourceRequirements:
/// - type: VCPU
/// value: '0.25'
/// - type: MEMORY
/// value: '512'
/// volumes:
/// - host:
/// sourcePath: /tmp
/// name: tmp
/// environment:
/// - name: VARNAME
/// value: VARVAL
/// mountPoints:
/// - sourceVolume: tmp
/// containerPath: /tmp
/// readOnly: false
/// ulimits:
/// - hardLimit: 1024
/// name: nofile
/// softLimit: 1024
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Job definition of type multinode
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.batch.JobDefinition("test", {
/// name: "tf_test_batch_job_definition_multinode",
/// type: "multinode",
/// nodeProperties: JSON.stringify({
/// mainNode: 0,
/// nodeRangeProperties: [
/// {
/// container: {
/// command: [
/// "ls",
/// "-la",
/// ],
/// image: "busybox",
/// memory: 128,
/// vcpus: 1,
/// },
/// targetNodes: "0:",
/// },
/// {
/// container: {
/// command: [
/// "echo",
/// "test",
/// ],
/// image: "busybox",
/// memory: 128,
/// vcpus: 1,
/// },
/// targetNodes: "1:",
/// },
/// ],
/// numNodes: 2,
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.batch.JobDefinition("test",
/// name="tf_test_batch_job_definition_multinode",
/// type="multinode",
/// node_properties=json.dumps({
/// "mainNode": 0,
/// "nodeRangeProperties": [
/// {
/// "container": {
/// "command": [
/// "ls",
/// "-la",
/// ],
/// "image": "busybox",
/// "memory": 128,
/// "vcpus": 1,
/// },
/// "targetNodes": "0:",
/// },
/// {
/// "container": {
/// "command": [
/// "echo",
/// "test",
/// ],
/// "image": "busybox",
/// "memory": 128,
/// "vcpus": 1,
/// },
/// "targetNodes": "1:",
/// },
/// ],
/// "numNodes": 2,
/// }))
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
/// var test = new Aws.Batch.JobDefinition("test", new()
/// {
/// Name = "tf_test_batch_job_definition_multinode",
/// Type = "multinode",
/// NodeProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["mainNode"] = 0,
/// ["nodeRangeProperties"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["container"] = new Dictionary<string, object?>
/// {
/// ["command"] = new[]
/// {
/// "ls",
/// "-la",
/// },
/// ["image"] = "busybox",
/// ["memory"] = 128,
/// ["vcpus"] = 1,
/// },
/// ["targetNodes"] = "0:",
/// },
/// new Dictionary<string, object?>
/// {
/// ["container"] = new Dictionary<string, object?>
/// {
/// ["command"] = new[]
/// {
/// "echo",
/// "test",
/// },
/// ["image"] = "busybox",
/// ["memory"] = 128,
/// ["vcpus"] = 1,
/// },
/// ["targetNodes"] = "1:",
/// },
/// },
/// ["numNodes"] = 2,
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "mainNode": 0,
/// "nodeRangeProperties": []map[string]interface{}{
/// map[string]interface{}{
/// "container": map[string]interface{}{
/// "command": []string{
/// "ls",
/// "-la",
/// },
/// "image":  "busybox",
/// "memory": 128,
/// "vcpus":  1,
/// },
/// "targetNodes": "0:",
/// },
/// map[string]interface{}{
/// "container": map[string]interface{}{
/// "command": []string{
/// "echo",
/// "test",
/// },
/// "image":  "busybox",
/// "memory": 128,
/// "vcpus":  1,
/// },
/// "targetNodes": "1:",
/// },
/// },
/// "numNodes": 2,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = batch.NewJobDefinition(ctx, "test", &batch.JobDefinitionArgs{
/// Name:           pulumi.String("tf_test_batch_job_definition_multinode"),
/// Type:           pulumi.String("multinode"),
/// NodeProperties: pulumi.String(json0),
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
/// import com.pulumi.aws.batch.JobDefinition;
/// import com.pulumi.aws.batch.JobDefinitionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var test = new JobDefinition("test", JobDefinitionArgs.builder()
/// .name("tf_test_batch_job_definition_multinode")
/// .type("multinode")
/// .nodeProperties(serializeJson(
/// jsonObject(
/// jsonProperty("mainNode", 0),
/// jsonProperty("nodeRangeProperties", jsonArray(
/// jsonObject(
/// jsonProperty("container", jsonObject(
/// jsonProperty("command", jsonArray(
/// "ls",
/// "-la"
/// )),
/// jsonProperty("image", "busybox"),
/// jsonProperty("memory", 128),
/// jsonProperty("vcpus", 1)
/// )),
/// jsonProperty("targetNodes", "0:")
/// ),
/// jsonObject(
/// jsonProperty("container", jsonObject(
/// jsonProperty("command", jsonArray(
/// "echo",
/// "test"
/// )),
/// jsonProperty("image", "busybox"),
/// jsonProperty("memory", 128),
/// jsonProperty("vcpus", 1)
/// )),
/// jsonProperty("targetNodes", "1:")
/// )
/// )),
/// jsonProperty("numNodes", 2)
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:batch:JobDefinition
/// properties:
/// name: tf_test_batch_job_definition_multinode
/// type: multinode
/// nodeProperties:
/// fn::toJSON:
/// mainNode: 0
/// nodeRangeProperties:
/// - container:
/// command:
/// - ls
/// - -la
/// image: busybox
/// memory: 128
/// vcpus: 1
/// targetNodes: '0:'
/// - container:
/// command:
/// - echo
/// - test
/// image: busybox
/// memory: 128
/// vcpus: 1
/// targetNodes: '1:'
/// numNodes: 2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Job Definition of type EKS
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.batch.JobDefinition("test", {
/// name: " tf_test_batch_job_definition_eks",
/// type: "container",
/// eksProperties: {
/// podProperties: {
/// hostNetwork: true,
/// containers: [{
/// image: "public.ecr.aws/amazonlinux/amazonlinux:1",
/// commands: [
/// "sleep",
/// "60",
/// ],
/// resources: {
/// limits: {
/// cpu: "1",
/// memory: "1024Mi",
/// },
/// },
/// }],
/// metadata: {
/// labels: {
/// environment: "test",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.batch.JobDefinition("test",
/// name=" tf_test_batch_job_definition_eks",
/// type="container",
/// eks_properties={
/// "pod_properties": {
/// "host_network": True,
/// "containers": [{
/// "image": "public.ecr.aws/amazonlinux/amazonlinux:1",
/// "commands": [
/// "sleep",
/// "60",
/// ],
/// "resources": {
/// "limits": {
/// "cpu": "1",
/// "memory": "1024Mi",
/// },
/// },
/// }],
/// "metadata": {
/// "labels": {
/// "environment": "test",
/// },
/// },
/// },
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
/// var test = new Aws.Batch.JobDefinition("test", new()
/// {
/// Name = " tf_test_batch_job_definition_eks",
/// Type = "container",
/// EksProperties = new Aws.Batch.Inputs.JobDefinitionEksPropertiesArgs
/// {
/// PodProperties = new Aws.Batch.Inputs.JobDefinitionEksPropertiesPodPropertiesArgs
/// {
/// HostNetwork = true,
/// Containers = new[]
/// {
/// new Aws.Batch.Inputs.JobDefinitionEksPropertiesPodPropertiesContainerArgs
/// {
/// Image = "public.ecr.aws/amazonlinux/amazonlinux:1",
/// Commands = new[]
/// {
/// "sleep",
/// "60",
/// },
/// Resources = new Aws.Batch.Inputs.JobDefinitionEksPropertiesPodPropertiesContainerResourcesArgs
/// {
/// Limits =
/// {
/// { "cpu", "1" },
/// { "memory", "1024Mi" },
/// },
/// },
/// },
/// },
/// Metadata = new Aws.Batch.Inputs.JobDefinitionEksPropertiesPodPropertiesMetadataArgs
/// {
/// Labels =
/// {
/// { "environment", "test" },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := batch.NewJobDefinition(ctx, "test", &batch.JobDefinitionArgs{
/// Name: pulumi.String(" tf_test_batch_job_definition_eks"),
/// Type: pulumi.String("container"),
/// EksProperties: &batch.JobDefinitionEksPropertiesArgs{
/// PodProperties: &batch.JobDefinitionEksPropertiesPodPropertiesArgs{
/// HostNetwork: pulumi.Bool(true),
/// Containers: batch.JobDefinitionEksPropertiesPodPropertiesContainerArray{
/// &batch.JobDefinitionEksPropertiesPodPropertiesContainerArgs{
/// Image: pulumi.String("public.ecr.aws/amazonlinux/amazonlinux:1"),
/// Commands: pulumi.StringArray{
/// pulumi.String("sleep"),
/// pulumi.String("60"),
/// },
/// Resources: &batch.JobDefinitionEksPropertiesPodPropertiesContainerResourcesArgs{
/// Limits: pulumi.StringMap{
/// "cpu":    pulumi.String("1"),
/// "memory": pulumi.String("1024Mi"),
/// },
/// },
/// },
/// },
/// Metadata: &batch.JobDefinitionEksPropertiesPodPropertiesMetadataArgs{
/// Labels: pulumi.StringMap{
/// "environment": pulumi.String("test"),
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
/// import com.pulumi.aws.batch.JobDefinition;
/// import com.pulumi.aws.batch.JobDefinitionArgs;
/// import com.pulumi.aws.batch.inputs.JobDefinitionEksPropertiesArgs;
/// import com.pulumi.aws.batch.inputs.JobDefinitionEksPropertiesPodPropertiesArgs;
/// import com.pulumi.aws.batch.inputs.JobDefinitionEksPropertiesPodPropertiesMetadataArgs;
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
/// var test = new JobDefinition("test", JobDefinitionArgs.builder()
/// .name(" tf_test_batch_job_definition_eks")
/// .type("container")
/// .eksProperties(JobDefinitionEksPropertiesArgs.builder()
/// .podProperties(JobDefinitionEksPropertiesPodPropertiesArgs.builder()
/// .hostNetwork(true)
/// .containers(JobDefinitionEksPropertiesPodPropertiesContainerArgs.builder()
/// .image("public.ecr.aws/amazonlinux/amazonlinux:1")
/// .commands(
/// "sleep",
/// "60")
/// .resources(JobDefinitionEksPropertiesPodPropertiesContainerResourcesArgs.builder()
/// .limits(Map.ofEntries(
/// Map.entry("cpu", "1"),
/// Map.entry("memory", "1024Mi")
/// ))
/// .build())
/// .build())
/// .metadata(JobDefinitionEksPropertiesPodPropertiesMetadataArgs.builder()
/// .labels(Map.of("environment", "test"))
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
/// test:
/// type: aws:batch:JobDefinition
/// properties:
/// name: ' tf_test_batch_job_definition_eks'
/// type: container
/// eksProperties:
/// podProperties:
/// hostNetwork: true
/// containers:
/// - image: public.ecr.aws/amazonlinux/amazonlinux:1
/// commands:
/// - sleep
/// - '60'
/// resources:
/// limits:
/// cpu: '1'
/// memory: 1024Mi
/// metadata:
/// labels:
/// environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Fargate Platform Capability
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRolePolicy = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// principals: [{
/// type: "Service",
/// identifiers: ["ecs-tasks.amazonaws.com"],
/// }],
/// }],
/// });
/// const ecsTaskExecutionRole = new aws.iam.Role("ecs_task_execution_role", {
/// name: "my_test_batch_exec_role",
/// assumeRolePolicy: assumeRolePolicy.then(assumeRolePolicy => assumeRolePolicy.json),
/// });
/// const ecsTaskExecutionRolePolicy = new aws.iam.RolePolicyAttachment("ecs_task_execution_role_policy", {
/// role: ecsTaskExecutionRole.name,
/// policyArn: "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy",
/// });
/// const test = new aws.batch.JobDefinition("test", {
/// name: "my_test_batch_job_definition",
/// type: "container",
/// platformCapabilities: ["FARGATE"],
/// containerProperties: pulumi.jsonStringify({
/// command: [
/// "echo",
/// "test",
/// ],
/// image: "busybox",
/// jobRoleArn: "arn:aws:iam::123456789012:role/AWSBatchS3ReadOnly",
/// fargatePlatformConfiguration: {
/// platformVersion: "LATEST",
/// },
/// resourceRequirements: [
/// {
/// type: "VCPU",
/// value: "0.25",
/// },
/// {
/// type: "MEMORY",
/// value: "512",
/// },
/// ],
/// executionRoleArn: ecsTaskExecutionRole.arn,
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// assume_role_policy = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["ecs-tasks.amazonaws.com"],
/// }],
/// }])
/// ecs_task_execution_role = aws.iam.Role("ecs_task_execution_role",
/// name="my_test_batch_exec_role",
/// assume_role_policy=assume_role_policy.json)
/// ecs_task_execution_role_policy = aws.iam.RolePolicyAttachment("ecs_task_execution_role_policy",
/// role=ecs_task_execution_role.name,
/// policy_arn="arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy")
/// test = aws.batch.JobDefinition("test",
/// name="my_test_batch_job_definition",
/// type="container",
/// platform_capabilities=["FARGATE"],
/// container_properties=pulumi.Output.json_dumps({
/// "command": [
/// "echo",
/// "test",
/// ],
/// "image": "busybox",
/// "jobRoleArn": "arn:aws:iam::123456789012:role/AWSBatchS3ReadOnly",
/// "fargatePlatformConfiguration": {
/// "platformVersion": "LATEST",
/// },
/// "resourceRequirements": [
/// {
/// "type": "VCPU",
/// "value": "0.25",
/// },
/// {
/// "type": "MEMORY",
/// "value": "512",
/// },
/// ],
/// "executionRoleArn": ecs_task_execution_role.arn,
/// }))
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
/// var assumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "ecs-tasks.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var ecsTaskExecutionRole = new Aws.Iam.Role("ecs_task_execution_role", new()
/// {
/// Name = "my_test_batch_exec_role",
/// AssumeRolePolicy = assumeRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var ecsTaskExecutionRolePolicy = new Aws.Iam.RolePolicyAttachment("ecs_task_execution_role_policy", new()
/// {
/// Role = ecsTaskExecutionRole.Name,
/// PolicyArn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy",
/// });
///
/// var test = new Aws.Batch.JobDefinition("test", new()
/// {
/// Name = "my_test_batch_job_definition",
/// Type = "container",
/// PlatformCapabilities = new[]
/// {
/// "FARGATE",
/// },
/// ContainerProperties = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["command"] = new[]
/// {
/// "echo",
/// "test",
/// },
/// ["image"] = "busybox",
/// ["jobRoleArn"] = "arn:aws:iam::123456789012:role/AWSBatchS3ReadOnly",
/// ["fargatePlatformConfiguration"] = new Dictionary<string, object?>
/// {
/// ["platformVersion"] = "LATEST",
/// },
/// ["resourceRequirements"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["type"] = "VCPU",
/// ["value"] = "0.25",
/// },
/// new Dictionary<string, object?>
/// {
/// ["type"] = "MEMORY",
/// ["value"] = "512",
/// },
/// },
/// ["executionRoleArn"] = ecsTaskExecutionRole.Arn,
/// })),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "ecs-tasks.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ecsTaskExecutionRole, err := iam.NewRole(ctx, "ecs_task_execution_role", &iam.RoleArgs{
/// Name:             pulumi.String("my_test_batch_exec_role"),
/// AssumeRolePolicy: pulumi.String(assumeRolePolicy.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "ecs_task_execution_role_policy", &iam.RolePolicyAttachmentArgs{
/// Role:      ecsTaskExecutionRole.Name,
/// PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = batch.NewJobDefinition(ctx, "test", &batch.JobDefinitionArgs{
/// Name: pulumi.String("my_test_batch_job_definition"),
/// Type: pulumi.String("container"),
/// PlatformCapabilities: pulumi.StringArray{
/// pulumi.String("FARGATE"),
/// },
/// ContainerProperties: ecsTaskExecutionRole.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// var _zero pulumi.String
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "command": []string{
/// "echo",
/// "test",
/// },
/// "image":      "busybox",
/// "jobRoleArn": "arn:aws:iam::123456789012:role/AWSBatchS3ReadOnly",
/// "fargatePlatformConfiguration": map[string]interface{}{
/// "platformVersion": "LATEST",
/// },
/// "resourceRequirements": []map[string]interface{}{
/// map[string]interface{}{
/// "type":  "VCPU",
/// "value": "0.25",
/// },
/// map[string]interface{}{
/// "type":  "MEMORY",
/// "value": "512",
/// },
/// },
/// "executionRoleArn": arn,
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json0 := string(tmpJSON0)
/// return pulumi.String(json0), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.batch.JobDefinition;
/// import com.pulumi.aws.batch.JobDefinitionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// final var assumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("ecs-tasks.amazonaws.com")
/// .build())
/// .build())
/// .build());
///
/// var ecsTaskExecutionRole = new Role("ecsTaskExecutionRole", RoleArgs.builder()
/// .name("my_test_batch_exec_role")
/// .assumeRolePolicy(assumeRolePolicy.json())
/// .build());
///
/// var ecsTaskExecutionRolePolicy = new RolePolicyAttachment("ecsTaskExecutionRolePolicy", RolePolicyAttachmentArgs.builder()
/// .role(ecsTaskExecutionRole.name())
/// .policyArn("arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy")
/// .build());
///
/// var test = new JobDefinition("test", JobDefinitionArgs.builder()
/// .name("my_test_batch_job_definition")
/// .type("container")
/// .platformCapabilities("FARGATE")
/// .containerProperties(ecsTaskExecutionRole.arn().applyValue(_arn -> serializeJson(
/// jsonObject(
/// jsonProperty("command", jsonArray(
/// "echo",
/// "test"
/// )),
/// jsonProperty("image", "busybox"),
/// jsonProperty("jobRoleArn", "arn:aws:iam::123456789012:role/AWSBatchS3ReadOnly"),
/// jsonProperty("fargatePlatformConfiguration", jsonObject(
/// jsonProperty("platformVersion", "LATEST")
/// )),
/// jsonProperty("resourceRequirements", jsonArray(
/// jsonObject(
/// jsonProperty("type", "VCPU"),
/// jsonProperty("value", "0.25")
/// ),
/// jsonObject(
/// jsonProperty("type", "MEMORY"),
/// jsonProperty("value", "512")
/// )
/// )),
/// jsonProperty("executionRoleArn", _arn)
/// ))))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ecsTaskExecutionRole:
/// type: aws:iam:Role
/// name: ecs_task_execution_role
/// properties:
/// name: my_test_batch_exec_role
/// assumeRolePolicy: ${assumeRolePolicy.json}
/// ecsTaskExecutionRolePolicy:
/// type: aws:iam:RolePolicyAttachment
/// name: ecs_task_execution_role_policy
/// properties:
/// role: ${ecsTaskExecutionRole.name}
/// policyArn: arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy
/// test:
/// type: aws:batch:JobDefinition
/// properties:
/// name: my_test_batch_job_definition
/// type: container
/// platformCapabilities:
/// - FARGATE
/// containerProperties:
/// fn::toJSON:
/// command:
/// - echo
/// - test
/// image: busybox
/// jobRoleArn: arn:aws:iam::123456789012:role/AWSBatchS3ReadOnly
/// fargatePlatformConfiguration:
/// platformVersion: LATEST
/// resourceRequirements:
/// - type: VCPU
/// value: '0.25'
/// - type: MEMORY
/// value: '512'
/// executionRoleArn: ${ecsTaskExecutionRole.arn}
/// variables:
/// assumeRolePolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// principals:
/// - type: Service
/// identifiers:
/// - ecs-tasks.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Job definition of type container using <span pulumi-lang-nodejs="`ecsProperties`" pulumi-lang-dotnet="`EcsProperties`" pulumi-lang-go="`ecsProperties`" pulumi-lang-python="`ecs_properties`" pulumi-lang-yaml="`ecsProperties`" pulumi-lang-java="`ecsProperties`">`ecs_properties`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.batch.JobDefinition("test", {
/// name: "my_test_batch_job_definition",
/// type: "container",
/// platformCapabilities: ["FARGATE"],
/// ecsProperties: JSON.stringify({
/// taskProperties: [{
/// executionRoleArn: ecsTaskExecutionRole.arn,
/// containers: [
/// {
/// image: "public.ecr.aws/amazonlinux/amazonlinux:1",
/// command: [
/// "sleep",
/// "60",
/// ],
/// dependsOn: [{
/// containerName: "container_b",
/// condition: "COMPLETE",
/// }],
/// secrets: [{
/// name: "TEST",
/// valueFrom: "DUMMY",
/// }],
/// environment: [{
/// name: "test",
/// value: "Environment Variable",
/// }],
/// essential: true,
/// logConfiguration: {
/// logDriver: "awslogs",
/// options: {
/// "awslogs-group": "tf_test_batch_job",
/// "awslogs-region": "us-west-2",
/// "awslogs-stream-prefix": "ecs",
/// },
/// },
/// name: "container_a",
/// privileged: false,
/// readonlyRootFilesystem: false,
/// resourceRequirements: [
/// {
/// value: "1.0",
/// type: "VCPU",
/// },
/// {
/// value: "2048",
/// type: "MEMORY",
/// },
/// ],
/// },
/// {
/// image: "public.ecr.aws/amazonlinux/amazonlinux:1",
/// command: [
/// "sleep",
/// "360",
/// ],
/// name: "container_b",
/// essential: false,
/// resourceRequirements: [
/// {
/// value: "1.0",
/// type: "VCPU",
/// },
/// {
/// value: "2048",
/// type: "MEMORY",
/// },
/// ],
/// },
/// ],
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.batch.JobDefinition("test",
/// name="my_test_batch_job_definition",
/// type="container",
/// platform_capabilities=["FARGATE"],
/// ecs_properties=json.dumps({
/// "taskProperties": [{
/// "executionRoleArn": ecs_task_execution_role["arn"],
/// "containers": [
/// {
/// "image": "public.ecr.aws/amazonlinux/amazonlinux:1",
/// "command": [
/// "sleep",
/// "60",
/// ],
/// "dependsOn": [{
/// "containerName": "container_b",
/// "condition": "COMPLETE",
/// }],
/// "secrets": [{
/// "name": "TEST",
/// "valueFrom": "DUMMY",
/// }],
/// "environment": [{
/// "name": "test",
/// "value": "Environment Variable",
/// }],
/// "essential": True,
/// "logConfiguration": {
/// "logDriver": "awslogs",
/// "options": {
/// "awslogs-group": "tf_test_batch_job",
/// "awslogs-region": "us-west-2",
/// "awslogs-stream-prefix": "ecs",
/// },
/// },
/// "name": "container_a",
/// "privileged": False,
/// "readonlyRootFilesystem": False,
/// "resourceRequirements": [
/// {
/// "value": "1.0",
/// "type": "VCPU",
/// },
/// {
/// "value": "2048",
/// "type": "MEMORY",
/// },
/// ],
/// },
/// {
/// "image": "public.ecr.aws/amazonlinux/amazonlinux:1",
/// "command": [
/// "sleep",
/// "360",
/// ],
/// "name": "container_b",
/// "essential": False,
/// "resourceRequirements": [
/// {
/// "value": "1.0",
/// "type": "VCPU",
/// },
/// {
/// "value": "2048",
/// "type": "MEMORY",
/// },
/// ],
/// },
/// ],
/// }],
/// }))
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
/// var test = new Aws.Batch.JobDefinition("test", new()
/// {
/// Name = "my_test_batch_job_definition",
/// Type = "container",
/// PlatformCapabilities = new[]
/// {
/// "FARGATE",
/// },
/// EcsProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["taskProperties"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["executionRoleArn"] = ecsTaskExecutionRole.Arn,
/// ["containers"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["image"] = "public.ecr.aws/amazonlinux/amazonlinux:1",
/// ["command"] = new[]
/// {
/// "sleep",
/// "60",
/// },
/// ["dependsOn"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["containerName"] = "container_b",
/// ["condition"] = "COMPLETE",
/// },
/// },
/// ["secrets"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["name"] = "TEST",
/// ["valueFrom"] = "DUMMY",
/// },
/// },
/// ["environment"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["name"] = "test",
/// ["value"] = "Environment Variable",
/// },
/// },
/// ["essential"] = true,
/// ["logConfiguration"] = new Dictionary<string, object?>
/// {
/// ["logDriver"] = "awslogs",
/// ["options"] = new Dictionary<string, object?>
/// {
/// ["awslogs-group"] = "tf_test_batch_job",
/// ["awslogs-region"] = "us-west-2",
/// ["awslogs-stream-prefix"] = "ecs",
/// },
/// },
/// ["name"] = "container_a",
/// ["privileged"] = false,
/// ["readonlyRootFilesystem"] = false,
/// ["resourceRequirements"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["value"] = "1.0",
/// ["type"] = "VCPU",
/// },
/// new Dictionary<string, object?>
/// {
/// ["value"] = "2048",
/// ["type"] = "MEMORY",
/// },
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["image"] = "public.ecr.aws/amazonlinux/amazonlinux:1",
/// ["command"] = new[]
/// {
/// "sleep",
/// "360",
/// },
/// ["name"] = "container_b",
/// ["essential"] = false,
/// ["resourceRequirements"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["value"] = "1.0",
/// ["type"] = "VCPU",
/// },
/// new Dictionary<string, object?>
/// {
/// ["value"] = "2048",
/// ["type"] = "MEMORY",
/// },
/// },
/// },
/// },
/// },
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "taskProperties": []map[string]interface{}{
/// map[string]interface{}{
/// "executionRoleArn": ecsTaskExecutionRole.Arn,
/// "containers": []interface{}{
/// map[string]interface{}{
/// "image": "public.ecr.aws/amazonlinux/amazonlinux:1",
/// "command": []string{
/// "sleep",
/// "60",
/// },
/// "dependsOn": []map[string]interface{}{
/// map[string]interface{}{
/// "containerName": "container_b",
/// "condition":     "COMPLETE",
/// },
/// },
/// "secrets": []map[string]interface{}{
/// map[string]interface{}{
/// "name":      "TEST",
/// "valueFrom": "DUMMY",
/// },
/// },
/// "environment": []map[string]interface{}{
/// map[string]interface{}{
/// "name":  "test",
/// "value": "Environment Variable",
/// },
/// },
/// "essential": true,
/// "logConfiguration": map[string]interface{}{
/// "logDriver": "awslogs",
/// "options": map[string]interface{}{
/// "awslogs-group":         "tf_test_batch_job",
/// "awslogs-region":        "us-west-2",
/// "awslogs-stream-prefix": "ecs",
/// },
/// },
/// "name":                   "container_a",
/// "privileged":             false,
/// "readonlyRootFilesystem": false,
/// "resourceRequirements": []map[string]interface{}{
/// map[string]interface{}{
/// "value": "1.0",
/// "type":  "VCPU",
/// },
/// map[string]interface{}{
/// "value": "2048",
/// "type":  "MEMORY",
/// },
/// },
/// },
/// map[string]interface{}{
/// "image": "public.ecr.aws/amazonlinux/amazonlinux:1",
/// "command": []string{
/// "sleep",
/// "360",
/// },
/// "name":      "container_b",
/// "essential": false,
/// "resourceRequirements": []map[string]interface{}{
/// map[string]interface{}{
/// "value": "1.0",
/// "type":  "VCPU",
/// },
/// map[string]interface{}{
/// "value": "2048",
/// "type":  "MEMORY",
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
/// json0 := string(tmpJSON0)
/// _, err = batch.NewJobDefinition(ctx, "test", &batch.JobDefinitionArgs{
/// Name: pulumi.String("my_test_batch_job_definition"),
/// Type: pulumi.String("container"),
/// PlatformCapabilities: pulumi.StringArray{
/// pulumi.String("FARGATE"),
/// },
/// EcsProperties: pulumi.String(json0),
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
/// import com.pulumi.aws.batch.JobDefinition;
/// import com.pulumi.aws.batch.JobDefinitionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var test = new JobDefinition("test", JobDefinitionArgs.builder()
/// .name("my_test_batch_job_definition")
/// .type("container")
/// .platformCapabilities("FARGATE")
/// .ecsProperties(serializeJson(
/// jsonObject(
/// jsonProperty("taskProperties", jsonArray(jsonObject(
/// jsonProperty("executionRoleArn", ecsTaskExecutionRole.arn()),
/// jsonProperty("containers", jsonArray(
/// jsonObject(
/// jsonProperty("image", "public.ecr.aws/amazonlinux/amazonlinux:1"),
/// jsonProperty("command", jsonArray(
/// "sleep",
/// "60"
/// )),
/// jsonProperty("dependsOn", jsonArray(jsonObject(
/// jsonProperty("containerName", "container_b"),
/// jsonProperty("condition", "COMPLETE")
/// ))),
/// jsonProperty("secrets", jsonArray(jsonObject(
/// jsonProperty("name", "TEST"),
/// jsonProperty("valueFrom", "DUMMY")
/// ))),
/// jsonProperty("environment", jsonArray(jsonObject(
/// jsonProperty("name", "test"),
/// jsonProperty("value", "Environment Variable")
/// ))),
/// jsonProperty("essential", true),
/// jsonProperty("logConfiguration", jsonObject(
/// jsonProperty("logDriver", "awslogs"),
/// jsonProperty("options", jsonObject(
/// jsonProperty("awslogs-group", "tf_test_batch_job"),
/// jsonProperty("awslogs-region", "us-west-2"),
/// jsonProperty("awslogs-stream-prefix", "ecs")
/// ))
/// )),
/// jsonProperty("name", "container_a"),
/// jsonProperty("privileged", false),
/// jsonProperty("readonlyRootFilesystem", false),
/// jsonProperty("resourceRequirements", jsonArray(
/// jsonObject(
/// jsonProperty("value", "1.0"),
/// jsonProperty("type", "VCPU")
/// ),
/// jsonObject(
/// jsonProperty("value", "2048"),
/// jsonProperty("type", "MEMORY")
/// )
/// ))
/// ),
/// jsonObject(
/// jsonProperty("image", "public.ecr.aws/amazonlinux/amazonlinux:1"),
/// jsonProperty("command", jsonArray(
/// "sleep",
/// "360"
/// )),
/// jsonProperty("name", "container_b"),
/// jsonProperty("essential", false),
/// jsonProperty("resourceRequirements", jsonArray(
/// jsonObject(
/// jsonProperty("value", "1.0"),
/// jsonProperty("type", "VCPU")
/// ),
/// jsonObject(
/// jsonProperty("value", "2048"),
/// jsonProperty("type", "MEMORY")
/// )
/// ))
/// )
/// ))
/// )))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:batch:JobDefinition
/// properties:
/// name: my_test_batch_job_definition
/// type: container
/// platformCapabilities:
/// - FARGATE
/// ecsProperties:
/// fn::toJSON:
/// taskProperties:
/// - executionRoleArn: ${ecsTaskExecutionRole.arn}
/// containers:
/// - image: public.ecr.aws/amazonlinux/amazonlinux:1
/// command:
/// - sleep
/// - '60'
/// dependsOn:
/// - containerName: container_b
/// condition: COMPLETE
/// secrets:
/// - name: TEST
/// valueFrom: DUMMY
/// environment:
/// - name: test
/// value: Environment Variable
/// essential: true
/// logConfiguration:
/// logDriver: awslogs
/// options:
/// awslogs-group: tf_test_batch_job
/// awslogs-region: us-west-2
/// awslogs-stream-prefix: ecs
/// name: container_a
/// privileged: false
/// readonlyRootFilesystem: false
/// resourceRequirements:
/// - value: '1.0'
/// type: VCPU
/// - value: '2048'
/// type: MEMORY
/// - image: public.ecr.aws/amazonlinux/amazonlinux:1
/// command:
/// - sleep
/// - '360'
/// name: container_b
/// essential: false
/// resourceRequirements:
/// - value: '1.0'
/// type: VCPU
/// - value: '2048'
/// type: MEMORY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the job definition.
///
///
/// Using `pulumi import`, import Batch Job Definition using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:batch/jobDefinition:JobDefinition test arn:aws:batch:us-east-1:123456789012:job-definition/sample
/// ```
class JobDefinition extends CustomResource {
  /// ARN of the job definition, includes revision (`:#`).
  late final Output<String> arn;

  /// ARN without the revision number.
  late final Output<String> arnPrefix;

  /// Valid [container properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span>.
  late final Output<String?> containerProperties;

  /// When updating a job definition a new revision is created. This parameter determines if the previous version is <span pulumi-lang-nodejs="`deregistered`" pulumi-lang-dotnet="`Deregistered`" pulumi-lang-go="`deregistered`" pulumi-lang-python="`deregistered`" pulumi-lang-yaml="`deregistered`" pulumi-lang-java="`deregistered`">`deregistered`</span> (`INACTIVE`) or left  `ACTIVE`. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> deregisterOnNewRevision;

  /// Valid [ECS properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span>.
  late final Output<String?> ecsProperties;

  /// Valid eks properties. This parameter is only valid if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span>.
  late final Output<JobDefinitionEksProperties?> eksProperties;

  /// Name of the job definition.
  late final Output<String> name;

  /// Valid [node properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is required if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`multinode`" pulumi-lang-dotnet="`Multinode`" pulumi-lang-go="`multinode`" pulumi-lang-python="`multinode`" pulumi-lang-yaml="`multinode`" pulumi-lang-java="`multinode`">`multinode`</span>.
  late final Output<String?> nodeProperties;

  /// Parameter substitution placeholders to set in the job definition.
  late final Output<Map<String, String>?> parameters;

  /// Platform capabilities required by the job definition. If no value is specified, it defaults to `EC2`. To run the job on Fargate resources, specify `FARGATE`.
  late final Output<List<String>?> platformCapabilities;

  /// Whether to propagate the tags from the job definition to the corresponding Amazon ECS task. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> propagateTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Retry strategy to use for failed jobs that are submitted with this job definition. Maximum number of <span pulumi-lang-nodejs="`retryStrategy`" pulumi-lang-dotnet="`RetryStrategy`" pulumi-lang-go="`retryStrategy`" pulumi-lang-python="`retry_strategy`" pulumi-lang-yaml="`retryStrategy`" pulumi-lang-java="`retryStrategy`">`retry_strategy`</span> is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.  Defined below.
  late final Output<JobDefinitionRetryStrategy?> retryStrategy;

  /// Revision of the job definition.
  late final Output<int> revision;

  /// Scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority. Allowed values <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> through <span pulumi-lang-nodejs="`9999`" pulumi-lang-dotnet="`9999`" pulumi-lang-go="`9999`" pulumi-lang-python="`9999`" pulumi-lang-yaml="`9999`" pulumi-lang-java="`9999`">`9999`</span>.
  late final Output<int?> schedulingPriority;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of <span pulumi-lang-nodejs="`timeout`" pulumi-lang-dotnet="`Timeout`" pulumi-lang-go="`timeout`" pulumi-lang-python="`timeout`" pulumi-lang-yaml="`timeout`" pulumi-lang-java="`timeout`">`timeout`</span> is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Defined below.
  late final Output<JobDefinitionTimeout?> timeout;

  /// Type of job definition. Must be <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span> or <span pulumi-lang-nodejs="`multinode`" pulumi-lang-dotnet="`Multinode`" pulumi-lang-go="`multinode`" pulumi-lang-python="`multinode`" pulumi-lang-yaml="`multinode`" pulumi-lang-java="`multinode`">`multinode`</span>.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  JobDefinition(
    String name, {
    JobDefinitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:batch/jobDefinition:JobDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.arnPrefix = Output.createUnknown<String>();
    this.containerProperties = Output.createUnknown<String?>();
    this.deregisterOnNewRevision = Output.createUnknown<bool?>();
    this.ecsProperties = Output.createUnknown<String?>();
    this.eksProperties = Output.createUnknown<JobDefinitionEksProperties?>();
    this.name = Output.createUnknown<String>();
    this.nodeProperties = Output.createUnknown<String?>();
    this.parameters = Output.createUnknown<Map<String, String>?>();
    this.platformCapabilities = Output.createUnknown<List<String>?>();
    this.propagateTags = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.retryStrategy = Output.createUnknown<JobDefinitionRetryStrategy?>();
    this.revision = Output.createUnknown<int>();
    this.schedulingPriority = Output.createUnknown<int?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeout = Output.createUnknown<JobDefinitionTimeout?>();
    this.type = Output.createUnknown<String>();
  }
}
