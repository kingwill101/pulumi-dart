import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_uuid4_args.dart';

/// The resource `random.RandomUuid4` generates a random version 4 uuid string that is intended to be used as a unique identifier for other resources.
///
/// This resource uses [google/uuid](https://github.com/google/uuid) to generate a valid V4 UUID for use with services needing a unique string identifier.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azurerm from "@pulumi/azurerm";
/// import * as random from "@pulumi/random";
///
/// // The following example shows how to generate a unique name for an Azure Resource Group.
/// const test = new random.RandomUuid4("test", {});
/// const testResourceGroup = new azurerm.index.ResourceGroup("test", {
///     name: `${test.result}-rg`,
///     location: "Central US",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azurerm as azurerm
/// import pulumi_random as random
///
/// # The following example shows how to generate a unique name for an Azure Resource Group.
/// test = random.RandomUuid4("test")
/// test_resource_group = azurerm.index.ResourceGroup("test",
///     name=f{test.result}-rg,
///     location=Central US)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azurerm = Pulumi.Azurerm;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // The following example shows how to generate a unique name for an Azure Resource Group.
///     var test = new Random.RandomUuid4("test");
///
///     var testResourceGroup = new Azurerm.Index.ResourceGroup("test", new()
///     {
///         Name = $"{test.Result}-rg",
///         Location = "Central US",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// The following example shows how to generate a unique name for an Azure Resource Group.
/// 		test, err := random.NewRandomUuid4(ctx, "test", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azurerm.NewResourceGroup(ctx, "test", &azurerm.ResourceGroupArgs{
/// 			Name:     pulumi.Sprintf("%v-rg", test.Result),
/// 			Location: "Central US",
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
/// import com.pulumi.random.RandomUuid4;
/// import com.pulumi.azurerm.ResourceGroup;
/// import com.pulumi.azurerm.ResourceGroupArgs;
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
///         // The following example shows how to generate a unique name for an Azure Resource Group.
///         var test = new RandomUuid4("test");
///
///         var testResourceGroup = new ResourceGroup("testResourceGroup", ResourceGroupArgs.builder()
///             .name(String.format("%s-rg", test.result()))
///             .location("Central US")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # The following example shows how to generate a unique name for an Azure Resource Group.
///   test:
///     type: random:RandomUuid4
///   testResourceGroup:
///     type: azurerm:ResourceGroup
///     name: test
///     properties:
///       name: ${test.result}-rg
///       location: Central US
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// Random UUID's can be imported. This can be used to replace a config
///
/// value with a value interpolated from the random provider without
///
/// experiencing diffs.
///
/// ```sh
/// $ pulumi import random:index/randomUuid4:RandomUuid4 main 7e4436da-7c71-486e-a57c-830b25fff7bd
/// ```
class RandomUuid4 extends pulumi.CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;

  /// The generated uuid presented in string format.
  late final pulumi.Output<String> result;

  /// Creates a new [RandomUuid4].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RandomUuid4]. {@macro pulumi_index_random_uuid4_random_uuid4_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RandomUuid4(
    String name, {
    RandomUuid4Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomUuid4:RandomUuid4',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.result = registerOutput<String>('result');
  }
}
