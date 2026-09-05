import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_args.dart';
import 'security_profile_state.dart';

/// Provides an Amazon Connect Security Profile resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.SecurityProfile("example", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "example",
///     description: "example description",
///     permissions: [
///         "BasicAgentAccess",
///         "OutboundCallAccess",
///     ],
///     tags: {
///         Name: "Example Security Profile",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.SecurityProfile("example",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="example",
///     description="example description",
///     permissions=[
///         "BasicAgentAccess",
///         "OutboundCallAccess",
///     ],
///     tags={
///         "Name": "Example Security Profile",
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
///     var example = new Aws.Connect.SecurityProfile("example", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "example",
///         Description = "example description",
///         Permissions = new[]
///         {
///             "BasicAgentAccess",
///             "OutboundCallAccess",
///         },
///         Tags =
///         {
///             { "Name", "Example Security Profile" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewSecurityProfile(ctx, "example", &connect.SecurityProfileArgs{
/// 			InstanceId:  pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example description"),
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("BasicAgentAccess"),
/// 				pulumi.String("OutboundCallAccess"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Security Profile"),
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
/// resource "aws_connect_securityprofile" "example" {
///   instance_id = "aaaaaaaa-bbbb-cccc-dddd-111111111111"
///   name        = "example"
///   description = "example description"
///   permissions = ["BasicAgentAccess", "OutboundCallAccess"]
///   tags = {
///     "Name" = "Example Security Profile"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.SecurityProfile;
/// import com.pulumi.aws.connect.SecurityProfileArgs;
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
///         var example = new SecurityProfile("example", SecurityProfileArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("example")
///             .description("example description")
///             .permissions(
///                 "BasicAgentAccess",
///                 "OutboundCallAccess")
///             .tags(Map.of("Name", "Example Security Profile"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:SecurityProfile
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: example
///       description: example description
///       permissions:
///         - BasicAgentAccess
///         - OutboundCallAccess
///       tags:
///         Name: Example Security Profile
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Security Profiles using the `instanceId` and `securityProfileId` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/securityProfile:SecurityProfile example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class SecurityProfile extends pulumi.CustomResource {
  /// ARN of the Security Profile.
  late final pulumi.Output<String> arn;
  /// Specifies the description of the Security Profile.
  late final pulumi.Output<String?> description;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;
  /// Specifies the name of the Security Profile.
  late final pulumi.Output<String> name;
  /// The organization resource identifier for the security profile.
  late final pulumi.Output<String> organizationResourceId;
  /// Specifies a list of permissions assigned to the security profile.
  late final pulumi.Output<List<String>?> permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The identifier for the Security Profile.
  late final pulumi.Output<String> securityProfileId;
  /// Tags to apply to the Security Profile. If configured with a provider
  /// `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [SecurityProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityProfile]. {@macro pulumi_connect_security_profile_security_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityProfile(
    String name, {
    SecurityProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/securityProfile:SecurityProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    organizationResourceId = registerOutput<String>('organizationResourceId');
    permissions = registerOutput<List<String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    securityProfileId = registerOutput<String>('securityProfileId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [SecurityProfile] resource's state with the given [name] and [id].
  static SecurityProfile get(
    String name,
    pulumi.Input<String> id, {
    SecurityProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/securityProfile:SecurityProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    organizationResourceId = registerOutput<String>('organizationResourceId');
    permissions = registerOutput<List<String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    securityProfileId = registerOutput<String>('securityProfileId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [SecurityProfile] resource.
  SecurityProfile.reference(String urn)
    : super(
        'aws:connect/securityProfile:SecurityProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    organizationResourceId = registerOutput<String>('organizationResourceId');
    permissions = registerOutput<List<String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    securityProfileId = registerOutput<String>('securityProfileId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
