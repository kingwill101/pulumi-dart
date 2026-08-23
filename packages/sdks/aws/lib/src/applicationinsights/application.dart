import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_state.dart';

/// Provides a ApplicationInsights Application resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGroup = new aws.resourcegroups.Group("example", {
///     name: "example",
///     resourceQuery: {
///         query: JSON.stringify({
///             ResourceTypeFilters: ["AWS::EC2::Instance"],
///             TagFilters: [{
///                 Key: "Stage",
///                 Values: ["Test"],
///             }],
///         }),
///     },
/// });
/// const example = new aws.applicationinsights.Application("example", {resourceGroupName: exampleGroup.name});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_group = aws.resourcegroups.Group("example",
///     name="example",
///     resource_query={
///         "query": json.dumps({
///             "ResourceTypeFilters": ["AWS::EC2::Instance"],
///             "TagFilters": [{
///                 "Key": "Stage",
///                 "Values": ["Test"],
///             }],
///         }),
///     })
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
///     var exampleGroup = new Aws.ResourceGroups.Group("example", new()
///     {
///         Name = "example",
///         ResourceQuery = new Aws.ResourceGroups.Inputs.GroupResourceQueryArgs
///         {
///             Query = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["ResourceTypeFilters"] = new[]
///                 {
///                     "AWS::EC2::Instance",
///                 },
///                 ["TagFilters"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["Key"] = "Stage",
///                         ["Values"] = new[]
///                         {
///                             "Test",
///                         },
///                     },
///                 },
///             }),
///         },
///     });
///
///     var example = new Aws.ApplicationInsights.Application("example", new()
///     {
///         ResourceGroupName = exampleGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/applicationinsights"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroups"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"ResourceTypeFilters": []string{
/// 				"AWS::EC2::Instance",
/// 			},
/// 			"TagFilters": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Key": "Stage",
/// 					"Values": []string{
/// 						"Test",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleGroup, err := resourcegroups.NewGroup(ctx, "example", &resourcegroups.GroupArgs{
/// 			Name: pulumi.String("example"),
/// 			ResourceQuery: &resourcegroups.GroupResourceQueryArgs{
/// 				Query: pulumi.String(json0),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = applicationinsights.NewApplication(ctx, "example", &applicationinsights.ApplicationArgs{
/// 			ResourceGroupName: exampleGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_applicationinsights_application" "example" {
///   resource_group_name = aws_resourcegroups_group.example.name
/// }
/// resource "aws_resourcegroups_group" "example" {
///   name = "example"
///   resource_query = {
///     query = jsonencode({
///       "ResourceTypeFilters" = ["AWS::EC2::Instance"]
///       "TagFilters" = [{
///         "Key"    = "Stage"
///         "Values" = ["Test"]
///       }]
///     })
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .name("example")
///             .resourceQuery(GroupResourceQueryArgs.builder()
///                 .query(serializeJson(
///                     jsonObject(
///                         jsonProperty("ResourceTypeFilters", jsonArray("AWS::EC2::Instance")),
///                         jsonProperty("TagFilters", jsonArray(jsonObject(
///                             jsonProperty("Key", "Stage"),
///                             jsonProperty("Values", jsonArray("Test"))
///                         )))
///                     )))
///                 .build())
///             .build());
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .resourceGroupName(exampleGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:applicationinsights:Application
///     properties:
///       resourceGroupName: ${exampleGroup.name}
///   exampleGroup:
///     type: aws:resourcegroups:Group
///     name: example
///     properties:
///       name: example
///       resourceQuery:
///         query:
///           fn::toJSON:
///             ResourceTypeFilters:
///               - AWS::EC2::Instance
///             TagFilters:
///               - Key: Stage
///                 Values:
///                   - Test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ApplicationInsights Applications using the `resourceGroupName`. For example:
///
/// ```sh
/// $ pulumi import aws:applicationinsights/application:Application some some-application
/// ```
class Application extends pulumi.CustomResource {
  /// ARN of the Application.
  late final pulumi.Output<String> arn;
  /// Whether to automatically configure unmonitored resources in the resource group.
  late final pulumi.Output<bool?> autoConfigEnabled;
  /// Configures all of the resources in the resource group by applying the recommended configurations.
  late final pulumi.Output<bool?> autoCreate;
  /// Whether to enable Application Insights to listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  late final pulumi.Output<bool?> cweMonitorEnabled;
  /// Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  late final pulumi.Output<String?> groupingType;
  /// When set to `true`, creates opsItems for any problems detected on an application.
  late final pulumi.Output<bool?> opsCenterEnabled;
  /// SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  late final pulumi.Output<String?> opsItemSnsTopicArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the resource group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceGroupName;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_applicationinsights_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:applicationinsights/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoConfigEnabled = registerOutput<bool?>('autoConfigEnabled');
    autoCreate = registerOutput<bool?>('autoCreate');
    cweMonitorEnabled = registerOutput<bool?>('cweMonitorEnabled');
    groupingType = registerOutput<String?>('groupingType');
    opsCenterEnabled = registerOutput<bool?>('opsCenterEnabled');
    opsItemSnsTopicArn = registerOutput<String?>('opsItemSnsTopicArn');
    region = registerOutput<String>('region');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:applicationinsights/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoConfigEnabled = registerOutput<bool?>('autoConfigEnabled');
    autoCreate = registerOutput<bool?>('autoCreate');
    cweMonitorEnabled = registerOutput<bool?>('cweMonitorEnabled');
    groupingType = registerOutput<String?>('groupingType');
    opsCenterEnabled = registerOutput<bool?>('opsCenterEnabled');
    opsItemSnsTopicArn = registerOutput<String?>('opsItemSnsTopicArn');
    region = registerOutput<String>('region');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
