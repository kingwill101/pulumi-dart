import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_uicustomization_args.dart';
import 'user_pool_uicustomization_state.dart';

/// Provides a Cognito User Pool UI Customization resource.
///
/// > **Note:** To use this resource, the user pool must have a domain associated with it. For more information, see the Amazon Cognito Developer Guide on [Customizing the Built-in Sign-In and Sign-up Webpages](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-app-ui-customization.html).
///
/// ## Example Usage
///
/// ### UI customization settings for a single client
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleUserPoolDomain = new aws.cognito.UserPoolDomain("example", {
///     domain: "example",
///     userPoolId: example.id,
/// });
/// const exampleUserPoolClient = new aws.cognito.UserPoolClient("example", {
///     name: "example",
///     userPoolId: example.id,
/// });
/// const exampleUserPoolUICustomization = new aws.cognito.UserPoolUICustomization("example", {
///     clientId: exampleUserPoolClient.id,
///     css: ".label-customizable {font-weight: 400;}",
///     imageFile: std.filebase64({
///         input: "logo.png",
///     }).then(invoke => invoke.result),
///     userPoolId: exampleUserPoolDomain.userPoolId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.cognito.UserPool("example", name="example")
/// example_user_pool_domain = aws.cognito.UserPoolDomain("example",
///     domain="example",
///     user_pool_id=example.id)
/// example_user_pool_client = aws.cognito.UserPoolClient("example",
///     name="example",
///     user_pool_id=example.id)
/// example_user_pool_ui_customization = aws.cognito.UserPoolUICustomization("example",
///     client_id=example_user_pool_client.id,
///     css=".label-customizable {font-weight: 400;}",
///     image_file=std.filebase64(input="logo.png").result,
///     user_pool_id=example_user_pool_domain.user_pool_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleUserPoolDomain = new Aws.Cognito.UserPoolDomain("example", new()
///     {
///         Domain = "example",
///         UserPoolId = example.Id,
///     });
///
///     var exampleUserPoolClient = new Aws.Cognito.UserPoolClient("example", new()
///     {
///         Name = "example",
///         UserPoolId = example.Id,
///     });
///
///     var exampleUserPoolUICustomization = new Aws.Cognito.UserPoolUICustomization("example", new()
///     {
///         ClientId = exampleUserPoolClient.Id,
///         Css = ".label-customizable {font-weight: 400;}",
///         ImageFile = Std.Filebase64.Invoke(new()
///         {
///             Input = "logo.png",
///         }).Apply(invoke => invoke.Result),
///         UserPoolId = exampleUserPoolDomain.UserPoolId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPoolDomain, err := cognito.NewUserPoolDomain(ctx, "example", &cognito.UserPoolDomainArgs{
/// 			Domain:     pulumi.String("example"),
/// 			UserPoolId: example.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPoolClient, err := cognito.NewUserPoolClient(ctx, "example", &cognito.UserPoolClientArgs{
/// 			Name:       pulumi.String("example"),
/// 			UserPoolId: example.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "logo.png",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolUICustomization(ctx, "example", &cognito.UserPoolUICustomizationArgs{
/// 			ClientId:   exampleUserPoolClient.ID(),
/// 			Css:        pulumi.String(".label-customizable {font-weight: 400;}"),
/// 			ImageFile:  pulumi.String(invokeFilebase64.Result),
/// 			UserPoolId: exampleUserPoolDomain.UserPoolId,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.UserPoolDomain;
/// import com.pulumi.aws.cognito.UserPoolDomainArgs;
/// import com.pulumi.aws.cognito.UserPoolClient;
/// import com.pulumi.aws.cognito.UserPoolClientArgs;
/// import com.pulumi.aws.cognito.UserPoolUICustomization;
/// import com.pulumi.aws.cognito.UserPoolUICustomizationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleUserPoolDomain = new UserPoolDomain("exampleUserPoolDomain", UserPoolDomainArgs.builder()
///             .domain("example")
///             .userPoolId(example.id())
///             .build());
///
///         var exampleUserPoolClient = new UserPoolClient("exampleUserPoolClient", UserPoolClientArgs.builder()
///             .name("example")
///             .userPoolId(example.id())
///             .build());
///
///         var exampleUserPoolUICustomization = new UserPoolUICustomization("exampleUserPoolUICustomization", UserPoolUICustomizationArgs.builder()
///             .clientId(exampleUserPoolClient.id())
///             .css(".label-customizable {font-weight: 400;}")
///             .imageFile(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("logo.png")
///                 .build()).result())
///             .userPoolId(exampleUserPoolDomain.userPoolId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example
///   exampleUserPoolDomain:
///     type: aws:cognito:UserPoolDomain
///     name: example
///     properties:
///       domain: example
///       userPoolId: ${example.id}
///   exampleUserPoolClient:
///     type: aws:cognito:UserPoolClient
///     name: example
///     properties:
///       name: example
///       userPoolId: ${example.id}
///   exampleUserPoolUICustomization:
///     type: aws:cognito:UserPoolUICustomization
///     name: example
///     properties:
///       clientId: ${exampleUserPoolClient.id}
///       css: '.label-customizable {font-weight: 400;}'
///       imageFile:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: logo.png
///           return: result
///       userPoolId: ${exampleUserPoolDomain.userPoolId}
/// ```
///
///
/// ### UI customization settings for all clients
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleUserPoolDomain = new aws.cognito.UserPoolDomain("example", {
///     domain: "example",
///     userPoolId: example.id,
/// });
/// const exampleUserPoolUICustomization = new aws.cognito.UserPoolUICustomization("example", {
///     css: ".label-customizable {font-weight: 400;}",
///     imageFile: std.filebase64({
///         input: "logo.png",
///     }).then(invoke => invoke.result),
///     userPoolId: exampleUserPoolDomain.userPoolId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.cognito.UserPool("example", name="example")
/// example_user_pool_domain = aws.cognito.UserPoolDomain("example",
///     domain="example",
///     user_pool_id=example.id)
/// example_user_pool_ui_customization = aws.cognito.UserPoolUICustomization("example",
///     css=".label-customizable {font-weight: 400;}",
///     image_file=std.filebase64(input="logo.png").result,
///     user_pool_id=example_user_pool_domain.user_pool_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleUserPoolDomain = new Aws.Cognito.UserPoolDomain("example", new()
///     {
///         Domain = "example",
///         UserPoolId = example.Id,
///     });
///
///     var exampleUserPoolUICustomization = new Aws.Cognito.UserPoolUICustomization("example", new()
///     {
///         Css = ".label-customizable {font-weight: 400;}",
///         ImageFile = Std.Filebase64.Invoke(new()
///         {
///             Input = "logo.png",
///         }).Apply(invoke => invoke.Result),
///         UserPoolId = exampleUserPoolDomain.UserPoolId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPoolDomain, err := cognito.NewUserPoolDomain(ctx, "example", &cognito.UserPoolDomainArgs{
/// 			Domain:     pulumi.String("example"),
/// 			UserPoolId: example.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "logo.png",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolUICustomization(ctx, "example", &cognito.UserPoolUICustomizationArgs{
/// 			Css:        pulumi.String(".label-customizable {font-weight: 400;}"),
/// 			ImageFile:  pulumi.String(invokeFilebase64.Result),
/// 			UserPoolId: exampleUserPoolDomain.UserPoolId,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.UserPoolDomain;
/// import com.pulumi.aws.cognito.UserPoolDomainArgs;
/// import com.pulumi.aws.cognito.UserPoolUICustomization;
/// import com.pulumi.aws.cognito.UserPoolUICustomizationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleUserPoolDomain = new UserPoolDomain("exampleUserPoolDomain", UserPoolDomainArgs.builder()
///             .domain("example")
///             .userPoolId(example.id())
///             .build());
///
///         var exampleUserPoolUICustomization = new UserPoolUICustomization("exampleUserPoolUICustomization", UserPoolUICustomizationArgs.builder()
///             .css(".label-customizable {font-weight: 400;}")
///             .imageFile(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("logo.png")
///                 .build()).result())
///             .userPoolId(exampleUserPoolDomain.userPoolId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example
///   exampleUserPoolDomain:
///     type: aws:cognito:UserPoolDomain
///     name: example
///     properties:
///       domain: example
///       userPoolId: ${example.id}
///   exampleUserPoolUICustomization:
///     type: aws:cognito:UserPoolUICustomization
///     name: example
///     properties:
///       css: '.label-customizable {font-weight: 400;}'
///       imageFile:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: logo.png
///           return: result
///       userPoolId: ${exampleUserPoolDomain.userPoolId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool UI Customizations using the `user_pool_id` and `client_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPoolUICustomization:UserPoolUICustomization example us-west-2_ZCTarbt5C,12bu4fuk3mlgqa2rtrujgp6egq
/// ```
class UserPoolUICustomization extends pulumi.CustomResource {
  /// The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `image_file` settings will be used for every client that has no UI customization set previously.
  late final pulumi.Output<String?> clientId;
  /// The creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  late final pulumi.Output<String> creationDate;
  /// The CSS values in the UI customization, provided as a String. At least one of `css` or `image_file` is required.
  late final pulumi.Output<String?> css;
  /// The CSS version number.
  late final pulumi.Output<String> cssVersion;
  /// The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `image_file` is required.
  late final pulumi.Output<String?> imageFile;
  /// The logo image URL for the UI customization.
  late final pulumi.Output<String> imageUrl;
  /// The last-modified date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  late final pulumi.Output<String> lastModifiedDate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The user pool ID for the user pool.
  late final pulumi.Output<String> userPoolId;

  /// Creates a new [UserPoolUICustomization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPoolUICustomization]. {@macro pulumi_cognito_user_pool_uicustomization_user_pool_uicustomization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPoolUICustomization(
    String name, {
    UserPoolUICustomizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPoolUICustomization:UserPoolUICustomization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String?>('clientId');
    this.creationDate = registerOutput<String>('creationDate');
    this.css = registerOutput<String?>('css');
    this.cssVersion = registerOutput<String>('cssVersion');
    this.imageFile = registerOutput<String?>('imageFile');
    this.imageUrl = registerOutput<String>('imageUrl');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
  }

  /// Gets an existing [UserPoolUICustomization] resource's state with the given [name] and [id].
  static UserPoolUICustomization get(
    String name,
    pulumi.Input<String> id, {
    UserPoolUICustomizationState? state,
  }) {
    return UserPoolUICustomization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserPoolUICustomization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPoolUICustomization:UserPoolUICustomization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String?>('clientId');
    this.creationDate = registerOutput<String>('creationDate');
    this.css = registerOutput<String?>('css');
    this.cssVersion = registerOutput<String>('cssVersion');
    this.imageFile = registerOutput<String?>('imageFile');
    this.imageUrl = registerOutput<String>('imageUrl');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
