import 'package:pulumi/pulumi.dart';
import 'row_access_policy_args.dart';

/// Represents access on a subset of rows on the specified table, defined by its filter predicate. Access to the subset of rows is controlled by its IAM policy.
///
///
///
/// ## Example Usage
///
/// ### Bigquery Row Access Policy Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.bigquery.Dataset("example", {
/// datasetId: "dataset_id",
/// location: "US",
/// });
/// const exampleTable = new gcp.bigquery.Table("example", {
/// deletionProtection: false,
/// datasetId: example.datasetId,
/// tableId: "table_id",
/// });
/// const exampleRowAccessPolicy = new gcp.bigquery.RowAccessPolicy("example", {
/// datasetId: example.datasetId,
/// tableId: exampleTable.tableId,
/// policyId: "policy_id",
/// filterPredicate: "nullable_field is not NULL",
/// grantees: ["domain:google.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.bigquery.Dataset("example",
/// dataset_id="dataset_id",
/// location="US")
/// example_table = gcp.bigquery.Table("example",
/// deletion_protection=False,
/// dataset_id=example.dataset_id,
/// table_id="table_id")
/// example_row_access_policy = gcp.bigquery.RowAccessPolicy("example",
/// dataset_id=example.dataset_id,
/// table_id=example_table.table_id,
/// policy_id="policy_id",
/// filter_predicate="nullable_field is not NULL",
/// grantees=["domain:google.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.BigQuery.Dataset("example", new()
/// {
/// DatasetId = "dataset_id",
/// Location = "US",
/// });
///
/// var exampleTable = new Gcp.BigQuery.Table("example", new()
/// {
/// DeletionProtection = false,
/// DatasetId = example.DatasetId,
/// TableId = "table_id",
/// });
///
/// var exampleRowAccessPolicy = new Gcp.BigQuery.RowAccessPolicy("example", new()
/// {
/// DatasetId = example.DatasetId,
/// TableId = exampleTable.TableId,
/// PolicyId = "policy_id",
/// FilterPredicate = "nullable_field is not NULL",
/// Grantees = new[]
/// {
/// "domain:google.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := bigquery.NewDataset(ctx, "example", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("dataset_id"),
/// Location:  pulumi.String("US"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTable, err := bigquery.NewTable(ctx, "example", &bigquery.TableArgs{
/// DeletionProtection: pulumi.Bool(false),
/// DatasetId:          example.DatasetId,
/// TableId:            pulumi.String("table_id"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewRowAccessPolicy(ctx, "example", &bigquery.RowAccessPolicyArgs{
/// DatasetId:       example.DatasetId,
/// TableId:         exampleTable.TableId,
/// PolicyId:        pulumi.String("policy_id"),
/// FilterPredicate: pulumi.String("nullable_field is not NULL"),
/// Grantees: pulumi.StringArray{
/// pulumi.String("domain:google.com"),
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.RowAccessPolicy;
/// import com.pulumi.gcp.bigquery.RowAccessPolicyArgs;
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
/// var example = new Dataset("example", DatasetArgs.builder()
/// .datasetId("dataset_id")
/// .location("US")
/// .build());
///
/// var exampleTable = new Table("exampleTable", TableArgs.builder()
/// .deletionProtection(false)
/// .datasetId(example.datasetId())
/// .tableId("table_id")
/// .build());
///
/// var exampleRowAccessPolicy = new RowAccessPolicy("exampleRowAccessPolicy", RowAccessPolicyArgs.builder()
/// .datasetId(example.datasetId())
/// .tableId(exampleTable.tableId())
/// .policyId("policy_id")
/// .filterPredicate("nullable_field is not NULL")
/// .grantees("domain:google.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: dataset_id
/// location: US
/// exampleTable:
/// type: gcp:bigquery:Table
/// name: example
/// properties:
/// deletionProtection: false
/// datasetId: ${example.datasetId}
/// tableId: table_id
/// exampleRowAccessPolicy:
/// type: gcp:bigquery:RowAccessPolicy
/// name: example
/// properties:
/// datasetId: ${example.datasetId}
/// tableId: ${exampleTable.tableId}
/// policyId: policy_id
/// filterPredicate: nullable_field is not NULL
/// grantees:
/// - domain:google.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RowAccessPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}/rowAccessPolicies/{{policy_id}}`
///
/// * `{{project}}/{{dataset_id}}/{{table_id}}/{{policy_id}}`
///
/// * `{{dataset_id}}/{{table_id}}/{{policy_id}}`
///
/// When using the `pulumi import` command, RowAccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}/rowAccessPolicies/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default {{project}}/{{dataset_id}}/{{table_id}}/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default {{dataset_id}}/{{table_id}}/{{policy_id}}
/// ```
class RowAccessPolicy extends CustomResource {
  /// The time when this row access policy was created, in milliseconds since
  /// the epoch.
  late final Output<String> creationTime;

