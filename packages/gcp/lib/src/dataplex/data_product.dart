import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_group.dart';
import 'data_product_args.dart';

/// A data product is a curated collection of data assets, packaged to address
/// specific use cases.
///
/// To get more information about DataProduct, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.dataProducts)
/// * How-to Guides
/// * [Introduction to Data Products](https://cloud.google.com/dataplex/docs/data-products-overview)
///
/// ## Example Usage
///
/// ### Dataplex Data Product Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.dataplex.DataProduct("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     dataProductId: "data-product-basic",
///     displayName: "terraform data product",
///     ownerEmails: ["terraform-test@google.com"],
///     accessGroups: [{
///         id: "analyst",
///         groupId: "analyst",
///         displayName: "Data Analyst",
///         principal: {
///             googleGroup: "tf-test-analysts-_89605@example.com",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.dataplex.DataProduct("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id="data-product-basic",
///     display_name="terraform data product",
///     owner_emails=["terraform-test@google.com"],
///     access_groups=[{
///         "id": "analyst",
///         "group_id": "analyst",
///         "display_name": "Data Analyst",
///         "principal": {
///             "google_group": "tf-test-analysts-_89605@example.com",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.DataPlex.DataProduct("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = "data-product-basic",
///         DisplayName = "terraform data product",
///         OwnerEmails = new[]
///         {
///             "terraform-test@google.com",
///         },
///         AccessGroups = new[]
///         {
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "analyst",
///                 GroupId = "analyst",
///                 DisplayName = "Data Analyst",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     GoogleGroup = "tf-test-analysts-_89605@example.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDataProduct(ctx, "example", &dataplex.DataProductArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: pulumi.String("data-product-basic"),
/// 			DisplayName:   pulumi.String("terraform data product"),
/// 			OwnerEmails: pulumi.StringArray{
/// 				pulumi.String("terraform-test@google.com"),
/// 			},
/// 			AccessGroups: dataplex.DataProductAccessGroupArray{
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("analyst"),
/// 					GroupId:     pulumi.String("analyst"),
/// 					DisplayName: pulumi.String("Data Analyst"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("tf-test-analysts-_89605@example.com"),
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
/// import com.pulumi.gcp.dataplex.DataProduct;
/// import com.pulumi.gcp.dataplex.DataProductArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupPrincipalArgs;
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
///         var example = new DataProduct("example", DataProductArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .dataProductId("data-product-basic")
///             .displayName("terraform data product")
///             .ownerEmails("terraform-test@google.com")
///             .accessGroups(DataProductAccessGroupArgs.builder()
///                 .id("analyst")
///                 .groupId("analyst")
///                 .displayName("Data Analyst")
///                 .principal(DataProductAccessGroupPrincipalArgs.builder()
///                     .googleGroup("tf-test-analysts-_89605@example.com")
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
///     type: gcp:dataplex:DataProduct
///     properties:
///       project: my-project-name
///       location: us-central1
///       dataProductId: data-product-basic
///       displayName: terraform data product
///       ownerEmails:
///         - terraform-test@google.com
///       accessGroups:
///         - id: analyst
///           groupId: analyst
///           displayName: Data Analyst
///           principal:
///             googleGroup: tf-test-analysts-_89605@example.com
/// ```
///
/// ### Dataplex Data Product Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.dataplex.DataProduct("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     dataProductId: "data-product-full",
///     displayName: "DP Full Test: Special Chars !@#$",
///     description: "Updated with emojis 🚀 and brackets {test}",
///     ownerEmails: ["terraform-test@google.com"],
///     labels: {
///         env: "manual-test",
///     },
///     accessGroups: [
///         {
///             id: "analyst",
///             groupId: "analyst",
///             displayName: "Data Analyst - Updated",
///             description: "In-place update verified",
///             principal: {
///                 googleGroup: "tf-test-analysts-_56730@example.com",
///             },
///         },
///         {
///             id: "scientist",
///             groupId: "scientist",
///             displayName: "Data Scientist",
///             principal: {
///                 googleGroup: "tf-test-scientists-_95154@example.com",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.dataplex.DataProduct("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id="data-product-full",
///     display_name="DP Full Test: Special Chars !@#$",
///     description="Updated with emojis 🚀 and brackets {test}",
///     owner_emails=["terraform-test@google.com"],
///     labels={
///         "env": "manual-test",
///     },
///     access_groups=[
///         {
///             "id": "analyst",
///             "group_id": "analyst",
///             "display_name": "Data Analyst - Updated",
///             "description": "In-place update verified",
///             "principal": {
///                 "google_group": "tf-test-analysts-_56730@example.com",
///             },
///         },
///         {
///             "id": "scientist",
///             "group_id": "scientist",
///             "display_name": "Data Scientist",
///             "principal": {
///                 "google_group": "tf-test-scientists-_95154@example.com",
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.DataPlex.DataProduct("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = "data-product-full",
///         DisplayName = "DP Full Test: Special Chars !@#$",
///         Description = "Updated with emojis 🚀 and brackets {test}",
///         OwnerEmails = new[]
///         {
///             "terraform-test@google.com",
///         },
///         Labels =
///         {
///             { "env", "manual-test" },
///         },
///         AccessGroups = new[]
///         {
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "analyst",
///                 GroupId = "analyst",
///                 DisplayName = "Data Analyst - Updated",
///                 Description = "In-place update verified",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     GoogleGroup = "tf-test-analysts-_56730@example.com",
///                 },
///             },
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "scientist",
///                 GroupId = "scientist",
///                 DisplayName = "Data Scientist",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     GoogleGroup = "tf-test-scientists-_95154@example.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDataProduct(ctx, "example", &dataplex.DataProductArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: pulumi.String("data-product-full"),
/// 			DisplayName:   pulumi.String("DP Full Test: Special Chars !@#$"),
/// 			Description:   pulumi.String("Updated with emojis 🚀 and brackets {test}"),
/// 			OwnerEmails: pulumi.StringArray{
/// 				pulumi.String("terraform-test@google.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("manual-test"),
/// 			},
/// 			AccessGroups: dataplex.DataProductAccessGroupArray{
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("analyst"),
/// 					GroupId:     pulumi.String("analyst"),
/// 					DisplayName: pulumi.String("Data Analyst - Updated"),
/// 					Description: pulumi.String("In-place update verified"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("tf-test-analysts-_56730@example.com"),
/// 					},
/// 				},
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("scientist"),
/// 					GroupId:     pulumi.String("scientist"),
/// 					DisplayName: pulumi.String("Data Scientist"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("tf-test-scientists-_95154@example.com"),
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
/// import com.pulumi.gcp.dataplex.DataProduct;
/// import com.pulumi.gcp.dataplex.DataProductArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupPrincipalArgs;
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
///         var example = new DataProduct("example", DataProductArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .dataProductId("data-product-full")
///             .displayName("DP Full Test: Special Chars !@#$")
///             .description("Updated with emojis 🚀 and brackets {test}")
///             .ownerEmails("terraform-test@google.com")
///             .labels(Map.of("env", "manual-test"))
///             .accessGroups(
///                 DataProductAccessGroupArgs.builder()
///                     .id("analyst")
///                     .groupId("analyst")
///                     .displayName("Data Analyst - Updated")
///                     .description("In-place update verified")
///                     .principal(DataProductAccessGroupPrincipalArgs.builder()
///                         .googleGroup("tf-test-analysts-_56730@example.com")
///                         .build())
///                     .build(),
///                 DataProductAccessGroupArgs.builder()
///                     .id("scientist")
///                     .groupId("scientist")
///                     .displayName("Data Scientist")
///                     .principal(DataProductAccessGroupPrincipalArgs.builder()
///                         .googleGroup("tf-test-scientists-_95154@example.com")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:dataplex:DataProduct
///     properties:
///       project: my-project-name
///       location: us-central1
///       dataProductId: data-product-full
///       displayName: 'DP Full Test: Special Chars !@#$'
///       description: "Updated with emojis \U0001F680 and brackets {test}"
///       ownerEmails:
///         - terraform-test@google.com
///       labels:
///         env: manual-test
///       accessGroups:
///         - id: analyst
///           groupId: analyst
///           displayName: Data Analyst - Updated
///           description: In-place update verified
///           principal:
///             googleGroup: tf-test-analysts-_56730@example.com
///         - id: scientist
///           groupId: scientist
///           displayName: Data Scientist
///           principal:
///             googleGroup: tf-test-scientists-_95154@example.com
/// ```
///
///
/// ## Import
///
/// DataProduct can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}`
///
/// * `{{project}}/{{location}}/{{data_product_id}}`
///
/// * `{{location}}/{{data_product_id}}`
///
/// * `{{data_product_id}}`
///
/// When using the `pulumi import` command, DataProduct can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{project}}/{{location}}/{{data_product_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{location}}/{{data_product_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{data_product_id}}
/// ```
class DataProduct extends pulumi.CustomResource {
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  late final pulumi.Output<List<DataProductAccessGroup>?> accessGroups;

  /// Number of associated data assets.
  late final pulumi.Output<int> assetCount;

  /// Creation timestamp.
  late final pulumi.Output<String> createTime;

  /// The ID of the data product.
  late final pulumi.Output<String> dataProductId;

  /// Description of the data product.
  late final pulumi.Output<String?> description;

  /// User-friendly display name.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Checksum for concurrency control.
  late final pulumi.Output<String> etag;

  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the data product.
  late final pulumi.Output<String> location;

  /// Emails of the owners.
  late final pulumi.Output<List<String>> ownerEmails;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// System generated unique ID.
  late final pulumi.Output<String> uid;

  /// Last update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataProduct].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProduct]. {@macro pulumi_dataplex_data_product_data_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProduct(
    String name, {
    DataProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProduct:DataProduct',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGroups =
        registerOutput<List<DataProductAccessGroup>?>('accessGroups');
    this.assetCount = registerOutput<int>('assetCount');
    this.createTime = registerOutput<String>('createTime');
    this.dataProductId = registerOutput<String>('dataProductId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.ownerEmails = registerOutput<List<String>>('ownerEmails');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
