import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Data Protection Settings Association.
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
/// const exampleDataProtectionSettings = new aws.workspacesweb.DataProtectionSettings("example", {displayName: "example"});
/// const exampleDataProtectionSettingsAssociation = new aws.workspacesweb.DataProtectionSettingsAssociation("example", {
///     dataProtectionSettingsArn: exampleDataProtectionSettings.dataProtectionSettingsArn,
///     portalArn: example.portalArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.Portal("example", display_name="example")
/// example_data_protection_settings = aws.workspacesweb.DataProtectionSettings("example", display_name="example")
/// example_data_protection_settings_association = aws.workspacesweb.DataProtectionSettingsAssociation("example",
///     data_protection_settings_arn=example_data_protection_settings.data_protection_settings_arn,
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
///     var exampleDataProtectionSettings = new Aws.WorkSpacesWeb.DataProtectionSettings("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleDataProtectionSettingsAssociation = new Aws.WorkSpacesWeb.DataProtectionSettingsAssociation("example", new()
///     {
///         DataProtectionSettingsArn = exampleDataProtectionSettings.DataProtectionSettingsArn,
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
/// 		exampleDataProtectionSettings, err := workspacesweb.NewDataProtectionSettings(ctx, "example", &workspacesweb.DataProtectionSettingsArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewDataProtectionSettingsAssociation(ctx, "example", &workspacesweb.DataProtectionSettingsAssociationArgs{
/// 			DataProtectionSettingsArn: exampleDataProtectionSettings.DataProtectionSettingsArn,
/// 			PortalArn:                 example.PortalArn,
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettings;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsArgs;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsAssociation;
/// import com.pulumi.aws.workspacesweb.DataProtectionSettingsAssociationArgs;
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
///         var example = new Portal("example", PortalArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleDataProtectionSettings = new DataProtectionSettings("exampleDataProtectionSettings", DataProtectionSettingsArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleDataProtectionSettingsAssociation = new DataProtectionSettingsAssociation("exampleDataProtectionSettingsAssociation", DataProtectionSettingsAssociationArgs.builder()
///             .dataProtectionSettingsArn(exampleDataProtectionSettings.dataProtectionSettingsArn())
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
///   exampleDataProtectionSettings:
///     type: aws:workspacesweb:DataProtectionSettings
///     name: example
///     properties:
///       displayName: example
///   exampleDataProtectionSettingsAssociation:
///     type: aws:workspacesweb:DataProtectionSettingsAssociation
///     name: example
///     properties:
///       dataProtectionSettingsArn: ${exampleDataProtectionSettings.dataProtectionSettingsArn}
///       portalArn: ${example.portalArn}
/// ```
class DataProtectionSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the data protection settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> dataProtectionSettingsArn;

  /// ARN of the portal to associate with the data protection settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DataProtectionSettingsAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProtectionSettingsAssociation]. {@macro pulumi_workspacesweb_data_protection_settings_association_data_protection_settings_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProtectionSettingsAssociation(
    String name, {
    DataProtectionSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/dataProtectionSettingsAssociation:DataProtectionSettingsAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.dataProtectionSettingsArn = registerOutput<String>(
      'dataProtectionSettingsArn',
    );
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
  }
}
