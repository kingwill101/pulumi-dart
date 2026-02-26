import 'package:pulumi/pulumi.dart';
import '../data_transfer_config_email_preferences/data_transfer_config_email_preferences.dart';
import '../data_transfer_config_encryption_configuration/data_transfer_config_encryption_configuration.dart';
import '../data_transfer_config_schedule_options/data_transfer_config_schedule_options.dart';
import '../data_transfer_config_sensitive_params/data_transfer_config_sensitive_params.dart';
import 'data_transfer_config_args.dart';

/// Represents a data transfer configuration. A transfer configuration
/// contains all metadata needed to perform a data transfer.
///
///
/// To get more information about Config, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/datatransfer/rest/v1/projects.locations.transferConfigs/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/reference/datatransfer/rest/)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `sensitive_params.secret_access_key_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Bigquerydatatransfer Config Scheduled Query
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const permissions = new gcp.projects.IAMMember("permissions", {
/// project: project.then(project => project.projectId),
/// role: "roles/iam.serviceAccountTokenCreator",
/// member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com`),
/// });
/// const myDataset = new gcp.bigquery.Dataset("my_dataset", {
/// datasetId: "my_dataset",
/// friendlyName: "foo",
/// description: "bar",
/// location: "asia-northeast1",
/// }, {
/// dependsOn: [permissions],
/// });
/// const queryConfig = new gcp.bigquery.DataTransferConfig("query_config", {
/// displayName: "my-query",
/// location: "asia-northeast1",
/// dataSourceId: "scheduled_query",
/// schedule: "first sunday of quarter 00:00",
/// destinationDatasetId: myDataset.datasetId,
/// params: {
/// destination_table_name_template: "my_table",
/// write_disposition: "WRITE_APPEND",
/// query: "SELECT name FROM tabl WHERE x = 'y'",
/// },
/// }, {
/// dependsOn: [permissions],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// permissions = gcp.projects.IAMMember("permissions",
/// project=project.project_id,
/// role="roles/iam.serviceAccountTokenCreator",
/// member=f"serviceAccount:service-{project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com")
/// my_dataset = gcp.bigquery.Dataset("my_dataset",
/// dataset_id="my_dataset",
/// friendly_name="foo",
/// description="bar",
/// location="asia-northeast1",
/// opts = pulumi.ResourceOptions(depends_on=[permissions]))
/// query_config = gcp.bigquery.DataTransferConfig("query_config",
/// display_name="my-query",
/// location="asia-northeast1",
/// data_source_id="scheduled_query",
/// schedule="first sunday of quarter 00:00",
/// destination_dataset_id=my_dataset.dataset_id,
/// params={
/// "destination_table_name_template": "my_table",
/// "write_disposition": "WRITE_APPEND",
/// "query": "SELECT name FROM tabl WHERE x = 'y'",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[permissions]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var permissions = new Gcp.Projects.IAMMember("permissions", new()
/// {
/// Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
/// Role = "roles/iam.serviceAccountTokenCreator",
/// Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com",
/// });
///
/// var myDataset = new Gcp.BigQuery.Dataset("my_dataset", new()
/// {
/// DatasetId = "my_dataset",
/// FriendlyName = "foo",
/// Description = "bar",
/// Location = "asia-northeast1",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// permissions,
/// },
/// });
///
/// var queryConfig = new Gcp.BigQuery.DataTransferConfig("query_config", new()
/// {
/// DisplayName = "my-query",
/// Location = "asia-northeast1",
/// DataSourceId = "scheduled_query",
/// Schedule = "first sunday of quarter 00:00",
/// DestinationDatasetId = myDataset.DatasetId,
/// Params =
/// {
/// { "destination_table_name_template", "my_table" },
/// { "write_disposition", "WRITE_APPEND" },
/// { "query", "SELECT name FROM tabl WHERE x = 'y'" },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// permissions,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// permissions, err := projects.NewIAMMember(ctx, "permissions", &projects.IAMMemberArgs{
/// Project: pulumi.String(project.ProjectId),
/// Role:    pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com", project.Number),
/// })
/// if err != nil {
/// return err
/// }
/// myDataset, err := bigquery.NewDataset(ctx, "my_dataset", &bigquery.DatasetArgs{
/// DatasetId:    pulumi.String("my_dataset"),
/// FriendlyName: pulumi.String("foo"),
/// Description:  pulumi.String("bar"),
/// Location:     pulumi.String("asia-northeast1"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// permissions,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDataTransferConfig(ctx, "query_config", &bigquery.DataTransferConfigArgs{
/// DisplayName:          pulumi.String("my-query"),
/// Location:             pulumi.String("asia-northeast1"),
/// DataSourceId:         pulumi.String("scheduled_query"),
/// Schedule:             pulumi.String("first sunday of quarter 00:00"),
/// DestinationDatasetId: myDataset.DatasetId,
/// Params: pulumi.StringMap{
/// "destination_table_name_template": pulumi.String("my_table"),
/// "write_disposition":               pulumi.String("WRITE_APPEND"),
/// "query":                           pulumi.String("SELECT name FROM tabl WHERE x = 'y'"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// permissions,
/// }))
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
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DataTransferConfig;
/// import com.pulumi.gcp.bigquery.DataTransferConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var permissions = new IAMMember("permissions", IAMMemberArgs.builder()
/// .project(project.projectId())
/// .role("roles/iam.serviceAccountTokenCreator")
/// .member(String.format("serviceAccount:service-%s@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com", project.number()))
/// .build());
///
/// var myDataset = new Dataset("myDataset", DatasetArgs.builder()
/// .datasetId("my_dataset")
/// .friendlyName("foo")
/// .description("bar")
/// .location("asia-northeast1")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(permissions)
/// .build());
///
/// var queryConfig = new DataTransferConfig("queryConfig", DataTransferConfigArgs.builder()
/// .displayName("my-query")
/// .location("asia-northeast1")
/// .dataSourceId("scheduled_query")
/// .schedule("first sunday of quarter 00:00")
/// .destinationDatasetId(myDataset.datasetId())
/// .params(Map.ofEntries(
/// Map.entry("destination_table_name_template", "my_table"),
/// Map.entry("write_disposition", "WRITE_APPEND"),
/// Map.entry("query", "SELECT name FROM tabl WHERE x = 'y'")
/// ))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(permissions)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// permissions:
/// type: gcp:projects:IAMMember
/// properties:
/// project: ${project.projectId}
/// role: roles/iam.serviceAccountTokenCreator
/// member: serviceAccount:service-${project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com
/// queryConfig:
/// type: gcp:bigquery:DataTransferConfig
/// name: query_config
/// properties:
/// displayName: my-query
/// location: asia-northeast1
/// dataSourceId: scheduled_query
/// schedule: first sunday of quarter 00:00
/// destinationDatasetId: ${myDataset.datasetId}
/// params:
/// destination_table_name_template: my_table
/// write_disposition: WRITE_APPEND
/// query: SELECT name FROM tabl WHERE x = 'y'
/// options:
/// dependsOn:
/// - ${permissions}
/// myDataset:
/// type: gcp:bigquery:Dataset
/// name: my_dataset
/// properties:
/// datasetId: my_dataset
/// friendlyName: foo
/// description: bar
/// location: asia-northeast1
/// options:
/// dependsOn:
/// - ${permissions}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Bigquerydatatransfer Config Cmek
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const permissions = new gcp.projects.IAMMember("permissions", {
/// project: project.then(project => project.projectId),
/// role: "roles/iam.serviceAccountTokenCreator",
/// member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com`),
/// });
/// const myDataset = new gcp.bigquery.Dataset("my_dataset", {
/// datasetId: "example_dataset",
/// friendlyName: "foo",
/// description: "bar",
/// location: "asia-northeast1",
/// }, {
/// dependsOn: [permissions],
/// });
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
/// name: "example-keyring",
/// location: "us",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
/// name: "example-key",
/// keyRing: keyRing.id,
/// });
/// const queryConfigCmek = new gcp.bigquery.DataTransferConfig("query_config_cmek", {
/// displayName: "display-name",
/// location: "asia-northeast1",
/// dataSourceId: "scheduled_query",
/// schedule: "first sunday of quarter 00:00",
/// destinationDatasetId: myDataset.datasetId,
/// params: {
/// destination_table_name_template: "my_table",
/// write_disposition: "WRITE_APPEND",
/// query: "SELECT name FROM tabl WHERE x = 'y'",
/// },
/// encryptionConfiguration: {
/// kmsKeyName: cryptoKey.id,
/// },
/// }, {
/// dependsOn: [permissions],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// permissions = gcp.projects.IAMMember("permissions",
/// project=project.project_id,
/// role="roles/iam.serviceAccountTokenCreator",
/// member=f"serviceAccount:service-{project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com")
/// my_dataset = gcp.bigquery.Dataset("my_dataset",
/// dataset_id="example_dataset",
/// friendly_name="foo",
/// description="bar",
/// location="asia-northeast1",
/// opts = pulumi.ResourceOptions(depends_on=[permissions]))
/// key_ring = gcp.kms.KeyRing("key_ring",
/// name="example-keyring",
/// location="us")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
/// name="example-key",
/// key_ring=key_ring.id)
/// query_config_cmek = gcp.bigquery.DataTransferConfig("query_config_cmek",
/// display_name="display-name",
/// location="asia-northeast1",
/// data_source_id="scheduled_query",
/// schedule="first sunday of quarter 00:00",
/// destination_dataset_id=my_dataset.dataset_id,
/// params={
/// "destination_table_name_template": "my_table",
/// "write_disposition": "WRITE_APPEND",
/// "query": "SELECT name FROM tabl WHERE x = 'y'",
/// },
/// encryption_configuration={
/// "kms_key_name": crypto_key.id,
/// },
/// opts = pulumi.ResourceOptions(depends_on=[permissions]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var permissions = new Gcp.Projects.IAMMember("permissions", new()
/// {
/// Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
/// Role = "roles/iam.serviceAccountTokenCreator",
/// Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com",
/// });
///
/// var myDataset = new Gcp.BigQuery.Dataset("my_dataset", new()
/// {
/// DatasetId = "example_dataset",
/// FriendlyName = "foo",
/// Description = "bar",
/// Location = "asia-northeast1",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// permissions,
/// },
/// });
///
/// var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
/// {
/// Name = "example-keyring",
/// Location = "us",
/// });
///
/// var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
/// {
/// Name = "example-key",
/// KeyRing = keyRing.Id,
/// });
///
/// var queryConfigCmek = new Gcp.BigQuery.DataTransferConfig("query_config_cmek", new()
/// {
/// DisplayName = "display-name",
/// Location = "asia-northeast1",
/// DataSourceId = "scheduled_query",
/// Schedule = "first sunday of quarter 00:00",
/// DestinationDatasetId = myDataset.DatasetId,
/// Params =
/// {
/// { "destination_table_name_template", "my_table" },
/// { "write_disposition", "WRITE_APPEND" },
/// { "query", "SELECT name FROM tabl WHERE x = 'y'" },
/// },
/// EncryptionConfiguration = new Gcp.BigQuery.Inputs.DataTransferConfigEncryptionConfigurationArgs
/// {
/// KmsKeyName = cryptoKey.Id,
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// permissions,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// permissions, err := projects.NewIAMMember(ctx, "permissions", &projects.IAMMemberArgs{
/// Project: pulumi.String(project.ProjectId),
/// Role:    pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com", project.Number),
/// })
/// if err != nil {
/// return err
/// }
/// myDataset, err := bigquery.NewDataset(ctx, "my_dataset", &bigquery.DatasetArgs{
/// DatasetId:    pulumi.String("example_dataset"),
/// FriendlyName: pulumi.String("foo"),
/// Description:  pulumi.String("bar"),
/// Location:     pulumi.String("asia-northeast1"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// permissions,
/// }))
/// if err != nil {
/// return err
/// }
/// keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// Name:     pulumi.String("example-keyring"),
/// Location: pulumi.String("us"),
/// })
/// if err != nil {
/// return err
/// }
/// cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// Name:    pulumi.String("example-key"),
/// KeyRing: keyRing.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDataTransferConfig(ctx, "query_config_cmek", &bigquery.DataTransferConfigArgs{
/// DisplayName:          pulumi.String("display-name"),
/// Location:             pulumi.String("asia-northeast1"),
/// DataSourceId:         pulumi.String("scheduled_query"),
/// Schedule:             pulumi.String("first sunday of quarter 00:00"),
/// DestinationDatasetId: myDataset.DatasetId,
/// Params: pulumi.StringMap{
/// "destination_table_name_template": pulumi.String("my_table"),
/// "write_disposition":               pulumi.String("WRITE_APPEND"),
/// "query":                           pulumi.String("SELECT name FROM tabl WHERE x = 'y'"),
/// },
/// EncryptionConfiguration: &bigquery.DataTransferConfigEncryptionConfigurationArgs{
/// KmsKeyName: cryptoKey.ID(),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// permissions,
/// }))
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
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.bigquery.DataTransferConfig;
/// import com.pulumi.gcp.bigquery.DataTransferConfigArgs;
/// import com.pulumi.gcp.bigquery.inputs.DataTransferConfigEncryptionConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var permissions = new IAMMember("permissions", IAMMemberArgs.builder()
/// .project(project.projectId())
/// .role("roles/iam.serviceAccountTokenCreator")
/// .member(String.format("serviceAccount:service-%s@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com", project.number()))
/// .build());
///
/// var myDataset = new Dataset("myDataset", DatasetArgs.builder()
/// .datasetId("example_dataset")
/// .friendlyName("foo")
/// .description("bar")
/// .location("asia-northeast1")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(permissions)
/// .build());
///
/// var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
/// .name("example-keyring")
/// .location("us")
/// .build());
///
/// var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
/// .name("example-key")
/// .keyRing(keyRing.id())
/// .build());
///
/// var queryConfigCmek = new DataTransferConfig("queryConfigCmek", DataTransferConfigArgs.builder()
/// .displayName("display-name")
/// .location("asia-northeast1")
/// .dataSourceId("scheduled_query")
/// .schedule("first sunday of quarter 00:00")
/// .destinationDatasetId(myDataset.datasetId())
/// .params(Map.ofEntries(
/// Map.entry("destination_table_name_template", "my_table"),
/// Map.entry("write_disposition", "WRITE_APPEND"),
/// Map.entry("query", "SELECT name FROM tabl WHERE x = 'y'")
/// ))
/// .encryptionConfiguration(DataTransferConfigEncryptionConfigurationArgs.builder()
/// .kmsKeyName(cryptoKey.id())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(permissions)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// permissions:
/// type: gcp:projects:IAMMember
/// properties:
/// project: ${project.projectId}
/// role: roles/iam.serviceAccountTokenCreator
/// member: serviceAccount:service-${project.number}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com
/// queryConfigCmek:
/// type: gcp:bigquery:DataTransferConfig
/// name: query_config_cmek
/// properties:
/// displayName: display-name
/// location: asia-northeast1
/// dataSourceId: scheduled_query
/// schedule: first sunday of quarter 00:00
/// destinationDatasetId: ${myDataset.datasetId}
/// params:
/// destination_table_name_template: my_table
/// write_disposition: WRITE_APPEND
/// query: SELECT name FROM tabl WHERE x = 'y'
/// encryptionConfiguration:
/// kmsKeyName: ${cryptoKey.id}
/// options:
/// dependsOn:
/// - ${permissions}
/// myDataset:
/// type: gcp:bigquery:Dataset
/// name: my_dataset
/// properties:
/// datasetId: example_dataset
/// friendlyName: foo
/// description: bar
/// location: asia-northeast1
/// options:
/// dependsOn:
/// - ${permissions}
/// cryptoKey:
/// type: gcp:kms:CryptoKey
/// name: crypto_key
/// properties:
/// name: example-key
/// keyRing: ${keyRing.id}
/// keyRing:
/// type: gcp:kms:KeyRing
/// name: key_ring
/// properties:
/// name: example-keyring
/// location: us
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Bigquerydatatransfer Config Salesforce
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const myDataset = new gcp.bigquery.Dataset("my_dataset", {
/// datasetId: "my_dataset",
/// description: "My dataset",
/// location: "asia-northeast1",
/// });
/// const salesforceConfig = new gcp.bigquery.DataTransferConfig("salesforce_config", {
/// displayName: "my-salesforce-config",
/// location: "asia-northeast1",
/// dataSourceId: "salesforce",
/// schedule: "first sunday of quarter 00:00",
/// destinationDatasetId: myDataset.datasetId,
/// params: {
/// "connector.authentication.oauth.clientId": "client-id",
/// "connector.authentication.oauth.clientSecret": "client-secret",
/// "connector.authentication.oauth.myDomain": "MyDomainName",
/// assets: "[\"asset-a\",\"asset-b\"]",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// my_dataset = gcp.bigquery.Dataset("my_dataset",
/// dataset_id="my_dataset",
/// description="My dataset",
/// location="asia-northeast1")
/// salesforce_config = gcp.bigquery.DataTransferConfig("salesforce_config",
/// display_name="my-salesforce-config",
/// location="asia-northeast1",
/// data_source_id="salesforce",
/// schedule="first sunday of quarter 00:00",
/// destination_dataset_id=my_dataset.dataset_id,
/// params={
/// "connector.authentication.oauth.clientId": "client-id",
/// "connector.authentication.oauth.clientSecret": "client-secret",
/// "connector.authentication.oauth.myDomain": "MyDomainName",
/// "assets": "[\"asset-a\",\"asset-b\"]",
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
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var myDataset = new Gcp.BigQuery.Dataset("my_dataset", new()
/// {
/// DatasetId = "my_dataset",
/// Description = "My dataset",
/// Location = "asia-northeast1",
/// });
///
/// var salesforceConfig = new Gcp.BigQuery.DataTransferConfig("salesforce_config", new()
/// {
/// DisplayName = "my-salesforce-config",
/// Location = "asia-northeast1",
/// DataSourceId = "salesforce",
/// Schedule = "first sunday of quarter 00:00",
/// DestinationDatasetId = myDataset.DatasetId,
/// Params =
/// {
/// { "connector.authentication.oauth.clientId", "client-id" },
/// { "connector.authentication.oauth.clientSecret", "client-secret" },
/// { "connector.authentication.oauth.myDomain", "MyDomainName" },
/// { "assets", "[\"asset-a\",\"asset-b\"]" },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// myDataset, err := bigquery.NewDataset(ctx, "my_dataset", &bigquery.DatasetArgs{
/// DatasetId:   pulumi.String("my_dataset"),
/// Description: pulumi.String("My dataset"),
/// Location:    pulumi.String("asia-northeast1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewDataTransferConfig(ctx, "salesforce_config", &bigquery.DataTransferConfigArgs{
/// DisplayName:          pulumi.String("my-salesforce-config"),
/// Location:             pulumi.String("asia-northeast1"),
/// DataSourceId:         pulumi.String("salesforce"),
/// Schedule:             pulumi.String("first sunday of quarter 00:00"),
/// DestinationDatasetId: myDataset.DatasetId,
/// Params: pulumi.StringMap{
/// "connector.authentication.oauth.clientId":     pulumi.String("client-id"),
/// "connector.authentication.oauth.clientSecret": pulumi.String("client-secret"),
/// "connector.authentication.oauth.myDomain":     pulumi.String("MyDomainName"),
/// "assets": pulumi.String("[\"asset-a\",\"asset-b\"]"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DataTransferConfig;
/// import com.pulumi.gcp.bigquery.DataTransferConfigArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var myDataset = new Dataset("myDataset", DatasetArgs.builder()
/// .datasetId("my_dataset")
/// .description("My dataset")
/// .location("asia-northeast1")
/// .build());
///
/// var salesforceConfig = new DataTransferConfig("salesforceConfig", DataTransferConfigArgs.builder()
/// .displayName("my-salesforce-config")
/// .location("asia-northeast1")
/// .dataSourceId("salesforce")
/// .schedule("first sunday of quarter 00:00")
/// .destinationDatasetId(myDataset.datasetId())
/// .params(Map.ofEntries(
/// Map.entry("connector.authentication.oauth.clientId", "client-id"),
/// Map.entry("connector.authentication.oauth.clientSecret", "client-secret"),
/// Map.entry("connector.authentication.oauth.myDomain", "MyDomainName"),
/// Map.entry("assets", "[\"asset-a\",\"asset-b\"]")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myDataset:
/// type: gcp:bigquery:Dataset
/// name: my_dataset
/// properties:
/// datasetId: my_dataset
/// description: My dataset
/// location: asia-northeast1
/// salesforceConfig:
/// type: gcp:bigquery:DataTransferConfig
/// name: salesforce_config
/// properties:
/// displayName: my-salesforce-config
/// location: asia-northeast1
/// dataSourceId: salesforce
/// schedule: first sunday of quarter 00:00
/// destinationDatasetId: ${myDataset.datasetId}
/// params:
/// connector.authentication.oauth.clientId: client-id
/// connector.authentication.oauth.clientSecret: client-secret
/// connector.authentication.oauth.myDomain: MyDomainName
/// assets: '["asset-a","asset-b"]'
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default {{name}}
/// ```
class DataTransferConfig extends CustomResource {
  /// The number of days to look back to automatically refresh the data.
  /// For example, if dataRefreshWindowDays = 10, then every day BigQuery
  /// reingests data for [today-10, today-1], rather than ingesting data for
  /// just [today-1]. Only valid if the data source supports the feature.
  /// Set the value to 0 to use the default value.
  late final Output<int?> dataRefreshWindowDays;

  /// The data source id. Cannot be changed once the transfer config is created.
  late final Output<String> dataSourceId;

  /// The BigQuery target dataset id.
  late final Output<String?> destinationDatasetId;

  /// When set to true, no runs are scheduled for a given transfer.
  late final Output<bool?> disabled;

  /// The user specified display name for the transfer config.
  late final Output<String> displayName;

  /// Email notifications will be sent according to these preferences to the
  /// email address of the user who owns this transfer config.
  /// Structure is documented below.
  late final Output<DataTransferConfigEmailPreferences?> emailPreferences;

  /// Represents the encryption configuration for a transfer.
  /// Structure is documented below.
  late final Output<DataTransferConfigEncryptionConfiguration?>
      encryptionConfiguration;

  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final Output<String?> location;

  /// The resource name of the transfer config. Transfer config names have the
  /// form projects/{projectId}/locations/{location}/transferConfigs/{configId}
  /// or projects/{projectId}/transferConfigs/{configId},
  /// where configId is usually a uuid, but this is not required.
  /// The name is ignored when creating a transfer config.
  late final Output<String> name;

  /// Pub/Sub topic where notifications will be sent after transfer runs
  /// associated with this transfer config finish.
  late final Output<String?> notificationPubsubTopic;

  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// **NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) please force recreation of the resource.
  late final Output<Map<String, String>> params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Data transfer schedule. If the data source does not support a custom
  /// schedule, this should be empty. If it is empty, the default value for
  /// the data source will be used. The specified times are in UTC. Examples
  /// of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
  /// jun 13:15, and first sunday of quarter 00:00. See more explanation
  /// about the format here:
  /// https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
  /// NOTE: The minimum interval time between recurring transfers depends
  /// on the data source; refer to the documentation for your data source.
  late final Output<String?> schedule;

  /// Options customizing the data transfer schedule.
  /// Structure is documented below.
  late final Output<DataTransferConfigScheduleOptions?> scheduleOptions;

  /// Different parameters are configured primarily using the the <span pulumi-lang-nodejs="`params`" pulumi-lang-dotnet="`Params`" pulumi-lang-go="`params`" pulumi-lang-python="`params`" pulumi-lang-yaml="`params`" pulumi-lang-java="`params`">`params`</span> field on this
  /// resource. This block contains the parameters which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
  /// in the <span pulumi-lang-nodejs="`params`" pulumi-lang-dotnet="`Params`" pulumi-lang-go="`params`" pulumi-lang-python="`params`" pulumi-lang-yaml="`params`" pulumi-lang-java="`params`">`params`</span> map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  late final Output<DataTransferConfigSensitiveParams?> sensitiveParams;

  /// Service account email. If this field is set, transfer config will
  /// be created with this service account credentials. It requires that
  /// requesting user calling this API has permissions to act as this service account.
  late final Output<String?> serviceAccountName;

  DataTransferConfig(
    String name, {
    DataTransferConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataTransferConfig:DataTransferConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataRefreshWindowDays = Output.createUnknown<int?>();
    this.dataSourceId = Output.createUnknown<String>();
    this.destinationDatasetId = Output.createUnknown<String?>();
    this.disabled = Output.createUnknown<bool?>();
    this.displayName = Output.createUnknown<String>();
    this.emailPreferences =
        Output.createUnknown<DataTransferConfigEmailPreferences?>();
    this.encryptionConfiguration =
        Output.createUnknown<DataTransferConfigEncryptionConfiguration?>();
    this.location = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.notificationPubsubTopic = Output.createUnknown<String?>();
    this.params = Output.createUnknown<Map<String, String>>();
    this.project = Output.createUnknown<String>();
    this.schedule = Output.createUnknown<String?>();
    this.scheduleOptions =
        Output.createUnknown<DataTransferConfigScheduleOptions?>();
    this.sensitiveParams =
        Output.createUnknown<DataTransferConfigSensitiveParams?>();
    this.serviceAccountName = Output.createUnknown<String?>();
  }
}
