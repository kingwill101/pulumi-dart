import 'package:pulumi/pulumi.dart';
import 'tag_args2.dart';

/// Manages an individual DynamoDB resource tag. This resource should only be used in cases where DynamoDB resources are created outside the provider (e.g., Table replicas in other regions).
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using <span pulumi-lang-nodejs="`aws.dynamodb.Table`" pulumi-lang-dotnet="`aws.dynamodb.Table`" pulumi-lang-go="`dynamodb.Table`" pulumi-lang-python="`dynamodb.Table`" pulumi-lang-yaml="`aws.dynamodb.Table`" pulumi-lang-java="`aws.dynamodb.Table`">`aws.dynamodb.Table`</span> and <span pulumi-lang-nodejs="`aws.dynamodb.Tag`" pulumi-lang-dotnet="`aws.dynamodb.Tag`" pulumi-lang-go="`dynamodb.Tag`" pulumi-lang-python="`dynamodb.Tag`" pulumi-lang-yaml="`aws.dynamodb.Tag`" pulumi-lang-java="`aws.dynamodb.Tag`">`aws.dynamodb.Tag`</span> to manage tags of the same DynamoDB Table in the same region will cause a perpetual difference where the <span pulumi-lang-nodejs="`awsDynamodbCluster`" pulumi-lang-dotnet="`AwsDynamodbCluster`" pulumi-lang-go="`awsDynamodbCluster`" pulumi-lang-python="`aws_dynamodb_cluster`" pulumi-lang-yaml="`awsDynamodbCluster`" pulumi-lang-java="`awsDynamodbCluster`">`aws_dynamodb_cluster`</span> resource will try to remove the tag being added by the <span pulumi-lang-nodejs="`aws.dynamodb.Tag`" pulumi-lang-dotnet="`aws.dynamodb.Tag`" pulumi-lang-go="`dynamodb.Tag`" pulumi-lang-python="`dynamodb.Tag`" pulumi-lang-yaml="`aws.dynamodb.Tag`" pulumi-lang-java="`aws.dynamodb.Tag`">`aws.dynamodb.Tag`</span> resource.
///
/// > **NOTE:** This tagging resource does not use the provider <span pulumi-lang-nodejs="`ignoreTags`" pulumi-lang-dotnet="`IgnoreTags`" pulumi-lang-go="`ignoreTags`" pulumi-lang-python="`ignore_tags`" pulumi-lang-yaml="`ignoreTags`" pulumi-lang-java="`ignoreTags`">`ignore_tags`</span> configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const replica = aws.getRegion({});
/// const current = aws.getRegion({});
/// const example = new aws.dynamodb.Table("example", {replicas: [{
/// regionName: replica.then(replica => replica.name),
/// }]});
/// const test = new aws.dynamodb.Tag("test", {
/// resourceArn: pulumi.all([example.arn, current, replica]).apply(([arn, current, replica]) => std.replaceOutput({
/// text: arn,
/// search: current.region,
/// replace: replica.name,
/// })).apply(invoke => invoke.result),
/// key: "testkey",
/// value: "testvalue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// replica = aws.get_region()
/// current = aws.get_region()
/// example = aws.dynamodb.Table("example", replicas=[{
/// "region_name": replica.name,
/// }])
/// test = aws.dynamodb.Tag("test",
/// resource_arn=example.arn.apply(lambda arn: std.replace(text=arn,
/// search=current.region,
/// replace=replica.name)).apply(lambda invoke: invoke.result),
/// key="testkey",
/// value="testvalue")
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
/// var replica = Aws.GetRegion.Invoke();
///
/// var current = Aws.GetRegion.Invoke();
///
/// var example = new Aws.DynamoDB.Table("example", new()
/// {
/// Replicas = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableReplicaArgs
/// {
/// RegionName = replica.Apply(getRegionResult => getRegionResult.Name),
/// },
/// },
/// });
///
/// var test = new Aws.DynamoDB.Tag("test", new()
/// {
/// ResourceArn = Output.Tuple(example.Arn, current, replica).Apply(values =>
/// {
/// var arn = values.Item1;
/// var current = values.Item2;
/// var replica = values.Item3;
/// return Std.Replace.Invoke(new()
/// {
/// Text = arn,
/// Search = current.Apply(getRegionResult => getRegionResult.Region),
/// Replace = replica.Apply(getRegionResult => getRegionResult.Name),
/// });
/// }).Apply(invoke => invoke.Result),
/// Key = "testkey",
/// Value = "testvalue",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// replica, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// Replicas: dynamodb.TableReplicaTypeArray{
/// &dynamodb.TableReplicaTypeArgs{
/// RegionName: pulumi.String(replica.Name),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeReplace, err := std.Replace(ctx, &std.ReplaceArgs{
/// Text: arn,
/// Search: current.Region,
/// Replace: replica.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = dynamodb.NewTag(ctx, "test", &dynamodb.TagArgs{
/// ResourceArn: pulumi.String(example.Arn.ApplyT(func(arn string) (std.ReplaceResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.ReplaceResultOutput).ApplyT(func(invoke std.ReplaceResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// Key: pulumi.String("testkey"),
/// Value: pulumi.String("testvalue"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableReplicaArgs;
/// import com.pulumi.aws.dynamodb.Tag;
/// import com.pulumi.aws.dynamodb.TagArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
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
/// final var replica = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var example = new Table("example", TableArgs.builder()
/// .replicas(TableReplicaArgs.builder()
/// .regionName(replica.name())
/// .build())
/// .build());
///
/// var test = new Tag("test", TagArgs.builder()
/// .resourceArn(example.arn().applyValue(_arn -> StdFunctions.replace(ReplaceArgs.builder()
/// .text(_arn)
/// .search(current.region())
/// .replace(replica.name())
/// .build())).applyValue(_invoke -> _invoke.result()))
/// .key("testkey")
/// .value("testvalue")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:Table
/// properties:
/// replicas:
/// - regionName: ${replica.name}
/// test:
/// type: aws:dynamodb:Tag
/// properties:
/// resourceArn:
/// fn::invoke:
/// function: std:replace
/// arguments:
/// text: ${example.arn}
/// search: ${current.region}
/// replace: ${replica.name}
/// return: result
/// key: testkey
/// value: testvalue
/// variables:
/// replica:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.dynamodb.Tag`" pulumi-lang-dotnet="`aws.dynamodb.Tag`" pulumi-lang-go="`dynamodb.Tag`" pulumi-lang-python="`dynamodb.Tag`" pulumi-lang-yaml="`aws.dynamodb.Tag`" pulumi-lang-java="`aws.dynamodb.Tag`">`aws.dynamodb.Tag`</span> using the DynamoDB resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/tag:Tag example arn:aws:dynamodb:us-east-1:123456789012:table/example,Name
/// ```
class Tag2 extends CustomResource {
  /// Tag name.
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the DynamoDB resource to tag.
  late final Output<String> resourceArn;

  /// Tag value.
  late final Output<String> value;

  Tag2(
    String name, {
    TagArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.value = registerOutput<String>('value');
  }
}
