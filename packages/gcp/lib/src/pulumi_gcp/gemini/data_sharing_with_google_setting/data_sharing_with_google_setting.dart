import 'package:pulumi/pulumi.dart';
import 'data_sharing_with_google_setting_args.dart';

/// The resource for managing DataSharingWithGoogle settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Data Sharing With Google Setting Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.DataSharingWithGoogleSetting("example", {
/// dataSharingWithGoogleSettingId: "ls1-tf",
/// location: "global",
/// labels: {
/// my_key: "my_value",
/// },
/// enablePreviewDataSharing: true,
/// enableDataSharing: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.DataSharingWithGoogleSetting("example",
/// data_sharing_with_google_setting_id="ls1-tf",
/// location="global",
/// labels={
/// "my_key": "my_value",
/// },
/// enable_preview_data_sharing=True,
/// enable_data_sharing=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Gemini.DataSharingWithGoogleSetting("example", new()
/// {
/// DataSharingWithGoogleSettingId = "ls1-tf",
/// Location = "global",
/// Labels =
/// {
/// { "my_key", "my_value" },
/// },
/// EnablePreviewDataSharing = true,
/// EnableDataSharing = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.NewDataSharingWithGoogleSetting(ctx, "example", &gemini.DataSharingWithGoogleSettingArgs{
/// DataSharingWithGoogleSettingId: pulumi.String("ls1-tf"),
/// Location:                       pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "my_key": pulumi.String("my_value"),
/// },
/// EnablePreviewDataSharing: pulumi.Bool(true),
/// EnableDataSharing:        pulumi.Bool(true),
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
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSetting;
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSettingArgs;
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
/// var example = new DataSharingWithGoogleSetting("example", DataSharingWithGoogleSettingArgs.builder()
/// .dataSharingWithGoogleSettingId("ls1-tf")
/// .location("global")
/// .labels(Map.of("my_key", "my_value"))
/// .enablePreviewDataSharing(true)
/// .enableDataSharing(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:gemini:DataSharingWithGoogleSetting
/// properties:
/// dataSharingWithGoogleSettingId: ls1-tf
/// location: global
/// labels:
/// my_key: my_value
/// enablePreviewDataSharing: true
/// enableDataSharing: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// DataSharingWithGoogleSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}`
///
/// * `{{project}}/{{location}}/{{data_sharing_with_google_setting_id}}`
///
/// * `{{location}}/{{data_sharing_with_google_setting_id}}`
///
/// When using the `pulumi import` command, DataSharingWithGoogleSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default {{project}}/{{location}}/{{data_sharing_with_google_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default {{location}}/{{data_sharing_with_google_setting_id}}
/// ```
class DataSharingWithGoogleSetting extends CustomResource {
  /// Create time stamp.
  late final Output<String> createTime;

  /// Id of the Data Sharing With Google Setting.
  late final Output<String> dataSharingWithGoogleSettingId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether data sharing should be enabled in GA products.
  late final Output<bool?> enableDataSharing;

  /// Whether data sharing should be enabled in Preview products.
  late final Output<bool?> enablePreviewDataSharing;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String?> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/dataSharingWithGoogleSettings/{dataSharingWithGoogleSetting}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Update time stamp.
  late final Output<String> updateTime;

  DataSharingWithGoogleSetting(
    String name, {
    DataSharingWithGoogleSettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.dataSharingWithGoogleSettingId = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.enableDataSharing = Output.createUnknown<bool?>();
    this.enablePreviewDataSharing = Output.createUnknown<bool?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
