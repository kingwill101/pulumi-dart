import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_policy_args.dart';
import 'data_policy_data_masking_policy.dart';

/// A BigQuery Data Policy
///
///
/// To get more information about DataPolicy, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/bigquerydatapolicy/rest/v1beta1/projects.locations.dataPolicies/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/column-data-masking-intro)
///
/// ## Example Usage
///
/// ### Bigquery Datapolicy Data Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const taxonomy = new gcp.datacatalog.Taxonomy("taxonomy", {
///     region: "us-central1",
///     displayName: "taxonomy",
///     description: "A collection of policy tags",
///     activatedPolicyTypes: ["FINE_GRAINED_ACCESS_CONTROL"],
/// });
/// const policyTag = new gcp.datacatalog.PolicyTag("policy_tag", {
///     taxonomy: taxonomy.id,
///     displayName: "Low security",
///     description: "A policy tag normally associated with low security items",
/// });
/// const dataPolicy = new gcp.bigquerydatapolicy.DataPolicy("data_policy", {
///     location: "us-central1",
///     dataPolicyId: "data_policy",
///     policyTag: policyTag.name,
///     dataPolicyType: "COLUMN_LEVEL_SECURITY_POLICY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// taxonomy = gcp.datacatalog.Taxonomy("taxonomy",
///     region="us-central1",
///     display_name="taxonomy",
///     description="A collection of policy tags",
///     activated_policy_types=["FINE_GRAINED_ACCESS_CONTROL"])
/// policy_tag = gcp.datacatalog.PolicyTag("policy_tag",
///     taxonomy=taxonomy.id,
///     display_name="Low security",
///     description="A policy tag normally associated with low security items")
/// data_policy = gcp.bigquerydatapolicy.DataPolicy("data_policy",
///     location="us-central1",
///     data_policy_id="data_policy",
///     policy_tag=policy_tag.name,
///     data_policy_type="COLUMN_LEVEL_SECURITY_POLICY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var taxonomy = new Gcp.DataCatalog.Taxonomy("taxonomy", new()
///     {
///         Region = "us-central1",
///         DisplayName = "taxonomy",
///         Description = "A collection of policy tags",
///         ActivatedPolicyTypes = new[]
///         {
///             "FINE_GRAINED_ACCESS_CONTROL",
///         },
///     });
///
///     var policyTag = new Gcp.DataCatalog.PolicyTag("policy_tag", new()
///     {
///         Taxonomy = taxonomy.Id,
///         DisplayName = "Low security",
///         Description = "A policy tag normally associated with low security items",
///     });
///
///     var dataPolicy = new Gcp.BigQueryDataPolicy.DataPolicy("data_policy", new()
///     {
///         Location = "us-central1",
///         DataPolicyId = "data_policy",
///         PolicyTag = policyTag.Name,
///         DataPolicyType = "COLUMN_LEVEL_SECURITY_POLICY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		taxonomy, err := datacatalog.NewTaxonomy(ctx, "taxonomy", &datacatalog.TaxonomyArgs{
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("taxonomy"),
/// 			Description: pulumi.String("A collection of policy tags"),
/// 			ActivatedPolicyTypes: pulumi.StringArray{
/// 				pulumi.String("FINE_GRAINED_ACCESS_CONTROL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policyTag, err := datacatalog.NewPolicyTag(ctx, "policy_tag", &datacatalog.PolicyTagArgs{
/// 			Taxonomy:    taxonomy.ID(),
/// 			DisplayName: pulumi.String("Low security"),
/// 			Description: pulumi.String("A policy tag normally associated with low security items"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquerydatapolicy.NewDataPolicy(ctx, "data_policy", &bigquerydatapolicy.DataPolicyArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			DataPolicyId:   pulumi.String("data_policy"),
/// 			PolicyTag:      policyTag.Name,
/// 			DataPolicyType: pulumi.String("COLUMN_LEVEL_SECURITY_POLICY"),
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
/// import com.pulumi.gcp.datacatalog.Taxonomy;
/// import com.pulumi.gcp.datacatalog.TaxonomyArgs;
/// import com.pulumi.gcp.datacatalog.PolicyTag;
/// import com.pulumi.gcp.datacatalog.PolicyTagArgs;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicy;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyArgs;
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
///         var taxonomy = new Taxonomy("taxonomy", TaxonomyArgs.builder()
///             .region("us-central1")
///             .displayName("taxonomy")
///             .description("A collection of policy tags")
///             .activatedPolicyTypes("FINE_GRAINED_ACCESS_CONTROL")
///             .build());
///
///         var policyTag = new PolicyTag("policyTag", PolicyTagArgs.builder()
///             .taxonomy(taxonomy.id())
///             .displayName("Low security")
///             .description("A policy tag normally associated with low security items")
///             .build());
///
///         var dataPolicy = new DataPolicy("dataPolicy", DataPolicyArgs.builder()
///             .location("us-central1")
///             .dataPolicyId("data_policy")
///             .policyTag(policyTag.name())
///             .dataPolicyType("COLUMN_LEVEL_SECURITY_POLICY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataPolicy:
///     type: gcp:bigquerydatapolicy:DataPolicy
///     name: data_policy
///     properties:
///       location: us-central1
///       dataPolicyId: data_policy
///       policyTag: ${policyTag.name}
///       dataPolicyType: COLUMN_LEVEL_SECURITY_POLICY
///   policyTag:
///     type: gcp:datacatalog:PolicyTag
///     name: policy_tag
///     properties:
///       taxonomy: ${taxonomy.id}
///       displayName: Low security
///       description: A policy tag normally associated with low security items
///   taxonomy:
///     type: gcp:datacatalog:Taxonomy
///     properties:
///       region: us-central1
///       displayName: taxonomy
///       description: A collection of policy tags
///       activatedPolicyTypes:
///         - FINE_GRAINED_ACCESS_CONTROL
/// ```
///
/// ### Bigquery Datapolicy Data Policy Routine
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const taxonomy = new gcp.datacatalog.Taxonomy("taxonomy", {
///     region: "us-central1",
///     displayName: "taxonomy",
///     description: "A collection of policy tags",
///     activatedPolicyTypes: ["FINE_GRAINED_ACCESS_CONTROL"],
/// });
/// const policyTag = new gcp.datacatalog.PolicyTag("policy_tag", {
///     taxonomy: taxonomy.id,
///     displayName: "Low security",
///     description: "A policy tag normally associated with low security items",
/// });
/// const test = new gcp.bigquery.Dataset("test", {
///     datasetId: "dataset_id",
///     location: "us-central1",
/// });
/// const customMaskingRoutine = new gcp.bigquery.Routine("custom_masking_routine", {
///     datasetId: test.datasetId,
///     routineId: "custom_masking_routine",
///     routineType: "SCALAR_FUNCTION",
///     language: "SQL",
///     dataGovernanceType: "DATA_MASKING",
///     definitionBody: "SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///     returnType: "{\"typeKind\" :  \"STRING\"}",
///     arguments: [{
///         name: "ssn",
///         dataType: "{\"typeKind\" :  \"STRING\"}",
///     }],
/// });
/// const dataPolicy = new gcp.bigquerydatapolicy.DataPolicy("data_policy", {
///     location: "us-central1",
///     dataPolicyId: "data_policy",
///     policyTag: policyTag.name,
///     dataPolicyType: "DATA_MASKING_POLICY",
///     dataMaskingPolicy: {
///         routine: customMaskingRoutine.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// taxonomy = gcp.datacatalog.Taxonomy("taxonomy",
///     region="us-central1",
///     display_name="taxonomy",
///     description="A collection of policy tags",
///     activated_policy_types=["FINE_GRAINED_ACCESS_CONTROL"])
/// policy_tag = gcp.datacatalog.PolicyTag("policy_tag",
///     taxonomy=taxonomy.id,
///     display_name="Low security",
///     description="A policy tag normally associated with low security items")
/// test = gcp.bigquery.Dataset("test",
///     dataset_id="dataset_id",
///     location="us-central1")
/// custom_masking_routine = gcp.bigquery.Routine("custom_masking_routine",
///     dataset_id=test.dataset_id,
///     routine_id="custom_masking_routine",
///     routine_type="SCALAR_FUNCTION",
///     language="SQL",
///     data_governance_type="DATA_MASKING",
///     definition_body="SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///     return_type="{\"typeKind\" :  \"STRING\"}",
///     arguments=[{
///         "name": "ssn",
///         "data_type": "{\"typeKind\" :  \"STRING\"}",
///     }])
/// data_policy = gcp.bigquerydatapolicy.DataPolicy("data_policy",
///     location="us-central1",
///     data_policy_id="data_policy",
///     policy_tag=policy_tag.name,
///     data_policy_type="DATA_MASKING_POLICY",
///     data_masking_policy={
///         "routine": custom_masking_routine.id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var taxonomy = new Gcp.DataCatalog.Taxonomy("taxonomy", new()
///     {
///         Region = "us-central1",
///         DisplayName = "taxonomy",
///         Description = "A collection of policy tags",
///         ActivatedPolicyTypes = new[]
///         {
///             "FINE_GRAINED_ACCESS_CONTROL",
///         },
///     });
///
///     var policyTag = new Gcp.DataCatalog.PolicyTag("policy_tag", new()
///     {
///         Taxonomy = taxonomy.Id,
///         DisplayName = "Low security",
///         Description = "A policy tag normally associated with low security items",
///     });
///
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///         Location = "us-central1",
///     });
///
///     var customMaskingRoutine = new Gcp.BigQuery.Routine("custom_masking_routine", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "custom_masking_routine",
///         RoutineType = "SCALAR_FUNCTION",
///         Language = "SQL",
///         DataGovernanceType = "DATA_MASKING",
///         DefinitionBody = "SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///         ReturnType = "{\"typeKind\" :  \"STRING\"}",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "ssn",
///                 DataType = "{\"typeKind\" :  \"STRING\"}",
///             },
///         },
///     });
///
///     var dataPolicy = new Gcp.BigQueryDataPolicy.DataPolicy("data_policy", new()
///     {
///         Location = "us-central1",
///         DataPolicyId = "data_policy",
///         PolicyTag = policyTag.Name,
///         DataPolicyType = "DATA_MASKING_POLICY",
///         DataMaskingPolicy = new Gcp.BigQueryDataPolicy.Inputs.DataPolicyDataMaskingPolicyArgs
///         {
///             Routine = customMaskingRoutine.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		taxonomy, err := datacatalog.NewTaxonomy(ctx, "taxonomy", &datacatalog.TaxonomyArgs{
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("taxonomy"),
/// 			Description: pulumi.String("A collection of policy tags"),
/// 			ActivatedPolicyTypes: pulumi.StringArray{
/// 				pulumi.String("FINE_GRAINED_ACCESS_CONTROL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policyTag, err := datacatalog.NewPolicyTag(ctx, "policy_tag", &datacatalog.PolicyTagArgs{
/// 			Taxonomy:    taxonomy.ID(),
/// 			DisplayName: pulumi.String("Low security"),
/// 			Description: pulumi.String("A policy tag normally associated with low security items"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 			Location:  pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customMaskingRoutine, err := bigquery.NewRoutine(ctx, "custom_masking_routine", &bigquery.RoutineArgs{
/// 			DatasetId:          test.DatasetId,
/// 			RoutineId:          pulumi.String("custom_masking_routine"),
/// 			RoutineType:        pulumi.String("SCALAR_FUNCTION"),
/// 			Language:           pulumi.String("SQL"),
/// 			DataGovernanceType: pulumi.String("DATA_MASKING"),
/// 			DefinitionBody:     pulumi.String("SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')"),
/// 			ReturnType:         pulumi.String("{\"typeKind\" :  \"STRING\"}"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:     pulumi.String("ssn"),
/// 					DataType: pulumi.String("{\"typeKind\" :  \"STRING\"}"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquerydatapolicy.NewDataPolicy(ctx, "data_policy", &bigquerydatapolicy.DataPolicyArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			DataPolicyId:   pulumi.String("data_policy"),
/// 			PolicyTag:      policyTag.Name,
/// 			DataPolicyType: pulumi.String("DATA_MASKING_POLICY"),
/// 			DataMaskingPolicy: &bigquerydatapolicy.DataPolicyDataMaskingPolicyArgs{
/// 				Routine: customMaskingRoutine.ID(),
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
/// import com.pulumi.gcp.datacatalog.Taxonomy;
/// import com.pulumi.gcp.datacatalog.TaxonomyArgs;
/// import com.pulumi.gcp.datacatalog.PolicyTag;
/// import com.pulumi.gcp.datacatalog.PolicyTagArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicy;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyArgs;
/// import com.pulumi.gcp.bigquerydatapolicy.inputs.DataPolicyDataMaskingPolicyArgs;
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
///         var taxonomy = new Taxonomy("taxonomy", TaxonomyArgs.builder()
///             .region("us-central1")
///             .displayName("taxonomy")
///             .description("A collection of policy tags")
///             .activatedPolicyTypes("FINE_GRAINED_ACCESS_CONTROL")
///             .build());
///
///         var policyTag = new PolicyTag("policyTag", PolicyTagArgs.builder()
///             .taxonomy(taxonomy.id())
///             .displayName("Low security")
///             .description("A policy tag normally associated with low security items")
///             .build());
///
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .location("us-central1")
///             .build());
///
///         var customMaskingRoutine = new Routine("customMaskingRoutine", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("custom_masking_routine")
///             .routineType("SCALAR_FUNCTION")
///             .language("SQL")
///             .dataGovernanceType("DATA_MASKING")
///             .definitionBody("SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')")
///             .returnType("{\"typeKind\" :  \"STRING\"}")
///             .arguments(RoutineArgumentArgs.builder()
///                 .name("ssn")
///                 .dataType("{\"typeKind\" :  \"STRING\"}")
///                 .build())
///             .build());
///
///         var dataPolicy = new DataPolicy("dataPolicy", DataPolicyArgs.builder()
///             .location("us-central1")
///             .dataPolicyId("data_policy")
///             .policyTag(policyTag.name())
///             .dataPolicyType("DATA_MASKING_POLICY")
///             .dataMaskingPolicy(DataPolicyDataMaskingPolicyArgs.builder()
///                 .routine(customMaskingRoutine.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataPolicy:
///     type: gcp:bigquerydatapolicy:DataPolicy
///     name: data_policy
///     properties:
///       location: us-central1
///       dataPolicyId: data_policy
///       policyTag: ${policyTag.name}
///       dataPolicyType: DATA_MASKING_POLICY
///       dataMaskingPolicy:
///         routine: ${customMaskingRoutine.id}
///   policyTag:
///     type: gcp:datacatalog:PolicyTag
///     name: policy_tag
///     properties:
///       taxonomy: ${taxonomy.id}
///       displayName: Low security
///       description: A policy tag normally associated with low security items
///   taxonomy:
///     type: gcp:datacatalog:Taxonomy
///     properties:
///       region: us-central1
///       displayName: taxonomy
///       description: A collection of policy tags
///       activatedPolicyTypes:
///         - FINE_GRAINED_ACCESS_CONTROL
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///       location: us-central1
///   customMaskingRoutine:
///     type: gcp:bigquery:Routine
///     name: custom_masking_routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: custom_masking_routine
///       routineType: SCALAR_FUNCTION
///       language: SQL
///       dataGovernanceType: DATA_MASKING
///       definitionBody: SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')
///       returnType: '{"typeKind" :  "STRING"}'
///       arguments:
///         - name: ssn
///           dataType: '{"typeKind" :  "STRING"}'
/// ```
///
///
/// ## Import
///
/// DataPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}`
///
/// * `{{project}}/{{location}}/{{data_policy_id}}`
///
/// * `{{location}}/{{data_policy_id}}`
///
/// When using the `pulumi import` command, DataPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicy:DataPolicy default projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicy:DataPolicy default {{project}}/{{location}}/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicy:DataPolicy default {{location}}/{{data_policy_id}}
/// ```
class DataPolicy extends pulumi.CustomResource {
  /// The data masking policy that specifies the data masking rule to use.
  /// Structure is documented below.
  late final pulumi.Output<DataPolicyDataMaskingPolicy?> dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  late final pulumi.Output<String> dataPolicyId;

  /// The enrollment level of the service.
  /// Possible values are: `COLUMN_LEVEL_SECURITY_POLICY`, `DATA_MASKING_POLICY`.
  late final pulumi.Output<String> dataPolicyType;

  /// The name of the location of the data policy.
  late final pulumi.Output<String> location;

  /// Resource name of this data policy, in the format of projects/{project_number}/locations/{locationId}/dataPolicies/{dataPolicyId}.
  late final pulumi.Output<String> name;

  /// Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  late final pulumi.Output<String> policyTag;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [DataPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataPolicy]. {@macro pulumi_bigquerydatapolicy_data_policy_data_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataPolicy(
    String name, {
    DataPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigquerydatapolicy/dataPolicy:DataPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.dataMaskingPolicy = registerOutput<DataPolicyDataMaskingPolicy?>(
      'dataMaskingPolicy',
    );
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.dataPolicyType = registerOutput<String>('dataPolicyType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyTag = registerOutput<String>('policyTag');
    this.project = registerOutput<String>('project');
  }
}
