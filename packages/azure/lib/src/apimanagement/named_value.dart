import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_value_args.dart';
import 'named_value_value_from_key_vault.dart';

/// Manages an API Management Named Value.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Developer_1",
/// });
/// const exampleNamedValue = new azure.apimanagement.NamedValue("example", {
///     name: "example-apimg",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     displayName: "ExampleProperty",
///     value: "Example Value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Developer_1")
/// example_named_value = azure.apimanagement.NamedValue("example",
///     name="example-apimg",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     display_name="ExampleProperty",
///     value="Example Value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Developer_1",
///     });
///
///     var exampleNamedValue = new Azure.ApiManagement.NamedValue("example", new()
///     {
///         Name = "example-apimg",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         DisplayName = "ExampleProperty",
///         Value = "Example Value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewNamedValue(ctx, "example", &apimanagement.NamedValueArgs{
/// 			Name:              pulumi.String("example-apimg"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			DisplayName:       pulumi.String("ExampleProperty"),
/// 			Value:             pulumi.String("Example Value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.NamedValue;
/// import com.pulumi.azure.apimanagement.NamedValueArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleNamedValue = new NamedValue("exampleNamedValue", NamedValueArgs.builder()
///             .name("example-apimg")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .displayName("ExampleProperty")
///             .value("Example Value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Developer_1
///   exampleNamedValue:
///     type: azure:apimanagement:NamedValue
///     name: example
///     properties:
///       name: example-apimg
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       displayName: ExampleProperty
///       value: Example Value
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Properties can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/namedValue:NamedValue example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.ApiManagement/service/example-apim/namedValues/example-apimp
/// ```
class NamedValue extends pulumi.CustomResource {
  /// The name of the API Management Service in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The display name of this API Management Named Value.
  late final pulumi.Output<String> displayName;
  /// The name of the API Management Named Value. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`.
  ///
  /// > **NOTE:** setting the field `secret` to `true` doesn't make this field sensitive in the provider, instead it marks the value as secret and encrypts the value in Azure.
  late final pulumi.Output<bool?> secret;
  /// A list of tags to be applied to the API Management Named Value.
  late final pulumi.Output<List<String>?> tags;
  /// The value of this API Management Named Value.
  late final pulumi.Output<String?> value;
  /// A `value_from_key_vault` block as defined below. If specified, `secret` must also be set to `true`.
  late final pulumi.Output<NamedValueValueFromKeyVault?> valueFromKeyVault;

  /// Creates a new [NamedValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamedValue]. {@macro pulumi_apimanagement_named_value_named_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamedValue(
    String name, {
    NamedValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/namedValue:NamedValue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secret = registerOutput<bool?>('secret');
    this.tags = registerOutput<List<String>?>('tags');
    this.value = registerOutput<String?>('value');
    this.valueFromKeyVault = registerOutput<NamedValueValueFromKeyVault?>('valueFromKeyVault');
  }
}
