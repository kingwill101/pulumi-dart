import 'package:pulumi/pulumi.dart';
import '../group_insights_configuration/group_insights_configuration.dart';
import 'group_args8.dart';

/// Creates and manages an AWS XRay Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.xray.Group("example", {
/// groupName: "example",
/// filterExpression: "responsetime > 5",
/// insightsConfiguration: {
/// insightsEnabled: true,
/// notificationsEnabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.xray.Group("example",
/// group_name="example",
/// filter_expression="responsetime > 5",
/// insights_configuration={
/// "insights_enabled": True,
/// "notifications_enabled": True,
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
/// var example = new Aws.Xray.Group("example", new()
/// {
/// GroupName = "example",
/// FilterExpression = "responsetime > 5",
/// InsightsConfiguration = new Aws.Xray.Inputs.GroupInsightsConfigurationArgs
/// {
/// InsightsEnabled = true,
/// NotificationsEnabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := xray.NewGroup(ctx, "example", &xray.GroupArgs{
/// GroupName:        pulumi.String("example"),
/// FilterExpression: pulumi.String("responsetime > 5"),
/// InsightsConfiguration: &xray.GroupInsightsConfigurationArgs{
/// InsightsEnabled:      pulumi.Bool(true),
/// NotificationsEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.xray.Group;
/// import com.pulumi.aws.xray.GroupArgs;
/// import com.pulumi.aws.xray.inputs.GroupInsightsConfigurationArgs;
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
/// var example = new Group("example", GroupArgs.builder()
/// .groupName("example")
/// .filterExpression("responsetime > 5")
/// .insightsConfiguration(GroupInsightsConfigurationArgs.builder()
/// .insightsEnabled(true)
/// .notificationsEnabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:xray:Group
/// properties:
/// groupName: example
/// filterExpression: responsetime > 5
/// insightsConfiguration:
/// insightsEnabled: true
/// notificationsEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the X-Ray group.
///
///
/// Using `pulumi import`, import XRay Groups using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:xray/group:Group example arn:aws:xray:us-west-2:1234567890:group/example-group/TNGX7SW5U6QY36T4ZMOUA3HVLBYCZTWDIOOXY3CJAXTHSS3YCWUA
/// ```
class Group8 extends CustomResource {
  /// The ARN of the Group.
  late final Output<String> arn;

  /// The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  late final Output<String> filterExpression;

  /// The name of the group.
  late final Output<String> groupName;

  /// Configuration options for enabling insights.
  late final Output<GroupInsightsConfiguration> insightsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Group8(
    String name, {
    GroupArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:xray/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.filterExpression = registerOutput<String>('filterExpression');
    this.groupName = registerOutput<String>('groupName');
    this.insightsConfiguration =
        registerOutput<GroupInsightsConfiguration>('insightsConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
