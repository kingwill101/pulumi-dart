import 'package:pulumi/pulumi.dart' as pulumi;
import 'browser_settings_association_args.dart';
import 'browser_settings_association_state.dart';

/// Resource for managing an AWS WorkSpaces Web Browser Settings Association.
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
/// const exampleBrowserSettings = new aws.workspacesweb.BrowserSettings("example", {browserPolicy: JSON.stringify({
///     chromePolicies: {
///         DefaultDownloadDirectory: {
///             value: "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
///         },
///     },
/// })});
/// const exampleBrowserSettingsAssociation = new aws.workspacesweb.BrowserSettingsAssociation("example", {
///     browserSettingsArn: exampleBrowserSettings.browserSettingsArn,
///     portalArn: example.portalArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.Portal("example", display_name="example")
/// example_browser_settings = aws.workspacesweb.BrowserSettings("example", browser_policy=json.dumps({
///     "chromePolicies": {
///         "DefaultDownloadDirectory": {
///             "value": "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
///         },
///     },
/// }))
/// example_browser_settings_association = aws.workspacesweb.BrowserSettingsAssociation("example",
///     browser_settings_arn=example_browser_settings.browser_settings_arn,
///     portal_arn=example.portal_arn)
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
///     var example = new Aws.WorkSpacesWeb.Portal("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleBrowserSettings = new Aws.WorkSpacesWeb.BrowserSettings("example", new()
///     {
///         BrowserPolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["chromePolicies"] = new Dictionary<string, object?>
///             {
///                 ["DefaultDownloadDirectory"] = new Dictionary<string, object?>
///                 {
///                     ["value"] = "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
///                 },
///             },
///         }),
///     });
///
///     var exampleBrowserSettingsAssociation = new Aws.WorkSpacesWeb.BrowserSettingsAssociation("example", new()
///     {
///         BrowserSettingsArn = exampleBrowserSettings.BrowserSettingsArn,
///         PortalArn = example.PortalArn,
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
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"chromePolicies": map[string]interface{}{
/// 				"DefaultDownloadDirectory": map[string]interface{}{
/// 					"value": "/home/as2-streaming-user/MyFiles/TemporaryFiles1",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleBrowserSettings, err := workspacesweb.NewBrowserSettings(ctx, "example", &workspacesweb.BrowserSettingsArgs{
/// 			BrowserPolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewBrowserSettingsAssociation(ctx, "example", &workspacesweb.BrowserSettingsAssociationArgs{
/// 			BrowserSettingsArn: exampleBrowserSettings.BrowserSettingsArn,
/// 			PortalArn:          example.PortalArn,
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
/// import com.pulumi.aws.workspacesweb.BrowserSettings;
/// import com.pulumi.aws.workspacesweb.BrowserSettingsArgs;
/// import com.pulumi.aws.workspacesweb.BrowserSettingsAssociation;
/// import com.pulumi.aws.workspacesweb.BrowserSettingsAssociationArgs;
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
///         var example = new Portal("example", PortalArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleBrowserSettings = new BrowserSettings("exampleBrowserSettings", BrowserSettingsArgs.builder()
///             .browserPolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("chromePolicies", jsonObject(
///                         jsonProperty("DefaultDownloadDirectory", jsonObject(
///                             jsonProperty("value", "/home/as2-streaming-user/MyFiles/TemporaryFiles1")
///                         ))
///                     ))
///                 )))
///             .build());
///
///         var exampleBrowserSettingsAssociation = new BrowserSettingsAssociation("exampleBrowserSettingsAssociation", BrowserSettingsAssociationArgs.builder()
///             .browserSettingsArn(exampleBrowserSettings.browserSettingsArn())
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
///   exampleBrowserSettings:
///     type: aws:workspacesweb:BrowserSettings
///     name: example
///     properties:
///       browserPolicy:
///         fn::toJSON:
///           chromePolicies:
///             DefaultDownloadDirectory:
///               value: /home/as2-streaming-user/MyFiles/TemporaryFiles1
///   exampleBrowserSettingsAssociation:
///     type: aws:workspacesweb:BrowserSettingsAssociation
///     name: example
///     properties:
///       browserSettingsArn: ${exampleBrowserSettings.browserSettingsArn}
///       portalArn: ${example.portalArn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Browser Settings Association using the `browser_settings_arn,portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/browserSettingsAssociation:BrowserSettingsAssociation example arn:aws:workspaces-web:us-west-2:123456789012:browserSettings/browser_settings-id-12345678,arn:aws:workspaces-web:us-west-2:123456789012:portal/portal-id-12345678
/// ```
class BrowserSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the browser settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> browserSettingsArn;

  /// ARN of the portal to associate with the browser settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BrowserSettingsAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrowserSettingsAssociation]. {@macro pulumi_workspacesweb_browser_settings_association_browser_settings_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrowserSettingsAssociation(
    String name, {
    BrowserSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/browserSettingsAssociation:BrowserSettingsAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    browserSettingsArn = registerOutput<String>('browserSettingsArn');
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BrowserSettingsAssociation] resource's state with the given [name] and [id].
  static BrowserSettingsAssociation get(
    String name,
    pulumi.Input<String> id, {
    BrowserSettingsAssociationState? state,
  }) {
    return BrowserSettingsAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BrowserSettingsAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/browserSettingsAssociation:BrowserSettingsAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    browserSettingsArn = registerOutput<String>('browserSettingsArn');
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
  }
}
