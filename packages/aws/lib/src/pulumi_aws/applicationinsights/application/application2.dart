import 'package:pulumi/pulumi.dart';
import 'application_args2.dart';

/// Provides a ApplicationInsights Application resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGroup = new aws.resourcegroups.Group("example", {
/// name: "example",
/// resourceQuery: {
/// query: JSON.stringify({
/// ResourceTypeFilters: ["AWS::EC2::Instance"],
/// TagFilters: [{
/// Key: "Stage",
/// Values: ["Test"],
/// }],
/// }),
/// },
/// });
/// const example = new aws.applicationinsights.Application("example", {resourceGroupName: exampleGroup.name});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_group = aws.resourcegroups.Group("example",
/// name="example",
/// resource_query={
/// "query": json.dumps({
/// "ResourceTypeFilters": ["AWS::EC2::Instance"],
/// "TagFilters": [{
/// "Key": "Stage",
/// "Values": ["Test"],
/// }],
/// }),
/// })
/// example = aws.applicationinsights.Application("example", resource_group_name=example_group.name)
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
/// var exampleGroup = new Aws.ResourceGroups.Group("example", new()
/// {
/// Name = "example",
/// ResourceQuery = new Aws.ResourceGroups.Inputs.GroupResourceQueryArgs
/// {
/// Query = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["ResourceTypeFilters"] = new[]
/// {
/// "AWS::EC2::Instance",
/// },
/// ["TagFilters"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Key"] = "Stage",
/// ["Values"] = new[]
/// {
/// "Test",
/// },
/// },
/// },
/// }),
/// },
/// });
///
/// var example = new Aws.ApplicationInsights.Application("example", new()
/// {
/// ResourceGroupName = exampleGroup.Name,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/applicationinsights"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroups"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "ResourceTypeFilters": []string{
/// "AWS::EC2::Instance",
/// },
/// "TagFilters": []map[string]interface{}{
/// map[string]interface{}{
/// "Key": "Stage",
/// "Values": []string{
/// "Test",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleGroup, err := resourcegroups.NewGroup(ctx, "example", &resourcegroups.GroupArgs{
/// Name: pulumi.String("example"),
/// ResourceQuery: &resourcegroups.GroupResourceQueryArgs{
/// Query: pulumi.String(json0),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = applicationinsights.NewApplication(ctx, "example", &applicationinsights.ApplicationArgs{
/// ResourceGroupName: exampleGroup.Name,
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
/// import com.pulumi.aws.resourcegroups.Group;
/// import com.pulumi.aws.resourcegroups.GroupArgs;
/// import com.pulumi.aws.resourcegroups.inputs.GroupResourceQueryArgs;
/// import com.pulumi.aws.applicationinsights.Application;
/// import com.pulumi.aws.applicationinsights.ApplicationArgs;
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
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .name("example")
/// .resourceQuery(GroupResourceQueryArgs.builder()
/// .query(serializeJson(
/// jsonObject(
/// jsonProperty("ResourceTypeFilters", jsonArray("AWS::EC2::Instance")),
/// jsonProperty("TagFilters", jsonArray(jsonObject(
/// jsonProperty("Key", "Stage"),
/// jsonProperty("Values", jsonArray("Test"))
/// )))
/// )))
/// .build())
/// .build());
///
/// var example = new Application("example", ApplicationArgs.builder()
/// .resourceGroupName(exampleGroup.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:applicationinsights:Application
/// properties:
/// resourceGroupName: ${exampleGroup.name}
/// exampleGroup:
/// type: aws:resourcegroups:Group
/// name: example
/// properties:
/// name: example
/// resourceQuery:
/// query:
/// fn::toJSON:
/// ResourceTypeFilters:
/// - AWS::EC2::Instance
/// TagFilters:
/// - Key: Stage
/// Values:
/// - Test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ApplicationInsights Applications using the <span pulumi-lang-nodejs="`resourceGroupName`" pulumi-lang-dotnet="`ResourceGroupName`" pulumi-lang-go="`resourceGroupName`" pulumi-lang-python="`resource_group_name`" pulumi-lang-yaml="`resourceGroupName`" pulumi-lang-java="`resourceGroupName`">`resource_group_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:applicationinsights/application:Application some some-application
/// ```
class Application2 extends CustomResource {
  /// ARN of the Application.
  late final Output<String> arn;

  /// Indicates whether Application Insights automatically configures unmonitored resources in the resource group.
  late final Output<bool?> autoConfigEnabled;

  /// Configures all of the resources in the resource group by applying the recommended configurations.
  late final Output<bool?> autoCreate;

  /// Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  late final Output<bool?> cweMonitorEnabled;

  /// Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  late final Output<String?> groupingType;

  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, creates opsItems for any problems detected on an application.
  late final Output<bool?> opsCenterEnabled;

  /// SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  late final Output<String?> opsItemSnsTopicArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the resource group.
  ///
  /// The following arguments are optional:
  late final Output<String> resourceGroupName;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Application2(
    String name, {
    ApplicationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:applicationinsights/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoConfigEnabled = registerOutput<bool?>('autoConfigEnabled');
    this.autoCreate = registerOutput<bool?>('autoCreate');
    this.cweMonitorEnabled = registerOutput<bool?>('cweMonitorEnabled');
    this.groupingType = registerOutput<String?>('groupingType');
    this.opsCenterEnabled = registerOutput<bool?>('opsCenterEnabled');
    this.opsItemSnsTopicArn = registerOutput<String?>('opsItemSnsTopicArn');
    this.region = registerOutput<String>('region');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
