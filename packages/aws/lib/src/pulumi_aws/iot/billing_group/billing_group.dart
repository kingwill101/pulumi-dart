import 'package:pulumi/pulumi.dart';
import '../billing_group_metadata/billing_group_metadata.dart';
import '../billing_group_properties/billing_group_properties.dart';
import 'billing_group_args.dart';

/// Manages an AWS IoT Billing Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.BillingGroup("example", {
/// name: "example",
/// properties: {
/// description: "This is my billing group",
/// },
/// tags: {
/// terraform: "true",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.BillingGroup("example",
/// name="example",
/// properties={
/// "description": "This is my billing group",
/// },
/// tags={
/// "terraform": "true",
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
/// var example = new Aws.Iot.BillingGroup("example", new()
/// {
/// Name = "example",
/// Properties = new Aws.Iot.Inputs.BillingGroupPropertiesArgs
/// {
/// Description = "This is my billing group",
/// },
/// Tags =
/// {
/// { "terraform", "true" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iot.NewBillingGroup(ctx, "example", &iot.BillingGroupArgs{
/// Name: pulumi.String("example"),
/// Properties: &iot.BillingGroupPropertiesArgs{
/// Description: pulumi.String("This is my billing group"),
/// },
/// Tags: pulumi.StringMap{
/// "terraform": pulumi.String("true"),
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
/// import com.pulumi.aws.iot.BillingGroup;
/// import com.pulumi.aws.iot.BillingGroupArgs;
/// import com.pulumi.aws.iot.inputs.BillingGroupPropertiesArgs;
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
/// var example = new BillingGroup("example", BillingGroupArgs.builder()
/// .name("example")
/// .properties(BillingGroupPropertiesArgs.builder()
/// .description("This is my billing group")
/// .build())
/// .tags(Map.of("terraform", "true"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iot:BillingGroup
/// properties:
/// name: example
/// properties:
/// description: This is my billing group
/// tags:
/// terraform: 'true'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IoT Billing Groups using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/billingGroup:BillingGroup example example
/// ```
class BillingGroup extends CustomResource {
  /// The ARN of the Billing Group.
  late final Output<String> arn;
  late final Output<List<BillingGroupMetadata>> metadatas;

  /// The name of the Billing Group.
  late final Output<String> name;

  /// The Billing Group properties. Defined below.
  late final Output<BillingGroupProperties?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The current version of the Billing Group record in the registry.
  late final Output<int> version;

  BillingGroup(
    String name, {
    BillingGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/billingGroup:BillingGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.metadatas = registerOutput<List<BillingGroupMetadata>>('metadatas');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<BillingGroupProperties?>('properties');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
