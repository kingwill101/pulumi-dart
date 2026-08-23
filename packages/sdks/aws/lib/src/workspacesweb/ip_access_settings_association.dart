import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_access_settings_association_args.dart';
import 'ip_access_settings_association_state.dart';

/// Resource for managing an AWS WorkSpaces Web IP Access Settings Association.
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
/// const example = new aws.workspacesweb.Portal("example", {displayName: "example"});
/// const exampleIpAccessSettings = new aws.workspacesweb.IpAccessSettings("example", {
///     displayName: "example",
///     ipRules: [{
///         ipRange: "10.0.0.0/16",
///     }],
/// });
/// const exampleIpAccessSettingsAssociation = new aws.workspacesweb.IpAccessSettingsAssociation("example", {
///     ipAccessSettingsArn: exampleIpAccessSettings.ipAccessSettingsArn,
///     portalArn: example.portalArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.Portal("example", display_name="example")
/// example_ip_access_settings = aws.workspacesweb.IpAccessSettings("example",
///     display_name="example",
///     ip_rules=[{
///         "ip_range": "10.0.0.0/16",
///     }])
/// example_ip_access_settings_association = aws.workspacesweb.IpAccessSettingsAssociation("example",
///     ip_access_settings_arn=example_ip_access_settings.ip_access_settings_arn,
///     portal_arn=example.portal_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.Portal("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleIpAccessSettings = new Aws.WorkSpacesWeb.IpAccessSettings("example", new()
///     {
///         DisplayName = "example",
///         IpRules = new[]
///         {
///             new Aws.WorkSpacesWeb.Inputs.IpAccessSettingsIpRuleArgs
///             {
///                 IpRange = "10.0.0.0/16",
///             },
///         },
///     });
///
///     var exampleIpAccessSettingsAssociation = new Aws.WorkSpacesWeb.IpAccessSettingsAssociation("example", new()
///     {
///         IpAccessSettingsArn = exampleIpAccessSettings.IpAccessSettingsArn,
///         PortalArn = example.PortalArn,
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
/// 		example, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIpAccessSettings, err := workspacesweb.NewIpAccessSettings(ctx, "example", &workspacesweb.IpAccessSettingsArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			IpRules: workspacesweb.IpAccessSettingsIpRuleArray{
/// 				&workspacesweb.IpAccessSettingsIpRuleArgs{
/// 					IpRange: pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewIpAccessSettingsAssociation(ctx, "example", &workspacesweb.IpAccessSettingsAssociationArgs{
/// 			IpAccessSettingsArn: exampleIpAccessSettings.IpAccessSettingsArn,
/// 			PortalArn:           example.PortalArn,
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
/// resource "aws_workspacesweb_portal" "example" {
///   display_name = "example"
/// }
/// resource "aws_workspacesweb_ipaccesssettings" "example" {
///   display_name = "example"
///   ip_rules {
///     ip_range = "10.0.0.0/16"
///   }
/// }
/// resource "aws_workspacesweb_ipaccesssettingsassociation" "example" {
///   ip_access_settings_arn = aws_workspacesweb_ipaccesssettings.example.ip_access_settings_arn
///   portal_arn             = aws_workspacesweb_portal.example.portal_arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.workspacesweb.IpAccessSettings;
/// import com.pulumi.aws.workspacesweb.IpAccessSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.IpAccessSettingsIpRuleArgs;
/// import com.pulumi.aws.workspacesweb.IpAccessSettingsAssociation;
/// import com.pulumi.aws.workspacesweb.IpAccessSettingsAssociationArgs;
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
///         var example = new Portal("example", PortalArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleIpAccessSettings = new IpAccessSettings("exampleIpAccessSettings", IpAccessSettingsArgs.builder()
///             .displayName("example")
///             .ipRules(IpAccessSettingsIpRuleArgs.builder()
///                 .ipRange("10.0.0.0/16")
///                 .build())
///             .build());
///
///         var exampleIpAccessSettingsAssociation = new IpAccessSettingsAssociation("exampleIpAccessSettingsAssociation", IpAccessSettingsAssociationArgs.builder()
///             .ipAccessSettingsArn(exampleIpAccessSettings.ipAccessSettingsArn())
///             .portalArn(example.portalArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:Portal
///     properties:
///       displayName: example
///   exampleIpAccessSettings:
///     type: aws:workspacesweb:IpAccessSettings
///     name: example
///     properties:
///       displayName: example
///       ipRules:
///         - ipRange: 10.0.0.0/16
///   exampleIpAccessSettingsAssociation:
///     type: aws:workspacesweb:IpAccessSettingsAssociation
///     name: example
///     properties:
///       ipAccessSettingsArn: ${exampleIpAccessSettings.ipAccessSettingsArn}
///       portalArn: ${example.portalArn}
/// ```
class IpAccessSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the IP access settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> ipAccessSettingsArn;
  /// ARN of the portal to associate with the IP access settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [IpAccessSettingsAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpAccessSettingsAssociation]. {@macro pulumi_workspacesweb_ip_access_settings_association_ip_access_settings_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpAccessSettingsAssociation(
    String name, {
    IpAccessSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/ipAccessSettingsAssociation:IpAccessSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [IpAccessSettingsAssociation] resource's state with the given [name] and [id].
  static IpAccessSettingsAssociation get(
    String name,
    pulumi.Input<String> id, {
    IpAccessSettingsAssociationState? state,
  }) {
    return IpAccessSettingsAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpAccessSettingsAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/ipAccessSettingsAssociation:IpAccessSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
  }
}
