import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_args.dart';
import 'profile_state.dart';

/// Resource for managing a Roles Anywhere Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.iam.Role("test", {
///     name: "test",
///     path: "/",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///                 "sts:SetSourceIdentity",
///             ],
///             Principal: {
///                 Service: "rolesanywhere.amazonaws.com",
///             },
///             Effect: "Allow",
///             Sid: "",
///         }],
///     }),
/// });
/// const testProfile = new aws.rolesanywhere.Profile("test", {
///     name: "example",
///     roleArns: [test.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.iam.Role("test",
///     name="test",
///     path="/",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///                 "sts:SetSourceIdentity",
///             ],
///             "Principal": {
///                 "Service": "rolesanywhere.amazonaws.com",
///             },
///             "Effect": "Allow",
///             "Sid": "",
///         }],
///     }))
/// test_profile = aws.rolesanywhere.Profile("test",
///     name="example",
///     role_arns=[test.arn])
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
///     var test = new Aws.Iam.Role("test", new()
///     {
///         Name = "test",
///         Path = "/",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                         "sts:SetSourceIdentity",
///                     },
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "rolesanywhere.amazonaws.com",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Sid"] = "",
///                 },
///             },
///         }),
///     });
///
///     var testProfile = new Aws.RolesAnywhere.Profile("test", new()
///     {
///         Name = "example",
///         RoleArns = new[]
///         {
///             test.Arn,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rolesanywhere"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 						"sts:SetSourceIdentity",
/// 					},
/// 					"Principal": map[string]string{
/// 						"Service": "rolesanywhere.amazonaws.com",
/// 					},
/// 					"Effect": "Allow",
/// 					"Sid":    "",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		test, err := iam.NewRole(ctx, "test", &iam.RoleArgs{
/// 			Name:             pulumi.String("test"),
/// 			Path:             pulumi.String("/"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rolesanywhere.NewProfile(ctx, "test", &rolesanywhere.ProfileArgs{
/// 			Name: pulumi.String("example"),
/// 			RoleArns: pulumi.StringArray{
/// 				test.Arn,
/// 			},
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
/// resource "aws_iam_role" "test" {
///   name = "test"
///   path = "/"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = ["sts:AssumeRole", "sts:TagSession", "sts:SetSourceIdentity"]
///       "Principal" = {
///         "Service" = "rolesanywhere.amazonaws.com"
///       }
///       "Effect" = "Allow"
///       "Sid"    = ""
///     }]
///   })
/// }
/// resource "aws_rolesanywhere_profile" "test" {
///   name      = "example"
///   role_arns = [aws_iam_role.test.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.rolesanywhere.Profile;
/// import com.pulumi.aws.rolesanywhere.ProfileArgs;
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
///         var test = new Role("test", RoleArgs.builder()
///             .name("test")
///             .path("/")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "sts:AssumeRole",
///                             "sts:TagSession",
///                             "sts:SetSourceIdentity"
///                         )),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "rolesanywhere.amazonaws.com")
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Sid", "")
///                     )))
///                 )))
///             .build());
///
///         var testProfile = new Profile("testProfile", ProfileArgs.builder()
///             .name("example")
///             .roleArns(test.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:iam:Role
///     properties:
///       name: test
///       path: /
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///                 - sts:SetSourceIdentity
///               Principal:
///                 Service: rolesanywhere.amazonaws.com
///               Effect: Allow
///               Sid: ""
///   testProfile:
///     type: aws:rolesanywhere:Profile
///     name: test
///     properties:
///       name: example
///       roleArns:
///         - ${test.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rolesanywhere.Profile` using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rolesanywhere/profile:Profile example db138a85-8925-4f9f-a409-08231233cacf
/// ```
class Profile extends pulumi.CustomResource {
  /// Whether or not a custom role session name is accepted.
  late final pulumi.Output<bool?> acceptRoleSessionName;
  /// Amazon Resource Name (ARN) of the Profile
  late final pulumi.Output<String> arn;
  /// The number of seconds the vended session credentials are valid for. Defaults to 3600.
  late final pulumi.Output<int> durationSeconds;
  /// Whether or not the Profile is enabled.
  late final pulumi.Output<bool?> enabled;
  /// A list of managed policy ARNs that apply to the vended session credentials.
  late final pulumi.Output<List<String>?> managedPolicyArns;
  /// The name of the Profile.
  late final pulumi.Output<String> name;
  /// Specifies whether instance properties are required in [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests with this profile.
  late final pulumi.Output<bool?> requireInstanceProperties;
  /// A list of IAM roles that this profile can assume
  late final pulumi.Output<List<String>?> roleArns;
  /// A session policy that applies to the trust boundary of the vended session credentials.
  late final pulumi.Output<String?> sessionPolicy;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_rolesanywhere_profile_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rolesanywhere/profile:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptRoleSessionName = registerOutput<bool?>('acceptRoleSessionName');
    arn = registerOutput<String>('arn');
    durationSeconds = registerOutput<int>('durationSeconds');
    enabled = registerOutput<bool?>('enabled');
    managedPolicyArns = registerOutput<List<String>?>('managedPolicyArns');
    this.name = registerOutput<String>('name');
    requireInstanceProperties = registerOutput<bool?>('requireInstanceProperties');
    roleArns = registerOutput<List<String>?>('roleArns');
    sessionPolicy = registerOutput<String?>('sessionPolicy');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Profile] resource's state with the given [name] and [id].
  static Profile get(
    String name,
    pulumi.Input<String> id, {
    ProfileState? state,
  }) {
    return Profile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Profile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rolesanywhere/profile:Profile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptRoleSessionName = registerOutput<bool?>('acceptRoleSessionName');
    arn = registerOutput<String>('arn');
    durationSeconds = registerOutput<int>('durationSeconds');
    enabled = registerOutput<bool?>('enabled');
    managedPolicyArns = registerOutput<List<String>?>('managedPolicyArns');
    this.name = registerOutput<String>('name');
    requireInstanceProperties = registerOutput<bool?>('requireInstanceProperties');
    roleArns = registerOutput<List<String>?>('roleArns');
    sessionPolicy = registerOutput<String?>('sessionPolicy');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
