import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_args.dart';
import 'theme_configuration.dart';
import 'theme_permission.dart';

/// Resource for managing a QuickSight Theme.
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
/// const example = new aws.quicksight.Theme("example", {
///     themeId: "example",
///     name: "example",
///     baseThemeId: "MIDNIGHT",
///     configuration: {
///         dataColorPalette: {
///             colors: [
///                 "#FFFFFF",
///                 "#111111",
///                 "#222222",
///                 "#333333",
///                 "#444444",
///                 "#555555",
///                 "#666666",
///                 "#777777",
///                 "#888888",
///                 "#999999",
///             ],
///             emptyFillColor: "#FFFFFF",
///             minMaxGradients: [
///                 "#FFFFFF",
///                 "#111111",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Theme("example",
///     theme_id="example",
///     name="example",
///     base_theme_id="MIDNIGHT",
///     configuration={
///         "data_color_palette": {
///             "colors": [
///                 "#FFFFFF",
///                 "#111111",
///                 "#222222",
///                 "#333333",
///                 "#444444",
///                 "#555555",
///                 "#666666",
///                 "#777777",
///                 "#888888",
///                 "#999999",
///             ],
///             "empty_fill_color": "#FFFFFF",
///             "min_max_gradients": [
///                 "#FFFFFF",
///                 "#111111",
///             ],
///         },
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
///     var example = new Aws.Quicksight.Theme("example", new()
///     {
///         ThemeId = "example",
///         Name = "example",
///         BaseThemeId = "MIDNIGHT",
///         Configuration = new Aws.Quicksight.Inputs.ThemeConfigurationArgs
///         {
///             DataColorPalette = new Aws.Quicksight.Inputs.ThemeConfigurationDataColorPaletteArgs
///             {
///                 Colors = new[]
///                 {
///                     "#FFFFFF",
///                     "#111111",
///                     "#222222",
///                     "#333333",
///                     "#444444",
///                     "#555555",
///                     "#666666",
///                     "#777777",
///                     "#888888",
///                     "#999999",
///                 },
///                 EmptyFillColor = "#FFFFFF",
///                 MinMaxGradients = new[]
///                 {
///                     "#FFFFFF",
///                     "#111111",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewTheme(ctx, "example", &quicksight.ThemeArgs{
/// 			ThemeId:     pulumi.String("example"),
/// 			Name:        pulumi.String("example"),
/// 			BaseThemeId: pulumi.String("MIDNIGHT"),
/// 			Configuration: &quicksight.ThemeConfigurationArgs{
/// 				DataColorPalette: &quicksight.ThemeConfigurationDataColorPaletteArgs{
/// 					Colors: pulumi.StringArray{
/// 						pulumi.String("#FFFFFF"),
/// 						pulumi.String("#111111"),
/// 						pulumi.String("#222222"),
/// 						pulumi.String("#333333"),
/// 						pulumi.String("#444444"),
/// 						pulumi.String("#555555"),
/// 						pulumi.String("#666666"),
/// 						pulumi.String("#777777"),
/// 						pulumi.String("#888888"),
/// 						pulumi.String("#999999"),
/// 					},
/// 					EmptyFillColor: pulumi.String("#FFFFFF"),
/// 					MinMaxGradients: pulumi.StringArray{
/// 						pulumi.String("#FFFFFF"),
/// 						pulumi.String("#111111"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.quicksight.Theme;
/// import com.pulumi.aws.quicksight.ThemeArgs;
/// import com.pulumi.aws.quicksight.inputs.ThemeConfigurationArgs;
/// import com.pulumi.aws.quicksight.inputs.ThemeConfigurationDataColorPaletteArgs;
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
///         var example = new Theme("example", ThemeArgs.builder()
///             .themeId("example")
///             .name("example")
///             .baseThemeId("MIDNIGHT")
///             .configuration(ThemeConfigurationArgs.builder()
///                 .dataColorPalette(ThemeConfigurationDataColorPaletteArgs.builder()
///                     .colors(
///                         "#FFFFFF",
///                         "#111111",
///                         "#222222",
///                         "#333333",
///                         "#444444",
///                         "#555555",
///                         "#666666",
///                         "#777777",
///                         "#888888",
///                         "#999999")
///                     .emptyFillColor("#FFFFFF")
///                     .minMaxGradients(
///                         "#FFFFFF",
///                         "#111111")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:Theme
///     properties:
///       themeId: example
///       name: example
///       baseThemeId: MIDNIGHT
///       configuration:
///         dataColorPalette:
///           colors:
///             - '#FFFFFF'
///             - '#111111'
///             - '#222222'
///             - '#333333'
///             - '#444444'
///             - '#555555'
///             - '#666666'
///             - '#777777'
///             - '#888888'
///             - '#999999'
///           emptyFillColor: '#FFFFFF'
///           minMaxGradients:
///             - '#FFFFFF'
///             - '#111111'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Theme using the AWS account ID and theme ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/theme:Theme example 123456789012,example-id
/// ```
class Theme extends pulumi.CustomResource {
  /// ARN of the theme.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  late final pulumi.Output<String> baseThemeId;
  /// The theme configuration, which contains the theme display properties. See configuration.
  late final pulumi.Output<ThemeConfiguration?> configuration;
  /// The time that the theme was created.
  late final pulumi.Output<String> createdTime;
  /// The time that the theme was last updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// Display name of the theme.
  late final pulumi.Output<String> name;
  /// A set of resource permissions on the theme. Maximum of 64 items. See permissions.
  late final pulumi.Output<List<ThemePermission>?> permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The theme creation status.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> themeId;
  /// A description of the current theme version being created/updated.
  late final pulumi.Output<String?> versionDescription;
  /// The version number of the theme version.
  late final pulumi.Output<int> versionNumber;

  /// Creates a new [Theme].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Theme]. {@macro pulumi_quicksight_theme_theme_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Theme(
    String name, {
    ThemeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/theme:Theme',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.baseThemeId = registerOutput<String>('baseThemeId');
    this.configuration = registerOutput<ThemeConfiguration?>('configuration');
    this.createdTime = registerOutput<String>('createdTime');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.permissions = registerOutput<List<ThemePermission>?>('permissions');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.themeId = registerOutput<String>('themeId');
    this.versionDescription = registerOutput<String?>('versionDescription');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
