import 'package:pulumi/pulumi.dart';
import '../task_definition_ephemeral_storage/task_definition_ephemeral_storage.dart';
import '../task_definition_placement_constraint/task_definition_placement_constraint.dart';
import '../task_definition_proxy_configuration/task_definition_proxy_configuration.dart';
import '../task_definition_runtime_platform/task_definition_runtime_platform.dart';
import '../task_definition_volume/task_definition_volume.dart';
import 'task_definition_args.dart';

/// Manages a revision of an ECS task definition to be used in <span pulumi-lang-nodejs="`aws.ecs.Service`" pulumi-lang-dotnet="`aws.ecs.Service`" pulumi-lang-go="`ecs.Service`" pulumi-lang-python="`ecs.Service`" pulumi-lang-yaml="`aws.ecs.Service`" pulumi-lang-java="`aws.ecs.Service`">`aws.ecs.Service`</span>.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const service = new aws.ecs.TaskDefinition("service", {
/// family: "service",
/// containerDefinitions: JSON.stringify([
/// {
/// name: "first",
/// image: "service-first",
/// cpu: 10,
/// memory: 512,
/// essential: true,
/// portMappings: [{
/// containerPort: 80,
/// hostPort: 80,
/// }],
/// },
/// {
/// name: "second",
/// image: "service-second",
/// cpu: 10,
/// memory: 256,
/// essential: true,
/// portMappings: [{
/// containerPort: 443,
/// hostPort: 443,
/// }],
/// },
/// ]),
/// volumes: [{
/// name: "service-storage",
/// hostPath: "/ecs/service-storage",
/// }],
/// placementConstraints: [{
/// type: "memberOf",
/// expression: "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// service = aws.ecs.TaskDefinition("service",
/// family="service",
/// container_definitions=json.dumps([
/// {
/// "name": "first",
/// "image": "service-first",
/// "cpu": 10,
/// "memory": 512,
/// "essential": True,
/// "portMappings": [{
/// "containerPort": 80,
/// "hostPort": 80,
/// }],
/// },
/// {
/// "name": "second",
/// "image": "service-second",
/// "cpu": 10,
/// "memory": 256,
/// "essential": True,
/// "portMappings": [{
/// "containerPort": 443,
/// "hostPort": 443,
/// }],
/// },
/// ]),
/// volumes=[{
/// "name": "service-storage",
/// "host_path": "/ecs/service-storage",
/// }],
/// placement_constraints=[{
/// "type": "memberOf",
/// "expression": "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
/// }])
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
/// var service = new Aws.Ecs.TaskDefinition("service", new()
/// {
/// Family = "service",
/// ContainerDefinitions = JsonSerializer.Serialize(new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["name"] = "first",
/// ["image"] = "service-first",
/// ["cpu"] = 10,
/// ["memory"] = 512,
/// ["essential"] = true,
/// ["portMappings"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["containerPort"] = 80,
/// ["hostPort"] = 80,
/// },
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["name"] = "second",
/// ["image"] = "service-second",
/// ["cpu"] = 10,
/// ["memory"] = 256,
/// ["essential"] = true,
/// ["portMappings"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["containerPort"] = 443,
/// ["hostPort"] = 443,
/// },
/// },
/// },
/// }),
/// Volumes = new[]
/// {
/// new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
/// {
/// Name = "service-storage",
/// HostPath = "/ecs/service-storage",
/// },
/// },
/// PlacementConstraints = new[]
/// {
/// new Aws.Ecs.Inputs.TaskDefinitionPlacementConstraintArgs
/// {
/// Type = "memberOf",
/// Expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
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
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal([]interface{}{
/// map[string]interface{}{
/// "name":      "first",
/// "image":     "service-first",
/// "cpu":       10,
/// "memory":    512,
/// "essential": true,
/// "portMappings": []map[string]interface{}{
/// map[string]interface{}{
/// "containerPort": 80,
/// "hostPort":      80,
/// },
/// },
/// },
/// map[string]interface{}{
/// "name":      "second",
/// "image":     "service-second",
/// "cpu":       10,
/// "memory":    256,
/// "essential": true,
/// "portMappings": []map[string]interface{}{
/// map[string]interface{}{
/// "containerPort": 443,
/// "hostPort":      443,
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// Family:               pulumi.String("service"),
/// ContainerDefinitions: pulumi.String(json0),
/// Volumes: ecs.TaskDefinitionVolumeArray{
/// &ecs.TaskDefinitionVolumeArgs{
/// Name:     pulumi.String("service-storage"),
/// HostPath: pulumi.String("/ecs/service-storage"),
/// },
/// },
/// PlacementConstraints: ecs.TaskDefinitionPlacementConstraintArray{
/// &ecs.TaskDefinitionPlacementConstraintArgs{
/// Type:       pulumi.String("memberOf"),
/// Expression: pulumi.String("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"),
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
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionPlacementConstraintArgs;
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
/// var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
/// .family("service")
/// .containerDefinitions(serializeJson(
/// jsonArray(
/// jsonObject(
/// jsonProperty("name", "first"),
/// jsonProperty("image", "service-first"),
/// jsonProperty("cpu", 10),
/// jsonProperty("memory", 512),
/// jsonProperty("essential", true),
/// jsonProperty("portMappings", jsonArray(jsonObject(
/// jsonProperty("containerPort", 80),
/// jsonProperty("hostPort", 80)
/// )))
/// ),
/// jsonObject(
/// jsonProperty("name", "second"),
/// jsonProperty("image", "service-second"),
/// jsonProperty("cpu", 10),
/// jsonProperty("memory", 256),
/// jsonProperty("essential", true),
/// jsonProperty("portMappings", jsonArray(jsonObject(
/// jsonProperty("containerPort", 443),
/// jsonProperty("hostPort", 443)
/// )))
/// )
/// )))
/// .volumes(TaskDefinitionVolumeArgs.builder()
/// .name("service-storage")
/// .hostPath("/ecs/service-storage")
/// .build())
/// .placementConstraints(TaskDefinitionPlacementConstraintArgs.builder()
/// .type("memberOf")
/// .expression("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// service:
/// type: aws:ecs:TaskDefinition
/// properties:
/// family: service
/// containerDefinitions:
/// fn::toJSON:
/// - name: first
/// image: service-first
/// cpu: 10
/// memory: 512
/// essential: true
/// portMappings:
/// - containerPort: 80
/// hostPort: 80
/// - name: second
/// image: service-second
/// cpu: 10
/// memory: 256
/// essential: true
/// portMappings:
/// - containerPort: 443
/// hostPort: 443
/// volumes:
/// - name: service-storage
/// hostPath: /ecs/service-storage
/// placementConstraints:
/// - type: memberOf
/// expression: attribute:ecs.availability-zone in [us-west-2a, us-west-2b]
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With AppMesh Proxy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const service = new aws.ecs.TaskDefinition("service", {
/// family: "service",
/// containerDefinitions: std.file({
/// input: "task-definitions/service.json",
/// }).then(invoke => invoke.result),
/// proxyConfiguration: {
/// type: "APPMESH",
/// containerName: "applicationContainerName",
/// properties: {
/// AppPorts: "8080",
/// EgressIgnoredIPs: "169.254.170.2,169.254.169.254",
/// IgnoredUID: "1337",
/// ProxyEgressPort: "15001",
/// ProxyIngressPort: "15000",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// service = aws.ecs.TaskDefinition("service",
/// family="service",
/// container_definitions=std.file(input="task-definitions/service.json").result,
/// proxy_configuration={
/// "type": "APPMESH",
/// "container_name": "applicationContainerName",
/// "properties": {
/// "AppPorts": "8080",
/// "EgressIgnoredIPs": "169.254.170.2,169.254.169.254",
/// "IgnoredUID": "1337",
/// "ProxyEgressPort": "15001",
/// "ProxyIngressPort": "15000",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var service = new Aws.Ecs.TaskDefinition("service", new()
/// {
/// Family = "service",
/// ContainerDefinitions = Std.File.Invoke(new()
/// {
/// Input = "task-definitions/service.json",
/// }).Apply(invoke => invoke.Result),
/// ProxyConfiguration = new Aws.Ecs.Inputs.TaskDefinitionProxyConfigurationArgs
/// {
/// Type = "APPMESH",
/// ContainerName = "applicationContainerName",
/// Properties =
/// {
/// { "AppPorts", "8080" },
/// { "EgressIgnoredIPs", "169.254.170.2,169.254.169.254" },
/// { "IgnoredUID", "1337" },
/// { "ProxyEgressPort", "15001" },
/// { "ProxyIngressPort", "15000" },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "task-definitions/service.json",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// Family:               pulumi.String("service"),
/// ContainerDefinitions: pulumi.String(invokeFile.Result),
/// ProxyConfiguration: &ecs.TaskDefinitionProxyConfigurationArgs{
/// Type:          pulumi.String("APPMESH"),
/// ContainerName: pulumi.String("applicationContainerName"),
/// Properties: pulumi.StringMap{
/// "AppPorts":         pulumi.String("8080"),
/// "EgressIgnoredIPs": pulumi.String("169.254.170.2,169.254.169.254"),
/// "IgnoredUID":       pulumi.String("1337"),
/// "ProxyEgressPort":  pulumi.String("15001"),
/// "ProxyIngressPort": pulumi.String("15000"),
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
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionProxyConfigurationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
/// .family("service")
/// .containerDefinitions(StdFunctions.file(FileArgs.builder()
/// .input("task-definitions/service.json")
/// .build()).result())
/// .proxyConfiguration(TaskDefinitionProxyConfigurationArgs.builder()
/// .type("APPMESH")
/// .containerName("applicationContainerName")
/// .properties(Map.ofEntries(
/// Map.entry("AppPorts", "8080"),
/// Map.entry("EgressIgnoredIPs", "169.254.170.2,169.254.169.254"),
/// Map.entry("IgnoredUID", "1337"),
/// Map.entry("ProxyEgressPort", "15001"),
/// Map.entry("ProxyIngressPort", "15000")
/// ))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// service:
/// type: aws:ecs:TaskDefinition
/// properties:
/// family: service
/// containerDefinitions:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: task-definitions/service.json
/// return: result
/// proxyConfiguration:
/// type: APPMESH
/// containerName: applicationContainerName
/// properties:
/// AppPorts: '8080'
/// EgressIgnoredIPs: 169.254.170.2,169.254.169.254
/// IgnoredUID: '1337'
/// ProxyEgressPort: 15001
/// ProxyIngressPort: 15000
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Using <span pulumi-lang-nodejs="`dockerVolumeConfiguration`" pulumi-lang-dotnet="`DockerVolumeConfiguration`" pulumi-lang-go="`dockerVolumeConfiguration`" pulumi-lang-python="`docker_volume_configuration`" pulumi-lang-yaml="`dockerVolumeConfiguration`" pulumi-lang-java="`dockerVolumeConfiguration`">`docker_volume_configuration`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const service = new aws.ecs.TaskDefinition("service", {
/// family: "service",
/// containerDefinitions: std.file({
/// input: "task-definitions/service.json",
/// }).then(invoke => invoke.result),
/// volumes: [{
/// name: "service-storage",
/// dockerVolumeConfiguration: {
/// scope: "shared",
/// autoprovision: true,
/// driver: "local",
/// driverOpts: {
/// type: "nfs",
/// device: `${fs.dnsName}:/`,
/// o: `addr=${fs.dnsName},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport`,
/// },
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// service = aws.ecs.TaskDefinition("service",
/// family="service",
/// container_definitions=std.file(input="task-definitions/service.json").result,
/// volumes=[{
/// "name": "service-storage",
/// "docker_volume_configuration": {
/// "scope": "shared",
/// "autoprovision": True,
/// "driver": "local",
/// "driver_opts": {
/// "type": "nfs",
/// "device": f"{fs['dnsName']}:/",
/// "o": f"addr={fs['dnsName']},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport",
/// },
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var service = new Aws.Ecs.TaskDefinition("service", new()
/// {
/// Family = "service",
/// ContainerDefinitions = Std.File.Invoke(new()
/// {
/// Input = "task-definitions/service.json",
/// }).Apply(invoke => invoke.Result),
/// Volumes = new[]
/// {
/// new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
/// {
/// Name = "service-storage",
/// DockerVolumeConfiguration = new Aws.Ecs.Inputs.TaskDefinitionVolumeDockerVolumeConfigurationArgs
/// {
/// Scope = "shared",
/// Autoprovision = true,
/// Driver = "local",
/// DriverOpts =
/// {
/// { "type", "nfs" },
/// { "device", $"{fs.DnsName}:/" },
/// { "o", $"addr={fs.DnsName},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport" },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "task-definitions/service.json",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// Family:               pulumi.String("service"),
/// ContainerDefinitions: pulumi.String(invokeFile.Result),
/// Volumes: ecs.TaskDefinitionVolumeArray{
/// &ecs.TaskDefinitionVolumeArgs{
/// Name: pulumi.String("service-storage"),
/// DockerVolumeConfiguration: &ecs.TaskDefinitionVolumeDockerVolumeConfigurationArgs{
/// Scope:         pulumi.String("shared"),
/// Autoprovision: pulumi.Bool(true),
/// Driver:        pulumi.String("local"),
/// DriverOpts: pulumi.StringMap{
/// "type":   pulumi.String("nfs"),
/// "device": pulumi.Sprintf("%v:/", fs.DnsName),
/// "o":      pulumi.Sprintf("addr=%v,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport", fs.DnsName),
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
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeDockerVolumeConfigurationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
/// .family("service")
/// .containerDefinitions(StdFunctions.file(FileArgs.builder()
/// .input("task-definitions/service.json")
/// .build()).result())
/// .volumes(TaskDefinitionVolumeArgs.builder()
/// .name("service-storage")
/// .dockerVolumeConfiguration(TaskDefinitionVolumeDockerVolumeConfigurationArgs.builder()
/// .scope("shared")
/// .autoprovision(true)
/// .driver("local")
/// .driverOpts(Map.ofEntries(
/// Map.entry("type", "nfs"),
/// Map.entry("device", String.format("%s:/", fs.dnsName())),
/// Map.entry("o", String.format("addr=%s,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport", fs.dnsName()))
/// ))
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// service:
/// type: aws:ecs:TaskDefinition
/// properties:
/// family: service
/// containerDefinitions:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: task-definitions/service.json
/// return: result
/// volumes:
/// - name: service-storage
/// dockerVolumeConfiguration:
/// scope: shared
/// autoprovision: true
/// driver: local
/// driverOpts:
/// type: nfs
/// device: ${fs.dnsName}:/
/// o: addr=${fs.dnsName},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Using <span pulumi-lang-nodejs="`efsVolumeConfiguration`" pulumi-lang-dotnet="`EfsVolumeConfiguration`" pulumi-lang-go="`efsVolumeConfiguration`" pulumi-lang-python="`efs_volume_configuration`" pulumi-lang-yaml="`efsVolumeConfiguration`" pulumi-lang-java="`efsVolumeConfiguration`">`efs_volume_configuration`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const service = new aws.ecs.TaskDefinition("service", {
/// family: "service",
/// containerDefinitions: std.file({
/// input: "task-definitions/service.json",
/// }).then(invoke => invoke.result),
/// volumes: [{
/// name: "service-storage",
/// efsVolumeConfiguration: {
/// fileSystemId: fs.id,
/// rootDirectory: "/opt/data",
/// transitEncryption: "ENABLED",
/// transitEncryptionPort: 2999,
/// authorizationConfig: {
/// accessPointId: test.id,
/// iam: "ENABLED",
/// },
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// service = aws.ecs.TaskDefinition("service",
/// family="service",
/// container_definitions=std.file(input="task-definitions/service.json").result,
/// volumes=[{
/// "name": "service-storage",
/// "efs_volume_configuration": {
/// "file_system_id": fs["id"],
/// "root_directory": "/opt/data",
/// "transit_encryption": "ENABLED",
/// "transit_encryption_port": 2999,
/// "authorization_config": {
/// "access_point_id": test["id"],
/// "iam": "ENABLED",
/// },
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var service = new Aws.Ecs.TaskDefinition("service", new()
/// {
/// Family = "service",
/// ContainerDefinitions = Std.File.Invoke(new()
/// {
/// Input = "task-definitions/service.json",
/// }).Apply(invoke => invoke.Result),
/// Volumes = new[]
/// {
/// new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
/// {
/// Name = "service-storage",
/// EfsVolumeConfiguration = new Aws.Ecs.Inputs.TaskDefinitionVolumeEfsVolumeConfigurationArgs
/// {
/// FileSystemId = fs.Id,
/// RootDirectory = "/opt/data",
/// TransitEncryption = "ENABLED",
/// TransitEncryptionPort = 2999,
/// AuthorizationConfig = new Aws.Ecs.Inputs.TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs
/// {
/// AccessPointId = test.Id,
/// Iam = "ENABLED",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "task-definitions/service.json",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// Family:               pulumi.String("service"),
/// ContainerDefinitions: pulumi.String(invokeFile.Result),
/// Volumes: ecs.TaskDefinitionVolumeArray{
/// &ecs.TaskDefinitionVolumeArgs{
/// Name: pulumi.String("service-storage"),
/// EfsVolumeConfiguration: &ecs.TaskDefinitionVolumeEfsVolumeConfigurationArgs{
/// FileSystemId:          pulumi.Any(fs.Id),
/// RootDirectory:         pulumi.String("/opt/data"),
/// TransitEncryption:     pulumi.String("ENABLED"),
/// TransitEncryptionPort: pulumi.Int(2999),
/// AuthorizationConfig: &ecs.TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs{
/// AccessPointId: pulumi.Any(test.Id),
/// Iam:           pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeEfsVolumeConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
/// .family("service")
/// .containerDefinitions(StdFunctions.file(FileArgs.builder()
/// .input("task-definitions/service.json")
/// .build()).result())
/// .volumes(TaskDefinitionVolumeArgs.builder()
/// .name("service-storage")
/// .efsVolumeConfiguration(TaskDefinitionVolumeEfsVolumeConfigurationArgs.builder()
/// .fileSystemId(fs.id())
/// .rootDirectory("/opt/data")
/// .transitEncryption("ENABLED")
/// .transitEncryptionPort(2999)
/// .authorizationConfig(TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs.builder()
/// .accessPointId(test.id())
/// .iam("ENABLED")
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
/// service:
/// type: aws:ecs:TaskDefinition
/// properties:
/// family: service
/// containerDefinitions:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: task-definitions/service.json
/// return: result
/// volumes:
/// - name: service-storage
/// efsVolumeConfiguration:
/// fileSystemId: ${fs.id}
/// rootDirectory: /opt/data
/// transitEncryption: ENABLED
/// transitEncryptionPort: 2999
/// authorizationConfig:
/// accessPointId: ${test.id}
/// iam: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Using <span pulumi-lang-nodejs="`fsxWindowsFileServerVolumeConfiguration`" pulumi-lang-dotnet="`FsxWindowsFileServerVolumeConfiguration`" pulumi-lang-go="`fsxWindowsFileServerVolumeConfiguration`" pulumi-lang-python="`fsx_windows_file_server_volume_configuration`" pulumi-lang-yaml="`fsxWindowsFileServerVolumeConfiguration`" pulumi-lang-java="`fsxWindowsFileServerVolumeConfiguration`">`fsx_windows_file_server_volume_configuration`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const test = new aws.secretsmanager.SecretVersion("test", {
/// secretId: testAwsSecretsmanagerSecret.id,
/// secretString: JSON.stringify({
/// username: "admin",
/// password: testAwsDirectoryServiceDirectory.password,
/// }),
/// });
/// const service = new aws.ecs.TaskDefinition("service", {
/// family: "service",
/// containerDefinitions: std.file({
/// input: "task-definitions/service.json",
/// }).then(invoke => invoke.result),
/// volumes: [{
/// name: "service-storage",
/// fsxWindowsFileServerVolumeConfiguration: {
/// fileSystemId: testAwsFsxWindowsFileSystem.id,
/// rootDirectory: "\\data",
/// authorizationConfig: {
/// credentialsParameter: test.arn,
/// domain: testAwsDirectoryServiceDirectory.name,
/// },
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// test = aws.secretsmanager.SecretVersion("test",
/// secret_id=test_aws_secretsmanager_secret["id"],
/// secret_string=json.dumps({
/// "username": "admin",
/// "password": test_aws_directory_service_directory["password"],
/// }))
/// service = aws.ecs.TaskDefinition("service",
/// family="service",
/// container_definitions=std.file(input="task-definitions/service.json").result,
/// volumes=[{
/// "name": "service-storage",
/// "fsx_windows_file_server_volume_configuration": {
/// "file_system_id": test_aws_fsx_windows_file_system["id"],
/// "root_directory": "\\data",
/// "authorization_config": {
/// "credentials_parameter": test.arn,
/// "domain": test_aws_directory_service_directory["name"],
/// },
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.SecretsManager.SecretVersion("test", new()
/// {
/// SecretId = testAwsSecretsmanagerSecret.Id,
/// SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["username"] = "admin",
/// ["password"] = testAwsDirectoryServiceDirectory.Password,
/// }),
/// });
///
/// var service = new Aws.Ecs.TaskDefinition("service", new()
/// {
/// Family = "service",
/// ContainerDefinitions = Std.File.Invoke(new()
/// {
/// Input = "task-definitions/service.json",
/// }).Apply(invoke => invoke.Result),
/// Volumes = new[]
/// {
/// new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
/// {
/// Name = "service-storage",
/// FsxWindowsFileServerVolumeConfiguration = new Aws.Ecs.Inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs
/// {
/// FileSystemId = testAwsFsxWindowsFileSystem.Id,
/// RootDirectory = "\\data",
/// AuthorizationConfig = new Aws.Ecs.Inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs
/// {
/// CredentialsParameter = test.Arn,
/// Domain = testAwsDirectoryServiceDirectory.Name,
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
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "username": "admin",
/// "password": testAwsDirectoryServiceDirectory.Password,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// test, err := secretsmanager.NewSecretVersion(ctx, "test", &secretsmanager.SecretVersionArgs{
/// SecretId:     pulumi.Any(testAwsSecretsmanagerSecret.Id),
/// SecretString: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "task-definitions/service.json",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// Family:               pulumi.String("service"),
/// ContainerDefinitions: pulumi.String(invokeFile.Result),
/// Volumes: ecs.TaskDefinitionVolumeArray{
/// &ecs.TaskDefinitionVolumeArgs{
/// Name: pulumi.String("service-storage"),
/// FsxWindowsFileServerVolumeConfiguration: &ecs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs{
/// FileSystemId:  pulumi.Any(testAwsFsxWindowsFileSystem.Id),
/// RootDirectory: pulumi.String("\\data"),
/// AuthorizationConfig: &ecs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs{
/// CredentialsParameter: test.Arn,
/// Domain:               pulumi.Any(testAwsDirectoryServiceDirectory.Name),
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
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var test = new SecretVersion("test", SecretVersionArgs.builder()
/// .secretId(testAwsSecretsmanagerSecret.id())
/// .secretString(serializeJson(
/// jsonObject(
/// jsonProperty("username", "admin"),
/// jsonProperty("password", testAwsDirectoryServiceDirectory.password())
/// )))
/// .build());
///
/// var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
/// .family("service")
/// .containerDefinitions(StdFunctions.file(FileArgs.builder()
/// .input("task-definitions/service.json")
/// .build()).result())
/// .volumes(TaskDefinitionVolumeArgs.builder()
/// .name("service-storage")
/// .fsxWindowsFileServerVolumeConfiguration(TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs.builder()
/// .fileSystemId(testAwsFsxWindowsFileSystem.id())
/// .rootDirectory("\\data")
/// .authorizationConfig(TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs.builder()
/// .credentialsParameter(test.arn())
/// .domain(testAwsDirectoryServiceDirectory.name())
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
/// service:
/// type: aws:ecs:TaskDefinition
/// properties:
/// family: service
/// containerDefinitions:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: task-definitions/service.json
/// return: result
/// volumes:
/// - name: service-storage
/// fsxWindowsFileServerVolumeConfiguration:
/// fileSystemId: ${testAwsFsxWindowsFileSystem.id}
/// rootDirectory: \data
/// authorizationConfig:
/// credentialsParameter: ${test.arn}
/// domain: ${testAwsDirectoryServiceDirectory.name}
/// test:
/// type: aws:secretsmanager:SecretVersion
/// properties:
/// secretId: ${testAwsSecretsmanagerSecret.id}
/// secretString:
/// fn::toJSON:
/// username: admin
/// password: ${testAwsDirectoryServiceDirectory.password}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Using <span pulumi-lang-nodejs="`containerDefinitions`" pulumi-lang-dotnet="`ContainerDefinitions`" pulumi-lang-go="`containerDefinitions`" pulumi-lang-python="`container_definitions`" pulumi-lang-yaml="`containerDefinitions`" pulumi-lang-java="`containerDefinitions`">`container_definitions`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.TaskDefinition("test", {
/// family: "test",
/// containerDefinitions: `[
/// {
/// "cpu": 10,
/// "command": ["sleep", "10"],
/// "entryPoint": ["/"],
/// "environment": [
/// {"name": "VARNAME", "value": "VARVAL"}
/// ],
/// "essential": true,
/// "image": "jenkins",
/// "memory": 128,
/// "name": "jenkins",
/// "portMappings": [
/// {
/// "containerPort": 80,
/// "hostPort": 8080
/// }
/// ]
/// }
/// ]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.TaskDefinition("test",
/// family="test",
/// container_definitions="""[
/// {
/// "cpu": 10,
/// "command": ["sleep", "10"],
/// "entryPoint": ["/"],
/// "environment": [
/// {"name": "VARNAME", "value": "VARVAL"}
/// ],
/// "essential": true,
/// "image": "jenkins",
/// "memory": 128,
/// "name": "jenkins",
/// "portMappings": [
/// {
/// "containerPort": 80,
/// "hostPort": 8080
/// }
/// ]
/// }
/// ]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ecs.TaskDefinition("test", new()
/// {
/// Family = "test",
/// ContainerDefinitions = @"[
/// {
/// ""cpu"": 10,
/// ""command"": [""sleep"", ""10""],
/// ""entryPoint"": [""/""],
/// ""environment"": [
/// {""name"": ""VARNAME"", ""value"": ""VARVAL""}
/// ],
/// ""essential"": true,
/// ""image"": ""jenkins"",
/// ""memory"": 128,
/// ""name"": ""jenkins"",
/// ""portMappings"": [
/// {
/// ""containerPort"": 80,
/// ""hostPort"": 8080
/// }
/// ]
/// }
/// ]
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewTaskDefinition(ctx, "test", &ecs.TaskDefinitionArgs{
/// Family: pulumi.String("test"),
/// ContainerDefinitions: pulumi.String(`[
/// {
/// "cpu": 10,
/// "command": ["sleep", "10"],
/// "entryPoint": ["/"],
/// "environment": [
/// {"name": "VARNAME", "value": "VARVAL"}
/// ],
/// "essential": true,
/// "image": "jenkins",
/// "memory": 128,
/// "name": "jenkins",
/// "portMappings": [
/// {
/// "containerPort": 80,
/// "hostPort": 8080
/// }
/// ]
/// }
/// ]
/// `),
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
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
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
/// var test = new TaskDefinition("test", TaskDefinitionArgs.builder()
/// .family("test")
/// .containerDefinitions("""
/// [
/// {
/// "cpu": 10,
/// "command": ["sleep", "10"],
/// "entryPoint": ["/"],
/// "environment": [
/// {"name": "VARNAME", "value": "VARVAL"}
/// ],
/// "essential": true,
/// "image": "jenkins",
/// "memory": 128,
/// "name": "jenkins",
/// "portMappings": [
/// {
/// "containerPort": 80,
/// "hostPort": 8080
/// }
/// ]
/// }
/// ]
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ecs:TaskDefinition
/// properties:
/// family: test
/// containerDefinitions: |
/// [
/// {
/// "cpu": 10,
/// "command": ["sleep", "10"],
/// "entryPoint": ["/"],
/// "environment": [
/// {"name": "VARNAME", "value": "VARVAL"}
/// ],
/// "essential": true,
/// "image": "jenkins",
/// "memory": 128,
/// "name": "jenkins",
/// "portMappings": [
/// {
/// "containerPort": 80,
/// "hostPort": 8080
/// }
/// ]
/// }
/// ]
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example Using <span pulumi-lang-nodejs="`runtimePlatform`" pulumi-lang-dotnet="`RuntimePlatform`" pulumi-lang-go="`runtimePlatform`" pulumi-lang-python="`runtime_platform`" pulumi-lang-yaml="`runtimePlatform`" pulumi-lang-java="`runtimePlatform`">`runtime_platform`</span> and <span pulumi-lang-nodejs="`fargate`" pulumi-lang-dotnet="`Fargate`" pulumi-lang-go="`fargate`" pulumi-lang-python="`fargate`" pulumi-lang-yaml="`fargate`" pulumi-lang-java="`fargate`">`fargate`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.TaskDefinition("test", {
/// family: "test",
/// requiresCompatibilities: ["FARGATE"],
/// networkMode: "awsvpc",
/// cpu: "1024",
/// memory: "2048",
/// containerDefinitions: `[
/// {
/// "name": "iis",
/// "image": "mcr.microsoft.com/windows/servercore/iis",
/// "cpu": 1024,
/// "memory": 2048,
/// "essential": true
/// }
/// ]
/// `,
/// runtimePlatform: {
/// operatingSystemFamily: "WINDOWS_SERVER_2019_CORE",
/// cpuArchitecture: "X86_64",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.TaskDefinition("test",
/// family="test",
/// requires_compatibilities=["FARGATE"],
/// network_mode="awsvpc",
/// cpu="1024",
/// memory="2048",
/// container_definitions="""[
/// {
/// "name": "iis",
/// "image": "mcr.microsoft.com/windows/servercore/iis",
/// "cpu": 1024,
/// "memory": 2048,
/// "essential": true
/// }
/// ]
/// """,
/// runtime_platform={
/// "operating_system_family": "WINDOWS_SERVER_2019_CORE",
/// "cpu_architecture": "X86_64",
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
/// var test = new Aws.Ecs.TaskDefinition("test", new()
/// {
/// Family = "test",
/// RequiresCompatibilities = new[]
/// {
/// "FARGATE",
/// },
/// NetworkMode = "awsvpc",
/// Cpu = "1024",
/// Memory = "2048",
/// ContainerDefinitions = @"[
/// {
/// ""name"": ""iis"",
/// ""image"": ""mcr.microsoft.com/windows/servercore/iis"",
/// ""cpu"": 1024,
/// ""memory"": 2048,
/// ""essential"": true
/// }
/// ]
/// ",
/// RuntimePlatform = new Aws.Ecs.Inputs.TaskDefinitionRuntimePlatformArgs
/// {
/// OperatingSystemFamily = "WINDOWS_SERVER_2019_CORE",
/// CpuArchitecture = "X86_64",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewTaskDefinition(ctx, "test", &ecs.TaskDefinitionArgs{
/// Family: pulumi.String("test"),
/// RequiresCompatibilities: pulumi.StringArray{
/// pulumi.String("FARGATE"),
/// },
/// NetworkMode: pulumi.String("awsvpc"),
/// Cpu:         pulumi.String("1024"),
/// Memory:      pulumi.String("2048"),
/// ContainerDefinitions: pulumi.String(`[
/// {
/// "name": "iis",
/// "image": "mcr.microsoft.com/windows/servercore/iis",
/// "cpu": 1024,
/// "memory": 2048,
/// "essential": true
/// }
/// ]
/// `),
/// RuntimePlatform: &ecs.TaskDefinitionRuntimePlatformArgs{
/// OperatingSystemFamily: pulumi.String("WINDOWS_SERVER_2019_CORE"),
/// CpuArchitecture:       pulumi.String("X86_64"),
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
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionRuntimePlatformArgs;
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
/// var test = new TaskDefinition("test", TaskDefinitionArgs.builder()
/// .family("test")
/// .requiresCompatibilities("FARGATE")
/// .networkMode("awsvpc")
/// .cpu("1024")
/// .memory("2048")
/// .containerDefinitions("""
/// [
/// {
/// "name": "iis",
/// "image": "mcr.microsoft.com/windows/servercore/iis",
/// "cpu": 1024,
/// "memory": 2048,
/// "essential": true
/// }
/// ]
/// """)
/// .runtimePlatform(TaskDefinitionRuntimePlatformArgs.builder()
/// .operatingSystemFamily("WINDOWS_SERVER_2019_CORE")
/// .cpuArchitecture("X86_64")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ecs:TaskDefinition
/// properties:
/// family: test
/// requiresCompatibilities:
/// - FARGATE
/// networkMode: awsvpc
/// cpu: 1024
/// memory: 2048
/// containerDefinitions: |
/// [
/// {
/// "name": "iis",
/// "image": "mcr.microsoft.com/windows/servercore/iis",
/// "cpu": 1024,
/// "memory": 2048,
/// "essential": true
/// }
/// ]
/// runtimePlatform:
/// operatingSystemFamily: WINDOWS_SERVER_2019_CORE
/// cpuArchitecture: X86_64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`family`" pulumi-lang-dotnet="`Family`" pulumi-lang-go="`family`" pulumi-lang-python="`family`" pulumi-lang-yaml="`family`" pulumi-lang-java="`family`">`family`</span> (String) The unique name for your task definition.
/// * <span pulumi-lang-nodejs="`revision`" pulumi-lang-dotnet="`Revision`" pulumi-lang-go="`revision`" pulumi-lang-python="`revision`" pulumi-lang-yaml="`revision`" pulumi-lang-java="`revision`">`revision`</span> (Integer) The revision of the task in a particular family.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECS Task Definitions using their ARNs. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/taskDefinition:TaskDefinition example arn:aws:ecs:us-east-1:012345678910:task-definition/mytaskfamily:123
/// ```
class TaskDefinition extends CustomResource {
  /// Full ARN of the Task Definition (including both <span pulumi-lang-nodejs="`family`" pulumi-lang-dotnet="`Family`" pulumi-lang-go="`family`" pulumi-lang-python="`family`" pulumi-lang-yaml="`family`" pulumi-lang-java="`family`">`family`</span> and <span pulumi-lang-nodejs="`revision`" pulumi-lang-dotnet="`Revision`" pulumi-lang-go="`revision`" pulumi-lang-python="`revision`" pulumi-lang-yaml="`revision`" pulumi-lang-java="`revision`">`revision`</span>).
  late final Output<String> arn;

  /// ARN of the Task Definition with the trailing <span pulumi-lang-nodejs="`revision`" pulumi-lang-dotnet="`Revision`" pulumi-lang-go="`revision`" pulumi-lang-python="`revision`" pulumi-lang-yaml="`revision`" pulumi-lang-java="`revision`">`revision`</span> removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  late final Output<String> arnWithoutRevision;

  /// A list of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  late final Output<String> containerDefinitions;

  /// Number of cpu units used by the task. If the <span pulumi-lang-nodejs="`requiresCompatibilities`" pulumi-lang-dotnet="`RequiresCompatibilities`" pulumi-lang-go="`requiresCompatibilities`" pulumi-lang-python="`requires_compatibilities`" pulumi-lang-yaml="`requiresCompatibilities`" pulumi-lang-java="`requiresCompatibilities`">`requires_compatibilities`</span> is `FARGATE` this field is required.
  late final Output<String?> cpu;

  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> enableFaultInjection;

  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  late final Output<TaskDefinitionEphemeralStorage?> ephemeralStorage;

  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  late final Output<String?> executionRoleArn;

  /// A unique name for your task definition.
  ///
  /// The following arguments are optional:
  late final Output<String> family;

  /// IPC resource namespace to be used for the containers in the task. Valid values: <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>, <span pulumi-lang-nodejs="`task`" pulumi-lang-dotnet="`Task`" pulumi-lang-go="`task`" pulumi-lang-python="`task`" pulumi-lang-yaml="`task`" pulumi-lang-java="`task`">`task`</span>, <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>.
  late final Output<String?> ipcMode;

  /// Amount (in MiB) of memory used by the task. If the <span pulumi-lang-nodejs="`requiresCompatibilities`" pulumi-lang-dotnet="`RequiresCompatibilities`" pulumi-lang-go="`requiresCompatibilities`" pulumi-lang-python="`requires_compatibilities`" pulumi-lang-yaml="`requiresCompatibilities`" pulumi-lang-java="`requiresCompatibilities`">`requires_compatibilities`</span> is `FARGATE` this field is required.
  late final Output<String?> memory;

  /// Docker networking mode to use for the containers in the task. Valid values: <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span>, <span pulumi-lang-nodejs="`bridge`" pulumi-lang-dotnet="`Bridge`" pulumi-lang-go="`bridge`" pulumi-lang-python="`bridge`" pulumi-lang-yaml="`bridge`" pulumi-lang-java="`bridge`">`bridge`</span>, <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>, and <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>.
  late final Output<String> networkMode;

  /// Process namespace to use for the containers in the task. Valid values: host`, <span pulumi-lang-nodejs="`task`" pulumi-lang-dotnet="`Task`" pulumi-lang-go="`task`" pulumi-lang-python="`task`" pulumi-lang-yaml="`task`" pulumi-lang-java="`task`">`task`</span>.
  late final Output<String?> pidMode;

  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of <span pulumi-lang-nodejs="`placementConstraints`" pulumi-lang-dotnet="`PlacementConstraints`" pulumi-lang-go="`placementConstraints`" pulumi-lang-python="`placement_constraints`" pulumi-lang-yaml="`placementConstraints`" pulumi-lang-java="`placementConstraints`">`placement_constraints`</span> is <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>. Detailed below.
  late final Output<List<TaskDefinitionPlacementConstraint>?>
      placementConstraints;

  /// Configuration block for the App Mesh proxy. Detailed below.
  late final Output<TaskDefinitionProxyConfiguration?> proxyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of launch types required by the task. Valid values: `EC2`, `EXTERNAL`, `FARGATE`, `MANAGED_INSTANCES`.
  late final Output<List<String>?> requiresCompatibilities;

  /// Revision of the task in a particular family.
  late final Output<int> revision;

  /// Configuration block for<span pulumi-lang-nodejs=" runtimePlatform " pulumi-lang-dotnet=" RuntimePlatform " pulumi-lang-go=" runtimePlatform " pulumi-lang-python=" runtime_platform " pulumi-lang-yaml=" runtimePlatform " pulumi-lang-java=" runtimePlatform "> runtime_platform </span>that containers in your task may use.
  late final Output<TaskDefinitionRuntimePlatform?> runtimePlatform;

  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> skipDestroy;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final Output<String?> taskRoleArn;

  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Useful in the event the task definition is modified outside of this resource.
  late final Output<bool?> trackLatest;

  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// > **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as <span pulumi-lang-nodejs="`environment`" pulumi-lang-dotnet="`Environment`" pulumi-lang-go="`environment`" pulumi-lang-python="`environment`" pulumi-lang-yaml="`environment`" pulumi-lang-java="`environment`">`environment`</span> values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// > **Note:** Fault injection only works with tasks using the <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> or <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> network modes. Fault injection isn't available on Windows.
  late final Output<List<TaskDefinitionVolume>?> volumes;

  TaskDefinition(
    String name, {
    TaskDefinitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/taskDefinition:TaskDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.arnWithoutRevision = Output.createUnknown<String>();
    this.containerDefinitions = Output.createUnknown<String>();
    this.cpu = Output.createUnknown<String?>();
    this.enableFaultInjection = Output.createUnknown<bool>();
    this.ephemeralStorage =
        Output.createUnknown<TaskDefinitionEphemeralStorage?>();
    this.executionRoleArn = Output.createUnknown<String?>();
    this.family = Output.createUnknown<String>();
    this.ipcMode = Output.createUnknown<String?>();
    this.memory = Output.createUnknown<String?>();
    this.networkMode = Output.createUnknown<String>();
    this.pidMode = Output.createUnknown<String?>();
    this.placementConstraints =
        Output.createUnknown<List<TaskDefinitionPlacementConstraint>?>();
    this.proxyConfiguration =
        Output.createUnknown<TaskDefinitionProxyConfiguration?>();
    this.region = Output.createUnknown<String>();
    this.requiresCompatibilities = Output.createUnknown<List<String>?>();
    this.revision = Output.createUnknown<int>();
    this.runtimePlatform =
        Output.createUnknown<TaskDefinitionRuntimePlatform?>();
    this.skipDestroy = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.taskRoleArn = Output.createUnknown<String?>();
    this.trackLatest = Output.createUnknown<bool?>();
    this.volumes = Output.createUnknown<List<TaskDefinitionVolume>?>();
  }
}
