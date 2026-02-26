import 'package:pulumi/pulumi.dart';
import 'sink_policy_args.dart';

/// Resource for managing an AWS CloudWatch Observability Access Manager Sink Policy.
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
/// const example = new aws.oam.Sink("example", {name: "ExampleSink"});
/// const exampleSinkPolicy = new aws.oam.SinkPolicy("example", {
/// sinkIdentifier: example.arn,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: [
/// "oam:CreateLink",
/// "oam:UpdateLink",
/// ],
/// Effect: "Allow",
/// Resource: "*",
/// Principal: {
/// AWS: [
/// "1111111111111",
/// "222222222222",
/// ],
/// },
/// Condition: {
/// "ForAllValues:StringEquals": {
/// "oam:ResourceTypes": [
/// "AWS::CloudWatch::Metric",
/// "AWS::Logs::LogGroup",
/// ],
/// },
/// },
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.oam.Sink("example", name="ExampleSink")
/// example_sink_policy = aws.oam.SinkPolicy("example",
/// sink_identifier=example.arn,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": [
/// "oam:CreateLink",
/// "oam:UpdateLink",
/// ],
/// "Effect": "Allow",
/// "Resource": "*",
/// "Principal": {
/// "AWS": [
/// "1111111111111",
/// "222222222222",
/// ],
/// },
/// "Condition": {
/// "ForAllValues:StringEquals": {
/// "oam:ResourceTypes": [
/// "AWS::CloudWatch::Metric",
/// "AWS::Logs::LogGroup",
/// ],
/// },
/// },
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
/// var example = new Aws.Oam.Sink("example", new()
/// {
/// Name = "ExampleSink",
/// });
///
/// var exampleSinkPolicy = new Aws.Oam.SinkPolicy("example", new()
/// {
/// SinkIdentifier = example.Arn,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "oam:CreateLink",
/// "oam:UpdateLink",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = "*",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = new[]
/// {
/// "1111111111111",
/// "222222222222",
/// },
/// },
/// ["Condition"] = new Dictionary<string, object?>
/// {
/// ["ForAllValues:StringEquals"] = new Dictionary<string, object?>
/// {
/// ["oam:ResourceTypes"] = new[]
/// {
/// "AWS::CloudWatch::Metric",
/// "AWS::Logs::LogGroup",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := oam.NewSink(ctx, "example", &oam.SinkArgs{
/// Name: pulumi.String("ExampleSink"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "oam:CreateLink",
/// "oam:UpdateLink",
/// },
/// "Effect":   "Allow",
/// "Resource": "*",
/// "Principal": map[string]interface{}{
/// "AWS": []string{
/// "1111111111111",
/// "222222222222",
/// },
/// },
/// "Condition": map[string]interface{}{
/// "ForAllValues:StringEquals": map[string]interface{}{
/// "oam:ResourceTypes": []string{
/// "AWS::CloudWatch::Metric",
/// "AWS::Logs::LogGroup",
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
/// _, err = oam.NewSinkPolicy(ctx, "example", &oam.SinkPolicyArgs{
/// SinkIdentifier: example.Arn,
/// Policy:         pulumi.String(json0),
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
/// import com.pulumi.aws.oam.Sink;
/// import com.pulumi.aws.oam.SinkArgs;
/// import com.pulumi.aws.oam.SinkPolicy;
/// import com.pulumi.aws.oam.SinkPolicyArgs;
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
/// var example = new Sink("example", SinkArgs.builder()
/// .name("ExampleSink")
/// .build());
///
/// var exampleSinkPolicy = new SinkPolicy("exampleSinkPolicy", SinkPolicyArgs.builder()
/// .sinkIdentifier(example.arn())
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", jsonArray(
/// "oam:CreateLink",
/// "oam:UpdateLink"
/// )),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", "*"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", jsonArray(
/// "1111111111111",
/// "222222222222"
/// ))
/// )),
/// jsonProperty("Condition", jsonObject(
/// jsonProperty("ForAllValues:StringEquals", jsonObject(
/// jsonProperty("oam:ResourceTypes", jsonArray(
/// "AWS::CloudWatch::Metric",
/// "AWS::Logs::LogGroup"
/// ))
/// ))
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
/// example:
/// type: aws:oam:Sink
/// properties:
/// name: ExampleSink
/// exampleSinkPolicy:
/// type: aws:oam:SinkPolicy
/// name: example
/// properties:
/// sinkIdentifier: ${example.arn}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - oam:CreateLink
/// - oam:UpdateLink
/// Effect: Allow
/// Resource: '*'
/// Principal:
/// AWS:
/// - '1111111111111'
/// - '222222222222'
/// Condition:
/// ForAllValues:StringEquals:
/// oam:ResourceTypes:
/// - AWS::CloudWatch::Metric
/// - AWS::Logs::LogGroup
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Access Manager Sink Policy using the <span pulumi-lang-nodejs="`sinkIdentifier`" pulumi-lang-dotnet="`SinkIdentifier`" pulumi-lang-go="`sinkIdentifier`" pulumi-lang-python="`sink_identifier`" pulumi-lang-yaml="`sinkIdentifier`" pulumi-lang-java="`sinkIdentifier`">`sink_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:oam/sinkPolicy:SinkPolicy example arn:aws:oam:us-west-2:123456789012:sink/sink-id
/// ```
class SinkPolicy extends CustomResource {
  /// ARN of the Sink.
  late final Output<String> arn;

  /// JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID string that AWS generated as part of the sink ARN.
  late final Output<String> sinkId;

  /// ARN of the sink to attach this policy to.
  late final Output<String> sinkIdentifier;

  SinkPolicy(
    String name, {
    SinkPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:oam/sinkPolicy:SinkPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.sinkId = registerOutput<String>('sinkId');
    this.sinkIdentifier = registerOutput<String>('sinkIdentifier');
  }
}
