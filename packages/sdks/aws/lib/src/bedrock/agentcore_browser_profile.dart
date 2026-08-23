import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_profile_args.dart';
import 'agentcore_browser_profile_state.dart';
import 'agentcore_browser_profile_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Browser Profile. Browser profiles define browser state that can be re-used across different browser sessions within AgentCore Browser. Browser state includes cookies and local storage.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreBrowserProfile("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreBrowserProfile("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreBrowserProfile("example", new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreBrowserProfile(ctx, "example", &bedrock.AgentcoreBrowserProfileArgs{
/// 			Name: pulumi.String("example"),
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
/// resource "aws_bedrock_agentcorebrowserprofile" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserProfile;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserProfileArgs;
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
///         var example = new AgentcoreBrowserProfile("example", AgentcoreBrowserProfileArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreBrowserProfile
///     properties:
///       name: example
/// ```
///
///
/// ### With Description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreBrowserProfile("example", {
///     name: "example",
///     description: "Example browser profile for web data extraction",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreBrowserProfile("example",
///     name="example",
///     description="Example browser profile for web data extraction")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreBrowserProfile("example", new()
///     {
///         Name = "example",
///         Description = "Example browser profile for web data extraction",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreBrowserProfile(ctx, "example", &bedrock.AgentcoreBrowserProfileArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example browser profile for web data extraction"),
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
/// resource "aws_bedrock_agentcorebrowserprofile" "example" {
///   name        = "example"
///   description = "Example browser profile for web data extraction"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserProfile;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserProfileArgs;
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
///         var example = new AgentcoreBrowserProfile("example", AgentcoreBrowserProfileArgs.builder()
///             .name("example")
///             .description("Example browser profile for web data extraction")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreBrowserProfile
///     properties:
///       name: example
///       description: Example browser profile for web data extraction
/// ```
///
///
/// ### With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreBrowserProfile("example", {
///     name: "example",
///     description: "Browser profile with tags",
///     tags: {
///         Environment: "production",
///         Team: "data-engineering",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreBrowserProfile("example",
///     name="example",
///     description="Browser profile with tags",
///     tags={
///         "Environment": "production",
///         "Team": "data-engineering",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreBrowserProfile("example", new()
///     {
///         Name = "example",
///         Description = "Browser profile with tags",
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Team", "data-engineering" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreBrowserProfile(ctx, "example", &bedrock.AgentcoreBrowserProfileArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Browser profile with tags"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Team":        pulumi.String("data-engineering"),
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
/// resource "aws_bedrock_agentcorebrowserprofile" "example" {
///   name        = "example"
///   description = "Browser profile with tags"
///   tags = {
///     "Environment" = "production"
///     "Team"        = "data-engineering"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserProfile;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserProfileArgs;
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
///         var example = new AgentcoreBrowserProfile("example", AgentcoreBrowserProfileArgs.builder()
///             .name("example")
///             .description("Browser profile with tags")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Team", "data-engineering")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreBrowserProfile
///     properties:
///       name: example
///       description: Browser profile with tags
///       tags:
///         Environment: production
///         Team: data-engineering
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `profileId` (String) ID of the browser profile.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Bedrock AgentCore Browser Profiles using `profileId`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreBrowserProfile:AgentcoreBrowserProfile example browser-profile-id-12345678
/// ```
class AgentcoreBrowserProfile extends pulumi.CustomResource {
  /// Description of the browser profile. Must be between 1 and 4096 characters.
  late final pulumi.Output<String?> description;
  /// Name of the browser profile. Must start with a letter and can contain alphanumeric characters and underscores, up to 48 characters.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// ARN of the Browser Profile.
  late final pulumi.Output<String> profileArn;
  /// Unique identifier of the Browser Profile.
  late final pulumi.Output<String> profileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreBrowserProfileTimeouts?> timeouts;

  /// Creates a new [AgentcoreBrowserProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreBrowserProfile]. {@macro pulumi_bedrock_agentcore_browser_profile_agentcore_browser_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreBrowserProfile(
    String name, {
    AgentcoreBrowserProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreBrowserProfile:AgentcoreBrowserProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    profileArn = registerOutput<String>('profileArn');
    profileId = registerOutput<String>('profileId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreBrowserProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreBrowserProfile] resource's state with the given [name] and [id].
  static AgentcoreBrowserProfile get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreBrowserProfileState? state,
  }) {
    return AgentcoreBrowserProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreBrowserProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreBrowserProfile:AgentcoreBrowserProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    profileArn = registerOutput<String>('profileArn');
    profileId = registerOutput<String>('profileId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreBrowserProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