  /// The ID of the dataset containing this row access policy.
  late final Output<String> datasetId;

  /// A SQL boolean expression that represents the rows defined by this row
  /// access policy, similar to the boolean expression in a WHERE clause of a
  /// SELECT query on a table.
  /// References to other tables, routines, and temporary functions are not
  /// supported.
  /// Examples: region="EU"<span pulumi-lang-nodejs="
  /// dateField " pulumi-lang-dotnet="
  /// DateField " pulumi-lang-go="
  /// dateField " pulumi-lang-python="
  /// date_field " pulumi-lang-yaml="
  /// dateField " pulumi-lang-java="
  /// dateField ">
  /// date_field </span>= CAST('2019-9-27' as DATE)<span pulumi-lang-nodejs="
  /// nullableField " pulumi-lang-dotnet="
  /// NullableField " pulumi-lang-go="
  /// nullableField " pulumi-lang-python="
  /// nullable_field " pulumi-lang-yaml="
  /// nullableField " pulumi-lang-java="
  /// nullableField ">
  /// nullable_field </span>is not NULL<span pulumi-lang-nodejs="
  /// numericField " pulumi-lang-dotnet="
  /// NumericField " pulumi-lang-go="
  /// numericField " pulumi-lang-python="
  /// numeric_field " pulumi-lang-yaml="
  /// numericField " pulumi-lang-java="
  /// numericField ">
  /// numeric_field </span>BETWEEN 1.0 AND 5.0
  late final Output<String> filterPredicate;

  /// Input only. The optional list of<span pulumi-lang-nodejs=" iamMember " pulumi-lang-dotnet=" IamMember " pulumi-lang-go=" iamMember " pulumi-lang-python=" iam_member " pulumi-lang-yaml=" iamMember " pulumi-lang-java=" iamMember "> iam_member </span>users or groups that specifies the initial
  /// members that the row-level access policy should be created with.
  /// grantees types:
  /// - "user:alice@example.com": An email address that represents a specific
  /// Google account.
  /// - "serviceAccount:my-other-app@appspot.gserviceaccount.com": An email
  /// address that represents a service account.
  /// - "group:admins@example.com": An email address that represents a Google
  /// group.
  /// - "domain:example.com":The Google Workspace domain (primary) that
  /// represents all the users of that domain.
  /// - "allAuthenticatedUsers": A special identifier that represents all service
  /// accounts and all users on the internet who have authenticated with a Google
  /// Account. This identifier includes accounts that aren't connected to a
  /// Google Workspace or Cloud Identity domain, such as personal Gmail accounts.
  /// Users who aren't authenticated, such as anonymous visitors, aren't
  /// included.
  /// - "allUsers":A special identifier that represents anyone who is on
  /// the internet, including authenticated and unauthenticated users. Because
  /// BigQuery requires authentication before a user can access the service,
  /// allUsers includes only authenticated users.
  late final Output<List<String>?> grantees;

  /// The time when this row access policy was last modified, in milliseconds
  /// since the epoch.
  late final Output<String> lastModifiedTime;

  /// The ID of the row access policy. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 256 characters.
  late final Output<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The ID of the table containing this row access policy.
  late final Output<String> tableId;

  RowAccessPolicy(
    String name, {
    RowAccessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/rowAccessPolicy:RowAccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.filterPredicate = Output.createUnknown<String>();
    this.grantees = Output.createUnknown<List<String>?>();
    this.lastModifiedTime = Output.createUnknown<String>();
    this.policyId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tableId = Output.createUnknown<String>();
  }
}
