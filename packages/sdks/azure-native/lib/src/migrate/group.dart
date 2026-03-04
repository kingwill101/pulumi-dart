import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_properties_response.dart';

/// A group created in a Migration project.
///
/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Groups_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @group = new AzureNative.Migrate.Group("group", new()
///     {
///         ETag = "\"1e000c2c-0000-0d00-0000-5cdaa4190000\"",
///         GroupName = "Group2",
///         ProjectName = "abgoyalWEselfhostb72bproject",
///         Properties = null,
///         ResourceGroupName = "abgoyal-westEurope",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewGroup(ctx, "group", &migrate.GroupArgs{
/// 			ETag:              pulumi.String("\"1e000c2c-0000-0d00-0000-5cdaa4190000\""),
/// 			GroupName:         pulumi.String("Group2"),
/// 			ProjectName:       pulumi.String("abgoyalWEselfhostb72bproject"),
/// 			Properties:        &migrate.GroupPropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("abgoyal-westEurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.migrate.Group;
/// import com.pulumi.azurenative.migrate.GroupArgs;
/// import com.pulumi.azurenative.migrate.inputs.GroupPropertiesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var group = new Group("group", GroupArgs.builder()
///             .eTag("\"1e000c2c-0000-0d00-0000-5cdaa4190000\"")
///             .groupName("Group2")
///             .projectName("abgoyalWEselfhostb72bproject")
///             .properties(GroupPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("abgoyal-westEurope")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const group = new azure_native.migrate.Group("group", {
///     eTag: "\"1e000c2c-0000-0d00-0000-5cdaa4190000\"",
///     groupName: "Group2",
///     projectName: "abgoyalWEselfhostb72bproject",
///     properties: {},
///     resourceGroupName: "abgoyal-westEurope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// group = azure_native.migrate.Group("group",
///     e_tag="\"1e000c2c-0000-0d00-0000-5cdaa4190000\"",
///     group_name="Group2",
///     project_name="abgoyalWEselfhostb72bproject",
///     properties={},
///     resource_group_name="abgoyal-westEurope")
///
/// ```
///
/// ```yaml
/// resources:
///   group:
///     type: azure-native:migrate:Group
///     properties:
///       eTag: '"1e000c2c-0000-0d00-0000-5cdaa4190000"'
///       groupName: Group2
///       projectName: abgoyalWEselfhostb72bproject
///       properties: {}
///       resourceGroupName: abgoyal-westEurope
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:migrate:Group Group2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}
/// ```
class Group extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// For optimistic concurrency control.
  late final pulumi.Output<String?> eTag;

  /// Name of the group.
  late final pulumi.Output<String> name;

  /// Properties of the group.
  late final pulumi.Output<GroupPropertiesResponse> properties;

  /// Type of the object = [Microsoft.Migrate/assessmentProjects/groups].
  late final pulumi.Output<String> type;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_migrate_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(String name, {GroupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:migrate:Group',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GroupPropertiesResponse>('properties');
    type = registerOutput<String>('type');
  }
}
