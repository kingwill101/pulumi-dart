import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_profile_args.dart';
import 'authentication_profile_state.dart';

/// Creates a Redshift authentication profile
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.AuthenticationProfile("example", {
///     authenticationProfileName: "example",
///     authenticationProfileContent: JSON.stringify({
///         AllowDBUserOverride: "1",
///         Client_ID: "ExampleClientID",
///         App_ID: "example",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.redshift.AuthenticationProfile("example",
///     authentication_profile_name="example",
///     authentication_profile_content=json.dumps({
///         "AllowDBUserOverride": "1",
///         "Client_ID": "ExampleClientID",
///         "App_ID": "example",
///     }))
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
///     var example = new Aws.RedShift.AuthenticationProfile("example", new()
///     {
///         AuthenticationProfileName = "example",
///         AuthenticationProfileContent = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["AllowDBUserOverride"] = "1",
///             ["Client_ID"] = "ExampleClientID",
///             ["App_ID"] = "example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"AllowDBUserOverride": "1",
/// 			"Client_ID":           "ExampleClientID",
/// 			"App_ID":              "example",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = redshift.NewAuthenticationProfile(ctx, "example", &redshift.AuthenticationProfileArgs{
/// 			AuthenticationProfileName:    pulumi.String("example"),
/// 			AuthenticationProfileContent: pulumi.String(json0),
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
/// resource "aws_redshift_authenticationprofile" "example" {
///   authentication_profile_name = "example"
///   authentication_profile_content = jsonencode({
///     "AllowDBUserOverride" = "1"
///     "Client_ID"           = "ExampleClientID"
///     "App_ID"              = "example"
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.AuthenticationProfile;
/// import com.pulumi.aws.redshift.AuthenticationProfileArgs;
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
///         var example = new AuthenticationProfile("example", AuthenticationProfileArgs.builder()
///             .authenticationProfileName("example")
///             .authenticationProfileContent(serializeJson(
///                 jsonObject(
///                     jsonProperty("AllowDBUserOverride", "1"),
///                     jsonProperty("Client_ID", "ExampleClientID"),
///                     jsonProperty("App_ID", "example")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:AuthenticationProfile
///     properties:
///       authenticationProfileName: example
///       authenticationProfileContent:
///         fn::toJSON:
///           AllowDBUserOverride: '1'
///           Client_ID: ExampleClientID
///           App_ID: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Authentication by `authenticationProfileName`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/authenticationProfile:AuthenticationProfile test example
/// ```
class AuthenticationProfile extends pulumi.CustomResource {
  /// The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
  late final pulumi.Output<String> authenticationProfileContent;
  /// The name of the authentication profile.
  late final pulumi.Output<String> authenticationProfileName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AuthenticationProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticationProfile]. {@macro pulumi_redshift_authentication_profile_authentication_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticationProfile(
    String name, {
    AuthenticationProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/authenticationProfile:AuthenticationProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationProfileContent = registerOutput<String>('authenticationProfileContent');
    authenticationProfileName = registerOutput<String>('authenticationProfileName');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AuthenticationProfile] resource's state with the given [name] and [id].
  static AuthenticationProfile get(
    String name,
    pulumi.Input<String> id, {
    AuthenticationProfileState? state,
  }) {
    return AuthenticationProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuthenticationProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/authenticationProfile:AuthenticationProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationProfileContent = registerOutput<String>('authenticationProfileContent');
    authenticationProfileName = registerOutput<String>('authenticationProfileName');
    region = registerOutput<String>('region');
  }
}
