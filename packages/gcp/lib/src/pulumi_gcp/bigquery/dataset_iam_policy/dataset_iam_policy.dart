import 'package:pulumi/pulumi.dart';
import 'dataset_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for BigQuery dataset. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamPolicy`" pulumi-lang-go="`bigquery.DatasetIamPolicy`" pulumi-lang-python="`bigquery.DatasetIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamPolicy`" pulumi-lang-java="`gcp.bigquery.DatasetIamPolicy`">`gcp.bigquery.DatasetIamPolicy`</span>: Authoritative. Sets the IAM policy for the dataset and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-go="`bigquery.DatasetIamBinding`" pulumi-lang-python="`bigquery.DatasetIamBinding`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-java="`gcp.bigquery.DatasetIamBinding`">`gcp.bigquery.DatasetIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataset are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamMember`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamMember`" pulumi-lang-go="`bigquery.DatasetIamMember`" pulumi-lang-python="`bigquery.DatasetIamMember`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamMember`" pulumi-lang-java="`gcp.bigquery.DatasetIamMember`">`gcp.bigquery.DatasetIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataset are preserved.
///
/// These resources are intended to convert the permissions system for BigQuery datasets to the standard IAM interface. For advanced usages, including [creating authorized views](https://cloud.google.com/bigquery/docs/share-access-views), please use either <span pulumi-lang-nodejs="`gcp.bigquery.DatasetAccess`" pulumi-lang-dotnet="`gcp.bigquery.DatasetAccess`" pulumi-lang-go="`bigquery.DatasetAccess`" pulumi-lang-python="`bigquery.DatasetAccess`" pulumi-lang-yaml="`gcp.bigquery.DatasetAccess`" pulumi-lang-java="`gcp.bigquery.DatasetAccess`">`gcp.bigquery.DatasetAccess`</span> or the <span pulumi-lang-nodejs="`access`" pulumi-lang-dotnet="`Access`" pulumi-lang-go="`access`" pulumi-lang-python="`access`" pulumi-lang-yaml="`access`" pulumi-lang-java="`access`">`access`</span> field on <span pulumi-lang-nodejs="`gcp.bigquery.Dataset`" pulumi-lang-dotnet="`gcp.bigquery.Dataset`" pulumi-lang-go="`bigquery.Dataset`" pulumi-lang-python="`bigquery.Dataset`" pulumi-lang-yaml="`gcp.bigquery.Dataset`" pulumi-lang-java="`gcp.bigquery.Dataset`">`gcp.bigquery.Dataset`</span>.
///
/// > **Note:** These resources **cannot** be used with <span pulumi-lang-nodejs="`gcp.bigquery.DatasetAccess`" pulumi-lang-dotnet="`gcp.bigquery.DatasetAccess`" pulumi-lang-go="`bigquery.DatasetAccess`" pulumi-lang-python="`bigquery.DatasetAccess`" pulumi-lang-yaml="`gcp.bigquery.DatasetAccess`" pulumi-lang-java="`gcp.bigquery.DatasetAccess`">`gcp.bigquery.DatasetAccess`</span> resources or the <span pulumi-lang-nodejs="`access`" pulumi-lang-dotnet="`Access`" pulumi-lang-go="`access`" pulumi-lang-python="`access`" pulumi-lang-yaml="`access`" pulumi-lang-java="`access`">`access`</span> field on <span pulumi-lang-nodejs="`gcp.bigquery.Dataset`" pulumi-lang-dotnet="`gcp.bigquery.Dataset`" pulumi-lang-go="`bigquery.Dataset`" pulumi-lang-python="`bigquery.Dataset`" pulumi-lang-yaml="`gcp.bigquery.Dataset`" pulumi-lang-java="`gcp.bigquery.Dataset`">`gcp.bigquery.Dataset`</span> or they will fight over what the policy should be.
///
/// > **Note:** Using any of these resources will remove any authorized view permissions from the dataset. To assign and preserve authorized view permissions use the <span pulumi-lang-nodejs="`gcp.bigquery.DatasetAccess`" pulumi-lang-dotnet="`gcp.bigquery.DatasetAccess`" pulumi-lang-go="`bigquery.DatasetAccess`" pulumi-lang-python="`bigquery.DatasetAccess`" pulumi-lang-yaml="`gcp.bigquery.DatasetAccess`" pulumi-lang-java="`gcp.bigquery.DatasetAccess`">`gcp.bigquery.DatasetAccess`</span> instead.
///
/// > **Note:** Legacy BigQuery roles `OWNER` `WRITER` and `READER` **cannot** be used with any of these IAM resources. Instead use the full role form of: `roles/bigquery.dataOwner` `roles/bigquery.dataEditor` and `roles/bigquery.dataViewer`.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamPolicy`" pulumi-lang-go="`bigquery.DatasetIamPolicy`" pulumi-lang-python="`bigquery.DatasetIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamPolicy`" pulumi-lang-java="`gcp.bigquery.DatasetIamPolicy`">`gcp.bigquery.DatasetIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-go="`bigquery.DatasetIamBinding`" pulumi-lang-python="`bigquery.DatasetIamBinding`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-java="`gcp.bigquery.DatasetIamBinding`">`gcp.bigquery.DatasetIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamMember`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamMember`" pulumi-lang-go="`bigquery.DatasetIamMember`" pulumi-lang-python="`bigquery.DatasetIamMember`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamMember`" pulumi-lang-java="`gcp.bigquery.DatasetIamMember`">`gcp.bigquery.DatasetIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-go="`bigquery.DatasetIamBinding`" pulumi-lang-python="`bigquery.DatasetIamBinding`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamBinding`" pulumi-lang-java="`gcp.bigquery.DatasetIamBinding`">`gcp.bigquery.DatasetIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.DatasetIamMember`" pulumi-lang-dotnet="`gcp.bigquery.DatasetIamMember`" pulumi-lang-go="`bigquery.DatasetIamMember`" pulumi-lang-python="`bigquery.DatasetIamMember`" pulumi-lang-yaml="`gcp.bigquery.DatasetIamMember`" pulumi-lang-java="`gcp.bigquery.DatasetIamMember`">`gcp.bigquery.DatasetIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.DatasetIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquery.DatasetIamPolicy
/// " pulumi-lang-go=" bigquery.DatasetIamPolicy
/// " pulumi-lang-python=" bigquery.DatasetIamPolicy
/// " pulumi-lang-yaml=" gcp.bigquery.DatasetIamPolicy
/// " pulumi-lang-java=" gcp.bigquery.DatasetIamPolicy
/// "> gcp.bigquery.DatasetIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
/// datasetId: datasetDataset.datasetId,
/// policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigquery.dataOwner",
/// "members": ["user:jane@example.com"],
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
/// dataset_id=dataset_dataset.dataset_id,
/// policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/bigquery.dataOwner",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
/// {
/// DatasetId = datasetDataset.DatasetId,
/// PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigquery.dataOwner",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// DatasetId:  datasetDataset.DatasetId,
/// PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
/// final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
/// .datasetId(datasetDataset.datasetId())
/// .policyData(owner.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:bigquery:DatasetIamPolicy
/// properties:
/// datasetId: ${datasetDataset.datasetId}
/// policyData: ${owner.policyData}
/// datasetDataset:
/// type: gcp:bigquery:Dataset
/// name: dataset
/// properties:
/// datasetId: example_dataset
/// variables:
/// owner:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## With IAM condition
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2029_12_31",
/// description: "Expiring at midnight of 2029-12-31",
/// expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
/// datasetId: datasetDataset.datasetId,
/// policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigquery.dataOwner",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2029_12_31",
/// "description": "Expiring at midnight of 2029-12-31",
/// "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
/// dataset_id=dataset_dataset.dataset_id,
/// policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/bigquery.dataOwner",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2029_12_31",
/// Description = "Expiring at midnight of 2029-12-31",
/// Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
/// {
/// DatasetId = datasetDataset.DatasetId,
/// PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigquery.dataOwner",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2029_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2029-12-31"),
/// Expression:  "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// DatasetId:  datasetDataset.DatasetId,
/// PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
/// final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2029_12_31")
/// .description("Expiring at midnight of 2029-12-31")
/// .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
/// .datasetId(datasetDataset.datasetId())
/// .policyData(owner.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:bigquery:DatasetIamPolicy
/// properties:
/// datasetId: ${datasetDataset.datasetId}
/// policyData: ${owner.policyData}
/// datasetDataset:
/// type: gcp:bigquery:Dataset
/// name: dataset
/// properties:
/// datasetId: example_dataset
/// variables:
/// owner:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2029_12_31
/// description: Expiring at midnight of 2029-12-31
/// expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.DatasetIamBinding
/// " pulumi-lang-dotnet=" gcp.bigquery.DatasetIamBinding
/// " pulumi-lang-go=" bigquery.DatasetIamBinding
/// " pulumi-lang-python=" bigquery.DatasetIamBinding
/// " pulumi-lang-yaml=" gcp.bigquery.DatasetIamBinding
/// " pulumi-lang-java=" gcp.bigquery.DatasetIamBinding
/// "> gcp.bigquery.DatasetIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataViewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataViewer",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataViewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataViewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// reader:
/// type: gcp:bigquery:DatasetIamBinding
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataViewer
/// members:
/// - user:jane@example.com
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## With IAM condition
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataViewer",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2029_12_31",
/// description: "Expiring at midnight of 2029-12-31",
/// expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataViewer",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2029_12_31",
/// "description": "Expiring at midnight of 2029-12-31",
/// "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.BigQuery.Inputs.DatasetIamBindingConditionArgs
/// {
/// Title = "expires_after_2029_12_31",
/// Description = "Expiring at midnight of 2029-12-31",
/// Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataViewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &bigquery.DatasetIamBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2029_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamBindingConditionArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataViewer")
/// .members("user:jane@example.com")
/// .condition(DatasetIamBindingConditionArgs.builder()
/// .title("expires_after_2029_12_31")
/// .description("Expiring at midnight of 2029-12-31")
/// .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// reader:
/// type: gcp:bigquery:DatasetIamBinding
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataViewer
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2029_12_31
/// description: Expiring at midnight of 2029-12-31
/// expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.DatasetIamMember
/// " pulumi-lang-dotnet=" gcp.bigquery.DatasetIamMember
/// " pulumi-lang-go=" bigquery.DatasetIamMember
/// " pulumi-lang-python=" bigquery.DatasetIamMember
/// " pulumi-lang-yaml=" gcp.bigquery.DatasetIamMember
/// " pulumi-lang-java=" gcp.bigquery.DatasetIamMember
/// "> gcp.bigquery.DatasetIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataEditor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataEditor",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataEditor",
/// Member = "user:jane@example.com",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataEditor"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataEditor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigquery:DatasetIamMember
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataEditor
/// member: user:jane@example.com
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## With IAM condition
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataEditor",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2029_12_31",
/// description: "Expiring at midnight of 2029-12-31",
/// expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataEditor",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2029_12_31",
/// "description": "Expiring at midnight of 2029-12-31",
/// "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataEditor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.BigQuery.Inputs.DatasetIamMemberConditionArgs
/// {
/// Title = "expires_after_2029_12_31",
/// Description = "Expiring at midnight of 2029-12-31",
/// Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataEditor"),
/// Member:    pulumi.String("user:jane@example.com"),
/// Condition: &bigquery.DatasetIamMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2029_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamMemberConditionArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataEditor")
/// .member("user:jane@example.com")
/// .condition(DatasetIamMemberConditionArgs.builder()
/// .title("expires_after_2029_12_31")
/// .description("Expiring at midnight of 2029-12-31")
/// .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigquery:DatasetIamMember
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataEditor
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2029_12_31
/// description: Expiring at midnight of 2029-12-31
/// expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.DatasetIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquery.DatasetIamPolicy
/// " pulumi-lang-go=" bigquery.DatasetIamPolicy
/// " pulumi-lang-python=" bigquery.DatasetIamPolicy
/// " pulumi-lang-yaml=" gcp.bigquery.DatasetIamPolicy
/// " pulumi-lang-java=" gcp.bigquery.DatasetIamPolicy
/// "> gcp.bigquery.DatasetIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
/// datasetId: datasetDataset.datasetId,
/// policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigquery.dataOwner",
/// "members": ["user:jane@example.com"],
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
/// dataset_id=dataset_dataset.dataset_id,
/// policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/bigquery.dataOwner",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
/// {
/// DatasetId = datasetDataset.DatasetId,
/// PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigquery.dataOwner",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// DatasetId:  datasetDataset.DatasetId,
/// PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
/// final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
/// .datasetId(datasetDataset.datasetId())
/// .policyData(owner.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:bigquery:DatasetIamPolicy
/// properties:
/// datasetId: ${datasetDataset.datasetId}
/// policyData: ${owner.policyData}
/// datasetDataset:
/// type: gcp:bigquery:Dataset
/// name: dataset
/// properties:
/// datasetId: example_dataset
/// variables:
/// owner:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## With IAM condition
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2029_12_31",
/// description: "Expiring at midnight of 2029-12-31",
/// expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
/// datasetId: datasetDataset.datasetId,
/// policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigquery.dataOwner",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2029_12_31",
/// "description": "Expiring at midnight of 2029-12-31",
/// "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
/// dataset_id=dataset_dataset.dataset_id,
/// policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/bigquery.dataOwner",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2029_12_31",
/// Description = "Expiring at midnight of 2029-12-31",
/// Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
/// {
/// DatasetId = datasetDataset.DatasetId,
/// PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigquery.dataOwner",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2029_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2029-12-31"),
/// Expression:  "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// DatasetId:  datasetDataset.DatasetId,
/// PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
/// final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2029_12_31")
/// .description("Expiring at midnight of 2029-12-31")
/// .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
/// .datasetId(datasetDataset.datasetId())
/// .policyData(owner.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:bigquery:DatasetIamPolicy
/// properties:
/// datasetId: ${datasetDataset.datasetId}
/// policyData: ${owner.policyData}
/// datasetDataset:
/// type: gcp:bigquery:Dataset
/// name: dataset
/// properties:
/// datasetId: example_dataset
/// variables:
/// owner:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2029_12_31
/// description: Expiring at midnight of 2029-12-31
/// expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.DatasetIamBinding
/// " pulumi-lang-dotnet=" gcp.bigquery.DatasetIamBinding
/// " pulumi-lang-go=" bigquery.DatasetIamBinding
/// " pulumi-lang-python=" bigquery.DatasetIamBinding
/// " pulumi-lang-yaml=" gcp.bigquery.DatasetIamBinding
/// " pulumi-lang-java=" gcp.bigquery.DatasetIamBinding
/// "> gcp.bigquery.DatasetIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataViewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataViewer",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataViewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataViewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// reader:
/// type: gcp:bigquery:DatasetIamBinding
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataViewer
/// members:
/// - user:jane@example.com
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## With IAM condition
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataViewer",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2029_12_31",
/// description: "Expiring at midnight of 2029-12-31",
/// expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataViewer",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2029_12_31",
/// "description": "Expiring at midnight of 2029-12-31",
/// "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.BigQuery.Inputs.DatasetIamBindingConditionArgs
/// {
/// Title = "expires_after_2029_12_31",
/// Description = "Expiring at midnight of 2029-12-31",
/// Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataViewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &bigquery.DatasetIamBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2029_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamBindingConditionArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataViewer")
/// .members("user:jane@example.com")
/// .condition(DatasetIamBindingConditionArgs.builder()
/// .title("expires_after_2029_12_31")
/// .description("Expiring at midnight of 2029-12-31")
/// .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// reader:
/// type: gcp:bigquery:DatasetIamBinding
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataViewer
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2029_12_31
/// description: Expiring at midnight of 2029-12-31
/// expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.DatasetIamMember
/// " pulumi-lang-dotnet=" gcp.bigquery.DatasetIamMember
/// " pulumi-lang-go=" bigquery.DatasetIamMember
/// " pulumi-lang-python=" bigquery.DatasetIamMember
/// " pulumi-lang-yaml=" gcp.bigquery.DatasetIamMember
/// " pulumi-lang-java=" gcp.bigquery.DatasetIamMember
/// "> gcp.bigquery.DatasetIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataEditor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataEditor",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataEditor",
/// Member = "user:jane@example.com",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataEditor"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataEditor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigquery:DatasetIamMember
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataEditor
/// member: user:jane@example.com
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## With IAM condition
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
/// datasetId: dataset.datasetId,
/// role: "roles/bigquery.dataEditor",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2029_12_31",
/// description: "Expiring at midnight of 2029-12-31",
/// expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
/// dataset_id=dataset.dataset_id,
/// role="roles/bigquery.dataEditor",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2029_12_31",
/// "description": "Expiring at midnight of 2029-12-31",
/// "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.BigQuery.Dataset("dataset", new()
/// {
/// DatasetId = "example_dataset",
/// });
///
/// var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
/// {
/// DatasetId = dataset.DatasetId,
/// Role = "roles/bigquery.dataEditor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.BigQuery.Inputs.DatasetIamMemberConditionArgs
/// {
/// Title = "expires_after_2029_12_31",
/// Description = "Expiring at midnight of 2029-12-31",
/// Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
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
/// dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// DatasetId: pulumi.String("example_dataset"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// DatasetId: dataset.DatasetId,
/// Role:      pulumi.String("roles/bigquery.dataEditor"),
/// Member:    pulumi.String("user:jane@example.com"),
/// Condition: &bigquery.DatasetIamMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2029_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamMemberConditionArgs;
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
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .build());
///
/// var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
/// .datasetId(dataset.datasetId())
/// .role("roles/bigquery.dataEditor")
/// .member("user:jane@example.com")
/// .condition(DatasetIamMemberConditionArgs.builder()
/// .title("expires_after_2029_12_31")
/// .description("Expiring at midnight of 2029-12-31")
/// .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigquery:DatasetIamMember
/// properties:
/// datasetId: ${dataset.datasetId}
/// role: roles/bigquery.dataEditor
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2029_12_31
/// description: Expiring at midnight of 2029-12-31
/// expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// dataset:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: example_dataset
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the BigQuery Dataset resource. For example:
///
/// * `projects/{{project_id}}/datasets/{{dataset_id}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = projects/{{project_id}}/datasets/{{dataset_id}}
///
/// to = google_bigquery_dataset_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:bigquery/datasetIamPolicy:DatasetIamPolicy default projects/{{project_id}}/datasets/{{dataset_id}}
/// ```
class DatasetIamPolicy extends CustomResource {
  /// The dataset ID.
  late final Output<String> datasetId;

  /// (Computed) The etag of the dataset's IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  DatasetIamPolicy(
    String name, {
    DatasetIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datasetIamPolicy:DatasetIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.datasetId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
