import 'package:pulumi/pulumi.dart';
import '../theme_configuration/theme_configuration.dart';
import '../theme_permission/theme_permission.dart';
import 'theme_args.dart';

/// Resource for managing a QuickSight Theme.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Theme("example", {
/// themeId: "example",
/// name: "example",
/// baseThemeId: "MIDNIGHT",
/// configuration: {
/// dataColorPalette: {
/// colors: [
/// "#FFFFFF",
/// "#111111",
/// "#222222",
/// "#333333",
/// "#444444",
/// "#555555",
/// "#666666",
/// "#777777",
/// "#888888",
/// "#999999",
/// ],
/// emptyFillColor: "#FFFFFF",
/// minMaxGradients: [
/// "#FFFFFF",
/// "#111111",
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Theme("example",
/// theme_id="example",
/// name="example",
/// base_theme_id="MIDNIGHT",
/// configuration={
/// "data_color_palette": {
/// "colors": [
/// "#FFFFFF",
/// "#111111",
/// "#222222",
/// "#333333",
/// "#444444",
/// "#555555",
/// "#666666",
/// "#777777",
/// "#888888",
/// "#999999",
/// ],
/// "empty_fill_color": "#FFFFFF",
/// "min_max_gradients": [
/// "#FFFFFF",
/// "#111111",
/// ],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.Theme("example", new()
/// {
/// ThemeId = "example",
/// Name = "example",
/// BaseThemeId = "MIDNIGHT",
/// Configuration = new Aws.Quicksight.Inputs.ThemeConfigurationArgs
/// {
/// DataColorPalette = new Aws.Quicksight.Inputs.ThemeConfigurationDataColorPaletteArgs
/// {
/// Colors = new[]
/// {
/// "#FFFFFF",
/// "#111111",
/// "#222222",
/// "#333333",
/// "#444444",
/// "#555555",
/// "#666666",
/// "#777777",
/// "#888888",
/// "#999999",
/// },
/// EmptyFillColor = "#FFFFFF",
/// MinMaxGradients = new[]
/// {
/// "#FFFFFF",
/// "#111111",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewTheme(ctx, "example", &quicksight.ThemeArgs{
/// ThemeId:     pulumi.String("example"),
/// Name:        pulumi.String("example"),
/// BaseThemeId: pulumi.String("MIDNIGHT"),
/// Configuration: &quicksight.ThemeConfigurationArgs{
/// DataColorPalette: &quicksight.ThemeConfigurationDataColorPaletteArgs{
/// Colors: pulumi.StringArray{
/// pulumi.String("#FFFFFF"),
/// pulumi.String("#111111"),
/// pulumi.String("#222222"),
/// pulumi.String("#333333"),
/// pulumi.String("#444444"),
/// pulumi.String("#555555"),
/// pulumi.String("#666666"),
/// pulumi.String("#777777"),
/// pulumi.String("#888888"),
/// pulumi.String("#999999"),
/// },
/// EmptyFillColor: pulumi.String("#FFFFFF"),
/// MinMaxGradients: pulumi.StringArray{
/// pulumi.String("#FFFFFF"),
/// pulumi.String("#111111"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Theme("example", ThemeArgs.builder()
/// .themeId("example")
/// .name("example")
/// .baseThemeId("MIDNIGHT")
/// .configuration(ThemeConfigurationArgs.builder()
/// .dataColorPalette(ThemeConfigurationDataColorPaletteArgs.builder()
/// .colors(
/// "#FFFFFF",
/// "#111111",
/// "#222222",
/// "#333333",
/// "#444444",
/// "#555555",
/// "#666666",
/// "#777777",
/// "#888888",
/// "#999999")
/// .emptyFillColor("#FFFFFF")
/// .minMaxGradients(
/// "#FFFFFF",
/// "#111111")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:Theme
/// properties:
/// themeId: example
/// name: example
/// baseThemeId: MIDNIGHT
/// configuration:
/// dataColorPalette:
/// colors:
/// - '#FFFFFF'
/// - '#111111'
/// - '#222222'
/// - '#333333'
/// - '#444444'
/// - '#555555'
/// - '#666666'
/// - '#777777'
/// - '#888888'
/// - '#999999'
/// emptyFillColor: '#FFFFFF'
/// minMaxGradients:
/// - '#FFFFFF'
/// - '#111111'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Theme using the AWS account ID and theme ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/theme:Theme example 123456789012,example-id
/// ```
class Theme extends CustomResource {
  /// ARN of the theme.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within an analysis.
  late final Output<String> baseThemeId;

  /// The theme configuration, which contains the theme display properties. See configuration.
  late final Output<ThemeConfiguration?> configuration;

  /// The time that the theme was created.
  late final Output<String> createdTime;

  /// The time that the theme was last updated.
  late final Output<String> lastUpdatedTime;

  /// Display name of the theme.
  late final Output<String> name;

  /// A set of resource permissions on the theme. Maximum of 64 items. See permissions.
  late final Output<List<ThemePermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The theme creation status.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier of the theme.
  ///
  /// The following arguments are optional:
  late final Output<String> themeId;

  /// A description of the current theme version being created/updated.
  late final Output<String?> versionDescription;

  /// The version number of the theme version.
  late final Output<int> versionNumber;

  Theme(
    String name, {
    ThemeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/theme:Theme',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsAccountId = Output.createUnknown<String>();
    this.baseThemeId = Output.createUnknown<String>();
    this.configuration = Output.createUnknown<ThemeConfiguration?>();
    this.createdTime = Output.createUnknown<String>();
    this.lastUpdatedTime = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.permissions = Output.createUnknown<List<ThemePermission>?>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.themeId = Output.createUnknown<String>();
    this.versionDescription = Output.createUnknown<String?>();
    this.versionNumber = Output.createUnknown<int>();
  }
}
