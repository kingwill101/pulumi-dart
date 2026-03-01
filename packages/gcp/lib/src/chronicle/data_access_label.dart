import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_access_label_args.dart';

/// A DataAccessLabel is a label on events to define user access to data.
///
///
/// To get more information about DataAccessLabel, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.dataAccessLabels)
/// * How-to Guides
/// * [Introduction to data RBAC](https://cloud.google.com/chronicle/docs/onboard/onboard-datarbac)
///
/// ## Example Usage
///
/// ### Chronicle Dataaccesslabel Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.DataAccessLabel("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     dataAccessLabelId: "label-id",
///     udmQuery: "principal.hostname=\"google.com\"",
///     description: "label-description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.DataAccessLabel("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     data_access_label_id="label-id",
///     udm_query="principal.hostname=\"google.com\"",
///     description="label-description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.DataAccessLabel("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DataAccessLabelId = "label-id",
///         UdmQuery = "principal.hostname=\"google.com\"",
///         Description = "label-description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewDataAccessLabel(ctx, "example", &chronicle.DataAccessLabelArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DataAccessLabelId: pulumi.String("label-id"),
/// 			UdmQuery:          pulumi.String("principal.hostname=\"google.com\""),
/// 			Description:       pulumi.String("label-description"),
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
/// import com.pulumi.gcp.chronicle.DataAccessLabel;
/// import com.pulumi.gcp.chronicle.DataAccessLabelArgs;
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
///         var example = new DataAccessLabel("example", DataAccessLabelArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .dataAccessLabelId("label-id")
///             .udmQuery("principal.hostname=\"google.com\"")
///             .description("label-description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:DataAccessLabel
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       dataAccessLabelId: label-id
///       udmQuery: principal.hostname="google.com"
///       description: label-description
/// ```
///
///
/// ## Import
///
/// DataAccessLabel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessLabels/{{data_access_label_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{data_access_label_id}}`
///
/// * `{{location}}/{{instance}}/{{data_access_label_id}}`
///
/// When using the `pulumi import` command, DataAccessLabel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessLabel:DataAccessLabel default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessLabels/{{data_access_label_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessLabel:DataAccessLabel default {{project}}/{{location}}/{{instance}}/{{data_access_label_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessLabel:DataAccessLabel default {{location}}/{{instance}}/{{data_access_label_id}}
/// ```
class DataAccessLabel extends pulumi.CustomResource {
  /// Output only. The user who created the data access label.
  late final pulumi.Output<String> author;
  /// Output only. The time at which the data access label was created.
  late final pulumi.Output<String> createTime;
  /// Required. The ID to use for the data access label, which will become the label's
  /// display name and the final component of the label's resource name. The
  /// maximum number of characters should be 63. Regex pattern is as per AIP:
  /// https://google.aip.dev/122#resource-id-segments
  late final pulumi.Output<String> dataAccessLabelId;
  /// Optional. A description of the data access label for a human reader.
  late final pulumi.Output<String?> description;
  /// Output only. The short name displayed for the label as it appears on event data. This is same as data access label id.
  late final pulumi.Output<String> displayName;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final pulumi.Output<String> instance;
  /// Output only. The user who last updated the data access label.
  late final pulumi.Output<String> lastEditor;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final pulumi.Output<String> location;
  /// The unique resource name of the data access label. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataAccessLabels/{data_access_label_id}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A UDM query over event data.
  late final pulumi.Output<String> udmQuery;
  /// Output only. The time at which the data access label was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataAccessLabel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataAccessLabel]. {@macro pulumi_chronicle_data_access_label_data_access_label_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataAccessLabel(
    String name, {
    DataAccessLabelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataAccessLabel:DataAccessLabel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.author = registerOutput<String>('author');
    this.createTime = registerOutput<String>('createTime');
    this.dataAccessLabelId = registerOutput<String>('dataAccessLabelId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.instance = registerOutput<String>('instance');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.udmQuery = registerOutput<String>('udmQuery');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
