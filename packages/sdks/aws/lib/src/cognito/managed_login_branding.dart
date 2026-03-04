import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_login_branding_args.dart';
import 'managed_login_branding_state.dart';

/// Manages branding settings for a user pool style and associates it with an app client.
///
/// ## Example Usage
///
/// ### Default Branding Style
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const client = new aws.cognito.ManagedLoginBranding("client", {
///     clientId: example.id,
///     userPoolId: exampleAwsCognitoUserPool.id,
///     useCognitoProvidedValues: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// client = aws.cognito.ManagedLoginBranding("client",
///     client_id=example["id"],
///     user_pool_id=example_aws_cognito_user_pool["id"],
///     use_cognito_provided_values=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var client = new Aws.Cognito.ManagedLoginBranding("client", new()
///     {
///         ClientId = example.Id,
///         UserPoolId = exampleAwsCognitoUserPool.Id,
///         UseCognitoProvidedValues = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.NewManagedLoginBranding(ctx, "client", &cognito.ManagedLoginBrandingArgs{
/// 			ClientId:                 pulumi.Any(example.Id),
/// 			UserPoolId:               pulumi.Any(exampleAwsCognitoUserPool.Id),
/// 			UseCognitoProvidedValues: pulumi.Bool(true),
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
/// import com.pulumi.aws.cognito.ManagedLoginBranding;
/// import com.pulumi.aws.cognito.ManagedLoginBrandingArgs;
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
///         var client = new ManagedLoginBranding("client", ManagedLoginBrandingArgs.builder()
///             .clientId(example.id())
///             .userPoolId(exampleAwsCognitoUserPool.id())
///             .useCognitoProvidedValues(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   client:
///     type: aws:cognito:ManagedLoginBranding
///     properties:
///       clientId: ${example.id}
///       userPoolId: ${exampleAwsCognitoUserPool.id}
///       useCognitoProvidedValues: true
/// ```
///
///
/// ### Custom Branding Style
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const client = new aws.cognito.ManagedLoginBranding("client", {
///     clientId: example.id,
///     userPoolId: exampleAwsCognitoUserPool.id,
///     assets: [{
///         bytes: std.filebase64({
///             input: "login_branding_asset.svg",
///         }).then(invoke => invoke.result),
///         category: "PAGE_HEADER_BACKGROUND",
///         colorMode: "DARK",
///         extension: "SVG",
///     }],
///     settings: JSON.stringify({}),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// client = aws.cognito.ManagedLoginBranding("client",
///     client_id=example["id"],
///     user_pool_id=example_aws_cognito_user_pool["id"],
///     assets=[{
///         "bytes": std.filebase64(input="login_branding_asset.svg").result,
///         "category": "PAGE_HEADER_BACKGROUND",
///         "color_mode": "DARK",
///         "extension": "SVG",
///     }],
///     settings=json.dumps({}))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var client = new Aws.Cognito.ManagedLoginBranding("client", new()
///     {
///         ClientId = example.Id,
///         UserPoolId = exampleAwsCognitoUserPool.Id,
///         Assets = new[]
///         {
///             new Aws.Cognito.Inputs.ManagedLoginBrandingAssetArgs
///             {
///                 Bytes = Std.Filebase64.Invoke(new()
///                 {
///                     Input = "login_branding_asset.svg",
///                 }).Apply(invoke => invoke.Result),
///                 Category = "PAGE_HEADER_BACKGROUND",
///                 ColorMode = "DARK",
///                 Extension = "SVG",
///             },
///         },
///         Settings = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///         }),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "login_branding_asset.svg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cognito.NewManagedLoginBranding(ctx, "client", &cognito.ManagedLoginBrandingArgs{
/// 			ClientId:   pulumi.Any(example.Id),
/// 			UserPoolId: pulumi.Any(exampleAwsCognitoUserPool.Id),
/// 			Assets: cognito.ManagedLoginBrandingAssetArray{
/// 				&cognito.ManagedLoginBrandingAssetArgs{
/// 					Bytes:     pulumi.String(invokeFilebase64.Result),
/// 					Category:  pulumi.String("PAGE_HEADER_BACKGROUND"),
/// 					ColorMode: pulumi.String("DARK"),
/// 					Extension: pulumi.String("SVG"),
/// 				},
/// 			},
/// 			Settings: pulumi.String(json0),
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
/// import com.pulumi.aws.cognito.ManagedLoginBranding;
/// import com.pulumi.aws.cognito.ManagedLoginBrandingArgs;
/// import com.pulumi.aws.cognito.inputs.ManagedLoginBrandingAssetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var client = new ManagedLoginBranding("client", ManagedLoginBrandingArgs.builder()
///             .clientId(example.id())
///             .userPoolId(exampleAwsCognitoUserPool.id())
///             .assets(ManagedLoginBrandingAssetArgs.builder()
///                 .bytes(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input("login_branding_asset.svg")
///                     .build()).result())
///                 .category("PAGE_HEADER_BACKGROUND")
///                 .colorMode("DARK")
///                 .extension("SVG")
///                 .build())
///             .settings(serializeJson(
///                 jsonObject(
///
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   client:
///     type: aws:cognito:ManagedLoginBranding
///     properties:
///       clientId: ${example.id}
///       userPoolId: ${exampleAwsCognitoUserPool.id}
///       assets:
///         - bytes:
///             fn::invoke:
///               function: std:filebase64
///               arguments:
///                 input: login_branding_asset.svg
///               return: result
///           category: PAGE_HEADER_BACKGROUND
///           colorMode: DARK
///           extension: SVG
///       settings:
///         fn::toJSON: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito branding settings using `user_pool_id` and `managed_login_branding_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/managedLoginBranding:ManagedLoginBranding example us-west-2_rSss9Zltr,06c6ae7b-1e66-46d2-87a9-1203ea3307bd
/// ```
class ManagedLoginBranding extends pulumi.CustomResource {
  /// Image files to apply to roles like backgrounds, logos, and icons. See details below.
  late final pulumi.Output<List<Map<String, dynamic>>?> assets;

  /// App client that the branding style is for.
  late final pulumi.Output<String> clientId;

  /// ID of the managed login branding style.
  late final pulumi.Output<String> managedLoginBrandingId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// JSON document with the the settings to apply to the style.
  late final pulumi.Output<String?> settings;

  /// Settings including Amazon Cognito defaults.
  late final pulumi.Output<String> settingsAll;

  /// When `true`, applies the default branding style options.
  late final pulumi.Output<bool> useCognitoProvidedValues;

  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userPoolId;

  /// Creates a new [ManagedLoginBranding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedLoginBranding]. {@macro pulumi_cognito_managed_login_branding_managed_login_branding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedLoginBranding(
    String name, {
    ManagedLoginBrandingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cognito/managedLoginBranding:ManagedLoginBranding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assets = registerOutput<List<Map<String, dynamic>>?>('assets');
    clientId = registerOutput<String>('clientId');
    managedLoginBrandingId = registerOutput<String>('managedLoginBrandingId');
    region = registerOutput<String>('region');
    settings = registerOutput<String?>('settings');
    settingsAll = registerOutput<String>('settingsAll');
    useCognitoProvidedValues = registerOutput<bool>('useCognitoProvidedValues');
    userPoolId = registerOutput<String>('userPoolId');
  }

  /// Gets an existing [ManagedLoginBranding] resource's state with the given [name] and [id].
  static ManagedLoginBranding get(
    String name,
    pulumi.Input<String> id, {
    ManagedLoginBrandingState? state,
  }) {
    return ManagedLoginBranding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedLoginBranding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cognito/managedLoginBranding:ManagedLoginBranding',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assets = registerOutput<List<Map<String, dynamic>>?>('assets');
    clientId = registerOutput<String>('clientId');
    managedLoginBrandingId = registerOutput<String>('managedLoginBrandingId');
    region = registerOutput<String>('region');
    settings = registerOutput<String?>('settings');
    settingsAll = registerOutput<String>('settingsAll');
    useCognitoProvidedValues = registerOutput<bool>('useCognitoProvidedValues');
    userPoolId = registerOutput<String>('userPoolId');
  }
}
