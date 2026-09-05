import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_access_settings_args.dart';
import 'ip_access_settings_ip_rule.dart';
import 'ip_access_settings_state.dart';

/// Resource for managing an AWS WorkSpaces Web IP Access Settings resource. Once associated with a web portal, IP access settings control which IP addresses users can connect from.
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
/// const example = new aws.workspacesweb.IpAccessSettings("example", {
///     ipRules: [{
///         ipRange: "10.0.0.0/16",
///     }],
///     displayName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.IpAccessSettings("example",
///     ip_rules=[{
///         "ip_range": "10.0.0.0/16",
///     }],
///     display_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.IpAccessSettings("example", new()
///     {
///         IpRules = new[]
///         {
///             new Aws.WorkSpacesWeb.Inputs.IpAccessSettingsIpRuleArgs
///             {
///                 IpRange = "10.0.0.0/16",
///             },
///         },
///         DisplayName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspacesweb.NewIpAccessSettings(ctx, "example", &workspacesweb.IpAccessSettingsArgs{
/// 			IpRules: workspacesweb.IpAccessSettingsIpRuleArray{
/// 				&workspacesweb.IpAccessSettingsIpRuleArgs{
/// 					IpRange: pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			DisplayName: pulumi.String("example"),
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
/// resource "aws_workspacesweb_ipaccesssettings" "example" {
///   ip_rules {
///     ip_range = "10.0.0.0/16"
///   }
///   display_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.IpAccessSettings;
/// import com.pulumi.aws.workspacesweb.IpAccessSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.IpAccessSettingsIpRuleArgs;
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
///         var example = new IpAccessSettings("example", IpAccessSettingsArgs.builder()
///             .ipRules(IpAccessSettingsIpRuleArgs.builder()
///                 .ipRange("10.0.0.0/16")
///                 .build())
///             .displayName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:IpAccessSettings
///     properties:
///       ipRules:
///         - ipRange: 10.0.0.0/16
///       displayName: example
/// ```
///
///
/// ### With Multiple IP Rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspacesweb.IpAccessSettings("example", {
///     ipRules: [
///         {
///             ipRange: "10.0.0.0/16",
///             description: "Main office",
///         },
///         {
///             ipRange: "192.168.0.0/24",
///             description: "Branch office",
///         },
///     ],
///     displayName: "example",
///     description: "Example IP access settings",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.IpAccessSettings("example",
///     ip_rules=[
///         {
///             "ip_range": "10.0.0.0/16",
///             "description": "Main office",
///         },
///         {
///             "ip_range": "192.168.0.0/24",
///             "description": "Branch office",
///         },
///     ],
///     display_name="example",
///     description="Example IP access settings")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.IpAccessSettings("example", new()
///     {
///         IpRules = new[]
///         {
///             new Aws.WorkSpacesWeb.Inputs.IpAccessSettingsIpRuleArgs
///             {
///                 IpRange = "10.0.0.0/16",
///                 Description = "Main office",
///             },
///             new Aws.WorkSpacesWeb.Inputs.IpAccessSettingsIpRuleArgs
///             {
///                 IpRange = "192.168.0.0/24",
///                 Description = "Branch office",
///             },
///         },
///         DisplayName = "example",
///         Description = "Example IP access settings",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspacesweb.NewIpAccessSettings(ctx, "example", &workspacesweb.IpAccessSettingsArgs{
/// 			IpRules: workspacesweb.IpAccessSettingsIpRuleArray{
/// 				&workspacesweb.IpAccessSettingsIpRuleArgs{
/// 					IpRange:     pulumi.String("10.0.0.0/16"),
/// 					Description: pulumi.String("Main office"),
/// 				},
/// 				&workspacesweb.IpAccessSettingsIpRuleArgs{
/// 					IpRange:     pulumi.String("192.168.0.0/24"),
/// 					Description: pulumi.String("Branch office"),
/// 				},
/// 			},
/// 			DisplayName: pulumi.String("example"),
/// 			Description: pulumi.String("Example IP access settings"),
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
/// resource "aws_workspacesweb_ipaccesssettings" "example" {
///   ip_rules {
///     ip_range    = "10.0.0.0/16"
///     description = "Main office"
///   }
///   ip_rules {
///     ip_range    = "192.168.0.0/24"
///     description = "Branch office"
///   }
///   display_name = "example"
///   description  = "Example IP access settings"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.IpAccessSettings;
/// import com.pulumi.aws.workspacesweb.IpAccessSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.IpAccessSettingsIpRuleArgs;
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
///         var example = new IpAccessSettings("example", IpAccessSettingsArgs.builder()
///             .ipRules(
///                 IpAccessSettingsIpRuleArgs.builder()
///                     .ipRange("10.0.0.0/16")
///                     .description("Main office")
///                     .build(),
///                 IpAccessSettingsIpRuleArgs.builder()
///                     .ipRange("192.168.0.0/24")
///                     .description("Branch office")
///                     .build())
///             .displayName("example")
///             .description("Example IP access settings")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:IpAccessSettings
///     properties:
///       ipRules:
///         - ipRange: 10.0.0.0/16
///           description: Main office
///         - ipRange: 192.168.0.0/24
///           description: Branch office
///       displayName: example
///       description: Example IP access settings
/// ```
///
///
/// ### With All Arguments
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "KMS key for WorkSpaces Web IP Access Settings",
///     deletionWindowInDays: 7,
/// });
/// const exampleIpAccessSettings = new aws.workspacesweb.IpAccessSettings("example", {
///     ipRules: [
///         {
///             ipRange: "10.0.0.0/16",
///             description: "Main office",
///         },
///         {
///             ipRange: "192.168.0.0/24",
///             description: "Branch office",
///         },
///     ],
///     displayName: "example",
///     description: "Example IP access settings",
///     customerManagedKey: example.arn,
///     additionalEncryptionContext: {
///         Environment: "Production",
///     },
///     tags: {
///         Name: "example-ip-access-settings",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="KMS key for WorkSpaces Web IP Access Settings",
///     deletion_window_in_days=7)
/// example_ip_access_settings = aws.workspacesweb.IpAccessSettings("example",
///     ip_rules=[
///         {
///             "ip_range": "10.0.0.0/16",
///             "description": "Main office",
///         },
///         {
///             "ip_range": "192.168.0.0/24",
///             "description": "Branch office",
///         },
///     ],
///     display_name="example",
///     description="Example IP access settings",
///     customer_managed_key=example.arn,
///     additional_encryption_context={
///         "Environment": "Production",
///     },
///     tags={
///         "Name": "example-ip-access-settings",
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
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "KMS key for WorkSpaces Web IP Access Settings",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleIpAccessSettings = new Aws.WorkSpacesWeb.IpAccessSettings("example", new()
///     {
///         IpRules = new[]
///         {
///             new Aws.WorkSpacesWeb.Inputs.IpAccessSettingsIpRuleArgs
///             {
///                 IpRange = "10.0.0.0/16",
///                 Description = "Main office",
///             },
///             new Aws.WorkSpacesWeb.Inputs.IpAccessSettingsIpRuleArgs
///             {
///                 IpRange = "192.168.0.0/24",
///                 Description = "Branch office",
///             },
///         },
///         DisplayName = "example",
///         Description = "Example IP access settings",
///         CustomerManagedKey = example.Arn,
///         AdditionalEncryptionContext =
///         {
///             { "Environment", "Production" },
///         },
///         Tags =
///         {
///             { "Name", "example-ip-access-settings" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("KMS key for WorkSpaces Web IP Access Settings"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewIpAccessSettings(ctx, "example", &workspacesweb.IpAccessSettingsArgs{
/// 			IpRules: workspacesweb.IpAccessSettingsIpRuleArray{
/// 				&workspacesweb.IpAccessSettingsIpRuleArgs{
/// 					IpRange:     pulumi.String("10.0.0.0/16"),
/// 					Description: pulumi.String("Main office"),
/// 				},
/// 				&workspacesweb.IpAccessSettingsIpRuleArgs{
/// 					IpRange:     pulumi.String("192.168.0.0/24"),
/// 					Description: pulumi.String("Branch office"),
/// 				},
/// 			},
/// 			DisplayName:        pulumi.String("example"),
/// 			Description:        pulumi.String("Example IP access settings"),
/// 			CustomerManagedKey: example.Arn,
/// 			AdditionalEncryptionContext: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-ip-access-settings"),
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
/// resource "aws_kms_key" "example" {
///   description             = "KMS key for WorkSpaces Web IP Access Settings"
///   deletion_window_in_days = 7
/// }
/// resource "aws_workspacesweb_ipaccesssettings" "example" {
///   ip_rules {
///     ip_range    = "10.0.0.0/16"
///     description = "Main office"
///   }
///   ip_rules {
///     ip_range    = "192.168.0.0/24"
///     description = "Branch office"
///   }
///   display_name         = "example"
///   description          = "Example IP access settings"
///   customer_managed_key = aws_kms_key.example.arn
///   additional_encryption_context = {
///     "Environment" = "Production"
///   }
///   tags = {
///     "Name" = "example-ip-access-settings"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.workspacesweb.IpAccessSettings;
/// import com.pulumi.aws.workspacesweb.IpAccessSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.IpAccessSettingsIpRuleArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("KMS key for WorkSpaces Web IP Access Settings")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleIpAccessSettings = new IpAccessSettings("exampleIpAccessSettings", IpAccessSettingsArgs.builder()
///             .ipRules(
///                 IpAccessSettingsIpRuleArgs.builder()
///                     .ipRange("10.0.0.0/16")
///                     .description("Main office")
///                     .build(),
///                 IpAccessSettingsIpRuleArgs.builder()
///                     .ipRange("192.168.0.0/24")
///                     .description("Branch office")
///                     .build())
///             .displayName("example")
///             .description("Example IP access settings")
///             .customerManagedKey(example.arn())
///             .additionalEncryptionContext(Map.of("Environment", "Production"))
///             .tags(Map.of("Name", "example-ip-access-settings"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: KMS key for WorkSpaces Web IP Access Settings
///       deletionWindowInDays: 7
///   exampleIpAccessSettings:
///     type: aws:workspacesweb:IpAccessSettings
///     name: example
///     properties:
///       ipRules:
///         - ipRange: 10.0.0.0/16
///           description: Main office
///         - ipRange: 192.168.0.0/24
///           description: Branch office
///       displayName: example
///       description: Example IP access settings
///       customerManagedKey: ${example.arn}
///       additionalEncryptionContext:
///         Environment: Production
///       tags:
///         Name: example-ip-access-settings
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web IP Access Settings using the `ipAccessSettingsArn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/ipAccessSettings:IpAccessSettings example arn:aws:workspaces-web:us-west-2:123456789012:ipAccessSettings/abcdef12345
/// ```
class IpAccessSettings extends pulumi.CustomResource {
  /// Additional encryption context for the IP access settings.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;
  /// List of web portal ARNs that this IP access settings resource is associated with.
  late final pulumi.Output<List<String>> associatedPortalArns;
  /// ARN of the customer managed KMS key.
  late final pulumi.Output<String?> customerManagedKey;
  /// The description of the IP access settings.
  late final pulumi.Output<String?> description;
  /// The display name of the IP access settings.
  late final pulumi.Output<String> displayName;
  /// ARN of the IP access settings resource.
  late final pulumi.Output<String> ipAccessSettingsArn;
  /// The IP rules of the IP access settings. See IP Rule below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<IpAccessSettingsIpRule>> ipRules;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [IpAccessSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpAccessSettings]. {@macro pulumi_workspacesweb_ip_access_settings_ip_access_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpAccessSettings(
    String name, {
    IpAccessSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/ipAccessSettings:IpAccessSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    ipRules = registerOutput<List<IpAccessSettingsIpRule>>('ipRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpAccessSettingsIpRule>(guardedValue, (value) => IpAccessSettingsIpRule.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [IpAccessSettings] resource's state with the given [name] and [id].
  static IpAccessSettings get(
    String name,
    pulumi.Input<String> id, {
    IpAccessSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IpAccessSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IpAccessSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/ipAccessSettings:IpAccessSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    ipRules = registerOutput<List<IpAccessSettingsIpRule>>('ipRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpAccessSettingsIpRule>(guardedValue, (value) => IpAccessSettingsIpRule.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [IpAccessSettings] resource.
  IpAccessSettings.reference(String urn)
    : super(
        'aws:workspacesweb/ipAccessSettings:IpAccessSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    ipRules = registerOutput<List<IpAccessSettingsIpRule>>('ipRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpAccessSettingsIpRule>(guardedValue, (value) => IpAccessSettingsIpRule.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
