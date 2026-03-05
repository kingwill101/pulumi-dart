import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_inheritance_properties_response.dart';
import 'tag_inheritance_setting_args.dart';

/// Tag Inheritance Setting definition.
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2022-10-05-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateSettingByScope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagInheritanceSetting = new AzureNative.CostManagement.TagInheritanceSetting("tagInheritanceSetting", new()
///     {
///         Kind = "taginheritance",
///         Properties = new AzureNative.CostManagement.Inputs.TagInheritancePropertiesArgs
///         {
///             PreferContainerTags = false,
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         Type = "taginheritance",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewTagInheritanceSetting(ctx, "tagInheritanceSetting", &costmanagement.TagInheritanceSettingArgs{
/// 			Kind: pulumi.String("taginheritance"),
/// 			Properties: &costmanagement.TagInheritancePropertiesArgs{
/// 				PreferContainerTags: pulumi.Bool(false),
/// 			},
/// 			Scope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			Type:  pulumi.String("taginheritance"),
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
/// import com.pulumi.azurenative.costmanagement.TagInheritanceSetting;
/// import com.pulumi.azurenative.costmanagement.TagInheritanceSettingArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.TagInheritancePropertiesArgs;
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
///         var tagInheritanceSetting = new TagInheritanceSetting("tagInheritanceSetting", TagInheritanceSettingArgs.builder()
///             .kind("taginheritance")
///             .properties(TagInheritancePropertiesArgs.builder()
///                 .preferContainerTags(false)
///                 .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
///             .type("taginheritance")
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
/// const tagInheritanceSetting = new azure_native.costmanagement.TagInheritanceSetting("tagInheritanceSetting", {
///     kind: "taginheritance",
///     properties: {
///         preferContainerTags: false,
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     type: "taginheritance",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_inheritance_setting = azure_native.costmanagement.TagInheritanceSetting("tagInheritanceSetting",
///     kind="taginheritance",
///     properties={
///         "prefer_container_tags": False,
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     type="taginheritance")
///
/// ```
///
/// ```yaml
/// resources:
///   tagInheritanceSetting:
///     type: azure-native:costmanagement:TagInheritanceSetting
///     properties:
///       kind: taginheritance
///       properties:
///         preferContainerTags: false
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
///       type: taginheritance
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
/// $ pulumi import azure-native:costmanagement:TagInheritanceSetting taginheritance /{scope}/providers/Microsoft.CostManagement/settings/{type}
/// ```
class TagInheritanceSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Specifies the kind of settings.
  /// Expected value is 'taginheritance'.
  late final pulumi.Output<String> kind;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The properties of the tag inheritance setting.
  late final pulumi.Output<TagInheritancePropertiesResponse> properties;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TagInheritanceSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagInheritanceSetting]. {@macro pulumi_costmanagement_tag_inheritance_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagInheritanceSetting(
    String name, {
    TagInheritanceSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:costmanagement:TagInheritanceSetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<TagInheritancePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TagInheritancePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
