import 'package:pulumi/pulumi.dart';
import 'resource_args2.dart';

/// Manages a Cloud Control API Resource. The configuration and lifecycle handling of these resources is proxied through Cloud Control API handlers to the backend service.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudcontrol.Resource("example", {
/// typeName: "AWS::ECS::Cluster",
/// desiredState: JSON.stringify({
/// ClusterName: "example",
/// Tags: [{
/// Key: "CostCenter",
/// Value: "IT",
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cloudcontrol.Resource("example",
/// type_name="AWS::ECS::Cluster",
/// desired_state=json.dumps({
/// "ClusterName": "example",
/// "Tags": [{
/// "Key": "CostCenter",
/// "Value": "IT",
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
/// var example = new Aws.CloudControl.Resource("example", new()
/// {
/// TypeName = "AWS::ECS::Cluster",
/// DesiredState = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["ClusterName"] = "example",
/// ["Tags"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Key"] = "CostCenter",
/// ["Value"] = "IT",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudcontrol"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "ClusterName": "example",
/// "Tags": []map[string]interface{}{
/// map[string]interface{}{
/// "Key":   "CostCenter",
/// "Value": "IT",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = cloudcontrol.NewResource(ctx, "example", &cloudcontrol.ResourceArgs{
/// TypeName:     pulumi.String("AWS::ECS::Cluster"),
/// DesiredState: pulumi.String(json0),
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
/// import com.pulumi.aws.cloudcontrol.Resource;
/// import com.pulumi.aws.cloudcontrol.ResourceArgs;
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
/// var example = new Resource("example", ResourceArgs.builder()
/// .typeName("AWS::ECS::Cluster")
/// .desiredState(serializeJson(
/// jsonObject(
/// jsonProperty("ClusterName", "example"),
/// jsonProperty("Tags", jsonArray(jsonObject(
/// jsonProperty("Key", "CostCenter"),
/// jsonProperty("Value", "IT")
/// )))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudcontrol:Resource
/// properties:
/// typeName: AWS::ECS::Cluster
/// desiredState:
/// fn::toJSON:
/// ClusterName: example
/// Tags:
/// - Key: CostCenter
/// Value: IT
/// ```
/// <!--End PulumiCodeChooser -->
class ResourceType2 extends CustomResource {
  /// JSON string matching the CloudFormation resource type schema with desired configuration.
  late final Output<String> desiredState;

  /// JSON string matching the CloudFormation resource type schema with current configuration. Underlying attributes can be referenced via the `jsondecode()` function, for example, `jsondecode(data.aws_cloudcontrolapi_resource.example.properties)["example"]`.
  late final Output<String> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the IAM Role to assume for operations.
  late final Output<String?> roleArn;

  /// JSON string of the CloudFormation resource type schema which is used for plan time validation where possible. Automatically fetched if not provided. In large scale environments with multiple resources using the same <span pulumi-lang-nodejs="`typeName`" pulumi-lang-dotnet="`TypeName`" pulumi-lang-go="`typeName`" pulumi-lang-python="`type_name`" pulumi-lang-yaml="`typeName`" pulumi-lang-java="`typeName`">`type_name`</span>, it is recommended to fetch the schema once via the <span pulumi-lang-nodejs="`aws.cloudformation.CloudFormationType`" pulumi-lang-dotnet="`aws.cloudformation.CloudFormationType`" pulumi-lang-go="`cloudformation.CloudFormationType`" pulumi-lang-python="`cloudformation.CloudFormationType`" pulumi-lang-yaml="`aws.cloudformation.CloudFormationType`" pulumi-lang-java="`aws.cloudformation.CloudFormationType`">`aws.cloudformation.CloudFormationType`</span> data source and use this argument to reduce `DescribeType` API operation throttling. This value is marked sensitive only to prevent large plan differences from showing.
  late final Output<String> schema;

  /// CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  ///
  /// The following arguments are optional:
  late final Output<String> typeName;

  /// Identifier of the CloudFormation resource type version.
  late final Output<String?> typeVersionId;

  ResourceType2(
    String name, {
    ResourceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudcontrol/resource:Resource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.desiredState = registerOutput<String>('desiredState');
    this.properties = registerOutput<String>('properties');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.schema = registerOutput<String>('schema');
    this.typeName = registerOutput<String>('typeName');
    this.typeVersionId = registerOutput<String?>('typeVersionId');
  }
}
