import 'package:pulumi/pulumi.dart';
import 'log_index_policy_args.dart';

/// Resource for managing an AWS CloudWatch Logs Index Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleLogIndexPolicy = new aws.cloudwatch.LogIndexPolicy("example", {
/// logGroupName: example.name,
/// policyDocument: JSON.stringify({
/// Fields: ["eventName"],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="example")
/// example_log_index_policy = aws.cloudwatch.LogIndexPolicy("example",
/// log_group_name=example.name,
/// policy_document=json.dumps({
/// "Fields": ["eventName"],
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
/// var example = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleLogIndexPolicy = new Aws.CloudWatch.LogIndexPolicy("example", new()
/// {
/// LogGroupName = example.Name,
/// PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Fields"] = new[]
/// {
/// "eventName",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Fields": []string{
/// "eventName",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = cloudwatch.NewLogIndexPolicy(ctx, "example", &cloudwatch.LogIndexPolicyArgs{
/// LogGroupName:   example.Name,
/// PolicyDocument: pulumi.String(json0),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogIndexPolicy;
/// import com.pulumi.aws.cloudwatch.LogIndexPolicyArgs;
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
/// var example = new LogGroup("example", LogGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleLogIndexPolicy = new LogIndexPolicy("exampleLogIndexPolicy", LogIndexPolicyArgs.builder()
/// .logGroupName(example.name())
/// .policyDocument(serializeJson(
/// jsonObject(
/// jsonProperty("Fields", jsonArray("eventName"))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// name: example
/// exampleLogIndexPolicy:
/// type: aws:cloudwatch:LogIndexPolicy
/// name: example
/// properties:
/// logGroupName: ${example.name}
/// policyDocument:
/// fn::toJSON:
/// Fields:
/// - eventName
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Index Policy using the <span pulumi-lang-nodejs="`logGroupName`" pulumi-lang-dotnet="`LogGroupName`" pulumi-lang-go="`logGroupName`" pulumi-lang-python="`log_group_name`" pulumi-lang-yaml="`logGroupName`" pulumi-lang-java="`logGroupName`">`log_group_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logIndexPolicy:LogIndexPolicy example /aws/log/group/name
/// ```
class LogIndexPolicy extends CustomResource {
  /// Log group name to set the policy for.
  late final Output<String> logGroupName;

  /// JSON policy document. This is a JSON formatted string.
  late final Output<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogIndexPolicy(
    String name, {
    LogIndexPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logIndexPolicy:LogIndexPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logGroupName = Output.createUnknown<String>();
    this.policyDocument = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
