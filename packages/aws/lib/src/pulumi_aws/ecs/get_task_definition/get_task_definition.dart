import 'package:pulumi/pulumi.dart';
import 'get_task_definition_args.dart';
import 'get_task_definition_result.dart';

/// The ECS task definition data source allows access to details of
/// a specific AWS ECS task definition.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mongoTaskDefinition = new aws.ecs.TaskDefinition("mongo", {
/// family: "mongodb",
/// containerDefinitions: `[
/// {
/// \\"cpu\\": 128,
/// \\"environment\\": [{
/// \\"name\\": \\"SECRET\\",
/// \\"value\\": \\"KEY\\"
/// }],
/// \\"essential\\": true,
/// \\"image\\": \\"mongo:latest\\",
/// \\"memory\\": 128,
/// \\"memoryReservation\\": 64,
/// \\"name\\": \\"mongodb\\"
/// }
/// ]
/// `,
/// });
/// // Simply specify the family to find the latest ACTIVE revision in that family.
/// const mongo = aws.ecs.getTaskDefinitionOutput({
/// taskDefinition: mongoTaskDefinition.family,
/// });
/// const foo = new aws.ecs.Cluster("foo", {name: "foo"});
/// const mongoService = new aws.ecs.Service("mongo", {
/// name: "mongo",
/// cluster: foo.id,
/// desiredCount: 2,
/// taskDefinition: mongo.apply(mongo => mongo.arn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mongo_task_definition = aws.ecs.TaskDefinition("mongo",
/// family="mongodb",
/// container_definitions="""[
/// {
/// \"cpu\": 128,
/// \"environment\": [{
/// \"name\": \"SECRET\",
/// \"value\": \"KEY\"
/// }],
/// \"essential\": true,
/// \"image\": \"mongo:latest\",
/// \"memory\": 128,
/// \"memoryReservation\": 64,
/// \"name\": \"mongodb\"
/// }
/// ]
/// """)
/// # Simply specify the family to find the latest ACTIVE revision in that family.
/// mongo = aws.ecs.get_task_definition_output(task_definition=mongo_task_definition.family)
/// foo = aws.ecs.Cluster("foo", name="foo")
/// mongo_service = aws.ecs.Service("mongo",
/// name="mongo",
/// cluster=foo.id,
/// desired_count=2,
/// task_definition=mongo.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mongoTaskDefinition = new Aws.Ecs.TaskDefinition("mongo", new()
/// {
/// Family = "mongodb",
/// ContainerDefinitions = @"[
/// {
/// \""cpu\"": 128,
/// \""environment\"": [{
/// \""name\"": \""SECRET\"",
/// \""value\"": \""KEY\""
/// }],
/// \""essential\"": true,
/// \""image\"": \""mongo:latest\"",
/// \""memory\"": 128,
/// \""memoryReservation\"": 64,
/// \""name\"": \""mongodb\""
/// }
/// ]
/// ",
/// });
///
/// // Simply specify the family to find the latest ACTIVE revision in that family.
/// var mongo = Aws.Ecs.GetTaskDefinition.Invoke(new()
/// {
/// TaskDefinition = mongoTaskDefinition.Family,
/// });
///
/// var foo = new Aws.Ecs.Cluster("foo", new()
/// {
/// Name = "foo",
/// });
///
/// var mongoService = new Aws.Ecs.Service("mongo", new()
/// {
/// Name = "mongo",
/// Cluster = foo.Id,
/// DesiredCount = 2,
/// TaskDefinition = mongo.Apply(getTaskDefinitionResult => getTaskDefinitionResult.Arn),
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
/// mongoTaskDefinition, err := ecs.NewTaskDefinition(ctx, "mongo", &ecs.TaskDefinitionArgs{
/// Family: pulumi.String("mongodb"),
/// ContainerDefinitions: pulumi.String(`[
/// {
/// \"cpu\": 128,
/// \"environment\": [{
/// \"name\": \"SECRET\",
/// \"value\": \"KEY\"
/// }],
/// \"essential\": true,
/// \"image\": \"mongo:latest\",
/// \"memory\": 128,
/// \"memoryReservation\": 64,
/// \"name\": \"mongodb\"
/// }
/// ]
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// // Simply specify the family to find the latest ACTIVE revision in that family.
/// mongo := ecs.LookupTaskDefinitionOutput(ctx, ecs.GetTaskDefinitionOutputArgs{
/// TaskDefinition: mongoTaskDefinition.Family,
/// }, nil)
/// foo, err := ecs.NewCluster(ctx, "foo", &ecs.ClusterArgs{
/// Name: pulumi.String("foo"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewService(ctx, "mongo", &ecs.ServiceArgs{
/// Name:         pulumi.String("mongo"),
/// Cluster:      foo.ID(),
/// DesiredCount: pulumi.Int(2),
/// TaskDefinition: pulumi.String(mongo.ApplyT(func(mongo ecs.GetTaskDefinitionResult) (*string, error) {
/// return &mongo.Arn, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.ecs.EcsFunctions;
/// import com.pulumi.aws.ecs.inputs.GetTaskDefinitionArgs;
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.aws.ecs.ClusterArgs;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
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
/// var mongoTaskDefinition = new TaskDefinition("mongoTaskDefinition", TaskDefinitionArgs.builder()
/// .family("mongodb")
/// .containerDefinitions("""
/// [
/// {
/// \"cpu\": 128,
/// \"environment\": [{
/// \"name\": \"SECRET\",
/// \"value\": \"KEY\"
/// }],
/// \"essential\": true,
/// \"image\": \"mongo:latest\",
/// \"memory\": 128,
/// \"memoryReservation\": 64,
/// \"name\": \"mongodb\"
/// }
/// ]
/// """)
/// .build());
///
/// // Simply specify the family to find the latest ACTIVE revision in that family.
/// final var mongo = EcsFunctions.getTaskDefinition(GetTaskDefinitionArgs.builder()
/// .taskDefinition(mongoTaskDefinition.family())
/// .build());
///
/// var foo = new Cluster("foo", ClusterArgs.builder()
/// .name("foo")
/// .build());
///
/// var mongoService = new Service("mongoService", ServiceArgs.builder()
/// .name("mongo")
/// .cluster(foo.id())
/// .desiredCount(2)
/// .taskDefinition(mongo.applyValue(_mongo -> _mongo.arn()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ecs:Cluster
/// properties:
/// name: foo
/// mongoTaskDefinition:
/// type: aws:ecs:TaskDefinition
/// name: mongo
/// properties:
/// family: mongodb
/// containerDefinitions: |
/// [
/// {
/// \"cpu\": 128,
/// \"environment\": [{
/// \"name\": \"SECRET\",
/// \"value\": \"KEY\"
/// }],
/// \"essential\": true,
/// \"image\": \"mongo:latest\",
/// \"memory\": 128,
/// \"memoryReservation\": 64,
/// \"name\": \"mongodb\"
/// }
/// ]
/// mongoService:
/// type: aws:ecs:Service
/// name: mongo
/// properties:
/// name: mongo
/// cluster: ${foo.id}
/// desiredCount: 2 # Track the latest ACTIVE revision
/// taskDefinition: ${mongo.arn}
/// variables:
/// # Simply specify the family to find the latest ACTIVE revision in that family.
/// mongo:
/// fn::invoke:
/// function: aws:ecs:getTaskDefinition
/// arguments:
/// taskDefinition: ${mongoTaskDefinition.family}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTaskDefinitionResult> getTaskDefinition(
  GetTaskDefinitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecs/getTaskDefinition:getTaskDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskDefinitionResult.fromMap(result);
}
