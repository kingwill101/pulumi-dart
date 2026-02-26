import 'package:pulumi/pulumi.dart';
import '../fhir_store_consent_config/fhir_store_consent_config.dart';
import '../fhir_store_notification_config/fhir_store_notification_config.dart';
import '../fhir_store_stream_config/fhir_store_stream_config.dart';
import '../fhir_store_validation_config/fhir_store_validation_config.dart';
import 'fhir_store_args.dart';

/// A FhirStore is a datastore inside a Healthcare dataset that conforms to the FHIR (https://www.hl7.org/fhir/STU3/)
/// standard for Healthcare information exchange
///
///
/// To get more information about FhirStore, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets.fhirStores)
/// * How-to Guides
/// * [Creating a FHIR store](https://cloud.google.com/healthcare/docs/how-tos/fhir)
///
/// ## Example Usage
///
/// ### Healthcare Fhir Store Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "fhir-notifications"});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// name: "example-dataset",
/// location: "us-central1",
/// });
/// const _default = new gcp.healthcare.FhirStore("default", {
/// name: "example-fhir-store",
/// dataset: dataset.id,
/// version: "R4",
/// complexDataTypeReferenceParsing: "DISABLED",
/// enableUpdateCreate: false,
/// disableReferentialIntegrity: false,
/// disableResourceVersioning: false,
/// enableHistoryImport: false,
/// defaultSearchHandlingStrict: false,
/// notificationConfigs: [{
/// pubsubTopic: topic.id,
/// }],
/// labels: {
/// label1: "labelvalue1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="fhir-notifications")
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// default = gcp.healthcare.FhirStore("default",
/// name="example-fhir-store",
/// dataset=dataset.id,
/// version="R4",
/// complex_data_type_reference_parsing="DISABLED",
/// enable_update_create=False,
/// disable_referential_integrity=False,
/// disable_resource_versioning=False,
/// enable_history_import=False,
/// default_search_handling_strict=False,
/// notification_configs=[{
/// "pubsub_topic": topic.id,
/// }],
/// labels={
/// "label1": "labelvalue1",
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
/// var topic = new Gcp.PubSub.Topic("topic", new()
/// {
/// Name = "fhir-notifications",
/// });
///
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var @default = new Gcp.Healthcare.FhirStore("default", new()
/// {
/// Name = "example-fhir-store",
/// Dataset = dataset.Id,
/// Version = "R4",
/// ComplexDataTypeReferenceParsing = "DISABLED",
/// EnableUpdateCreate = false,
/// DisableReferentialIntegrity = false,
/// DisableResourceVersioning = false,
/// EnableHistoryImport = false,
/// DefaultSearchHandlingStrict = false,
/// NotificationConfigs = new[]
/// {
/// new Gcp.Healthcare.Inputs.FhirStoreNotificationConfigArgs
/// {
/// PubsubTopic = topic.Id,
/// },
/// },
/// Labels =
/// {
/// { "label1", "labelvalue1" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// Name: pulumi.String("fhir-notifications"),
/// })
/// if err != nil {
/// return err
/// }
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Name:     pulumi.String("example-dataset"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewFhirStore(ctx, "default", &healthcare.FhirStoreArgs{
/// Name:                            pulumi.String("example-fhir-store"),
/// Dataset:                         dataset.ID(),
/// Version:                         pulumi.String("R4"),
/// ComplexDataTypeReferenceParsing: pulumi.String("DISABLED"),
/// EnableUpdateCreate:              pulumi.Bool(false),
/// DisableReferentialIntegrity:     pulumi.Bool(false),
/// DisableResourceVersioning:       pulumi.Bool(false),
/// EnableHistoryImport:             pulumi.Bool(false),
/// DefaultSearchHandlingStrict:     pulumi.Bool(false),
/// NotificationConfigs: healthcare.FhirStoreNotificationConfigArray{
/// &healthcare.FhirStoreNotificationConfigArgs{
/// PubsubTopic: topic.ID(),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "label1": pulumi.String("labelvalue1"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreNotificationConfigArgs;
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
/// var topic = new Topic("topic", TopicArgs.builder()
/// .name("fhir-notifications")
/// .build());
///
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var default_ = new FhirStore("default", FhirStoreArgs.builder()
/// .name("example-fhir-store")
/// .dataset(dataset.id())
/// .version("R4")
/// .complexDataTypeReferenceParsing("DISABLED")
/// .enableUpdateCreate(false)
/// .disableReferentialIntegrity(false)
/// .disableResourceVersioning(false)
/// .enableHistoryImport(false)
/// .defaultSearchHandlingStrict(false)
/// .notificationConfigs(FhirStoreNotificationConfigArgs.builder()
/// .pubsubTopic(topic.id())
/// .build())
/// .labels(Map.of("label1", "labelvalue1"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:healthcare:FhirStore
/// properties:
/// name: example-fhir-store
/// dataset: ${dataset.id}
/// version: R4
/// complexDataTypeReferenceParsing: DISABLED
/// enableUpdateCreate: false
/// disableReferentialIntegrity: false
/// disableResourceVersioning: false
/// enableHistoryImport: false
/// defaultSearchHandlingStrict: false
/// notificationConfigs:
/// - pubsubTopic: ${topic.id}
/// labels:
/// label1: labelvalue1
/// topic:
/// type: gcp:pubsub:Topic
/// properties:
/// name: fhir-notifications
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// name: example-dataset
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Fhir Store Streaming Config
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// name: "example-dataset",
/// location: "us-central1",
/// });
/// const bqDataset = new gcp.bigquery.Dataset("bq_dataset", {
/// datasetId: "bq_example_dataset",
/// friendlyName: "test",
/// description: "This is a test description",
/// location: "US",
/// deleteContentsOnDestroy: true,
/// });
/// const _default = new gcp.healthcare.FhirStore("default", {
/// name: "example-fhir-store",
/// dataset: dataset.id,
/// version: "R4",
/// enableUpdateCreate: false,
/// disableReferentialIntegrity: false,
/// disableResourceVersioning: false,
/// enableHistoryImport: false,
/// labels: {
/// label1: "labelvalue1",
/// },
/// streamConfigs: [{
/// resourceTypes: ["Observation"],
/// bigqueryDestination: {
/// datasetUri: pulumi.interpolate`bq://${bqDataset.project}.${bqDataset.datasetId}`,
/// schemaConfig: {
/// recursiveStructureDepth: 3,
/// lastUpdatedPartitionConfig: {
/// type: "HOUR",
/// expirationMs: "1000000",
/// },
/// },
/// },
/// }],
/// });
/// const topic = new gcp.pubsub.Topic("topic", {name: "fhir-notifications"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// bq_dataset = gcp.bigquery.Dataset("bq_dataset",
/// dataset_id="bq_example_dataset",
/// friendly_name="test",
/// description="This is a test description",
/// location="US",
/// delete_contents_on_destroy=True)
/// default = gcp.healthcare.FhirStore("default",
/// name="example-fhir-store",
/// dataset=dataset.id,
/// version="R4",
/// enable_update_create=False,
/// disable_referential_integrity=False,
/// disable_resource_versioning=False,
/// enable_history_import=False,
/// labels={
/// "label1": "labelvalue1",
/// },
/// stream_configs=[{
/// "resource_types": ["Observation"],
/// "bigquery_destination": {
/// "dataset_uri": pulumi.Output.all(
/// project=bq_dataset.project,
/// dataset_id=bq_dataset.dataset_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}")
/// ,
/// "schema_config": {
/// "recursive_structure_depth": 3,
/// "last_updated_partition_config": {
/// "type": "HOUR",
/// "expiration_ms": "1000000",
/// },
/// },
/// },
/// }])
/// topic = gcp.pubsub.Topic("topic", name="fhir-notifications")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var bqDataset = new Gcp.BigQuery.Dataset("bq_dataset", new()
/// {
/// DatasetId = "bq_example_dataset",
/// FriendlyName = "test",
/// Description = "This is a test description",
/// Location = "US",
/// DeleteContentsOnDestroy = true,
/// });
///
/// var @default = new Gcp.Healthcare.FhirStore("default", new()
/// {
/// Name = "example-fhir-store",
/// Dataset = dataset.Id,
/// Version = "R4",
/// EnableUpdateCreate = false,
/// DisableReferentialIntegrity = false,
/// DisableResourceVersioning = false,
/// EnableHistoryImport = false,
/// Labels =
/// {
/// { "label1", "labelvalue1" },
/// },
/// StreamConfigs = new[]
/// {
/// new Gcp.Healthcare.Inputs.FhirStoreStreamConfigArgs
/// {
/// ResourceTypes = new[]
/// {
/// "Observation",
/// },
/// BigqueryDestination = new Gcp.Healthcare.Inputs.FhirStoreStreamConfigBigqueryDestinationArgs
/// {
/// DatasetUri = Output.Tuple(bqDataset.Project, bqDataset.DatasetId).Apply(values =>
/// {
/// var project = values.Item1;
/// var datasetId = values.Item2;
/// return $"bq://{project}.{datasetId}";
/// }),
/// SchemaConfig = new Gcp.Healthcare.Inputs.FhirStoreStreamConfigBigqueryDestinationSchemaConfigArgs
/// {
/// RecursiveStructureDepth = 3,
/// LastUpdatedPartitionConfig = new Gcp.Healthcare.Inputs.FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfigArgs
/// {
/// Type = "HOUR",
/// ExpirationMs = "1000000",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var topic = new Gcp.PubSub.Topic("topic", new()
/// {
/// Name = "fhir-notifications",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Name:     pulumi.String("example-dataset"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// bqDataset, err := bigquery.NewDataset(ctx, "bq_dataset", &bigquery.DatasetArgs{
/// DatasetId:               pulumi.String("bq_example_dataset"),
/// FriendlyName:            pulumi.String("test"),
/// Description:             pulumi.String("This is a test description"),
/// Location:                pulumi.String("US"),
/// DeleteContentsOnDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewFhirStore(ctx, "default", &healthcare.FhirStoreArgs{
/// Name:                        pulumi.String("example-fhir-store"),
/// Dataset:                     dataset.ID(),
/// Version:                     pulumi.String("R4"),
/// EnableUpdateCreate:          pulumi.Bool(false),
/// DisableReferentialIntegrity: pulumi.Bool(false),
/// DisableResourceVersioning:   pulumi.Bool(false),
/// EnableHistoryImport:         pulumi.Bool(false),
/// Labels: pulumi.StringMap{
/// "label1": pulumi.String("labelvalue1"),
/// },
/// StreamConfigs: healthcare.FhirStoreStreamConfigArray{
/// &healthcare.FhirStoreStreamConfigArgs{
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("Observation"),
/// },
/// BigqueryDestination: &healthcare.FhirStoreStreamConfigBigqueryDestinationArgs{
/// DatasetUri: pulumi.All(bqDataset.Project, bqDataset.DatasetId).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// datasetId := _args[1].(string)
/// return fmt.Sprintf("bq://%v.%v", project, datasetId), nil
/// }).(pulumi.StringOutput),
/// SchemaConfig: &healthcare.FhirStoreStreamConfigBigqueryDestinationSchemaConfigArgs{
/// RecursiveStructureDepth: pulumi.Int(3),
/// LastUpdatedPartitionConfig: &healthcare.FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfigArgs{
/// Type:         pulumi.String("HOUR"),
/// ExpirationMs: pulumi.String("1000000"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// Name: pulumi.String("fhir-notifications"),
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
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreStreamConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreStreamConfigBigqueryDestinationArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreStreamConfigBigqueryDestinationSchemaConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfigArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
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
/// var dataset = new com.pulumi.gcp.healthcare.Dataset("dataset", com.pulumi.gcp.healthcare.DatasetArgs.builder()
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var bqDataset = new com.pulumi.gcp.bigquery.Dataset("bqDataset", com.pulumi.gcp.bigquery.DatasetArgs.builder()
/// .datasetId("bq_example_dataset")
/// .friendlyName("test")
/// .description("This is a test description")
/// .location("US")
/// .deleteContentsOnDestroy(true)
/// .build());
///
/// var default_ = new FhirStore("default", FhirStoreArgs.builder()
/// .name("example-fhir-store")
/// .dataset(dataset.id())
/// .version("R4")
/// .enableUpdateCreate(false)
/// .disableReferentialIntegrity(false)
/// .disableResourceVersioning(false)
/// .enableHistoryImport(false)
/// .labels(Map.of("label1", "labelvalue1"))
/// .streamConfigs(FhirStoreStreamConfigArgs.builder()
/// .resourceTypes("Observation")
/// .bigqueryDestination(FhirStoreStreamConfigBigqueryDestinationArgs.builder()
/// .datasetUri(Output.tuple(bqDataset.project(), bqDataset.datasetId()).applyValue(values -> {
/// var project = values.t1;
/// var datasetId = values.t2;
/// return String.format("bq://%s.%s", project,datasetId);
/// }))
/// .schemaConfig(FhirStoreStreamConfigBigqueryDestinationSchemaConfigArgs.builder()
/// .recursiveStructureDepth(3)
/// .lastUpdatedPartitionConfig(FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfigArgs.builder()
/// .type("HOUR")
/// .expirationMs("1000000")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var topic = new Topic("topic", TopicArgs.builder()
/// .name("fhir-notifications")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:healthcare:FhirStore
/// properties:
/// name: example-fhir-store
/// dataset: ${dataset.id}
/// version: R4
/// enableUpdateCreate: false
/// disableReferentialIntegrity: false
/// disableResourceVersioning: false
/// enableHistoryImport: false
/// labels:
/// label1: labelvalue1
/// streamConfigs:
/// - resourceTypes:
/// - Observation
/// bigqueryDestination:
/// datasetUri: bq://${bqDataset.project}.${bqDataset.datasetId}
/// schemaConfig:
/// recursiveStructureDepth: 3
/// lastUpdatedPartitionConfig:
/// type: HOUR
/// expirationMs: 1e+06
/// topic:
/// type: gcp:pubsub:Topic
/// properties:
/// name: fhir-notifications
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// name: example-dataset
/// location: us-central1
/// bqDataset:
/// type: gcp:bigquery:Dataset
/// name: bq_dataset
/// properties:
/// datasetId: bq_example_dataset
/// friendlyName: test
/// description: This is a test description
/// location: US
/// deleteContentsOnDestroy: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Fhir Store Notification Configs
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "fhir-notifications"});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// name: "example-dataset",
/// location: "us-central1",
/// });
/// const _default = new gcp.healthcare.FhirStore("default", {
/// name: "example-fhir-store",
/// dataset: dataset.id,
/// version: "R4",
/// enableUpdateCreate: false,
/// disableReferentialIntegrity: false,
/// disableResourceVersioning: false,
/// enableHistoryImport: false,
/// labels: {
/// label1: "labelvalue1",
/// },
/// notificationConfigs: [{
/// pubsubTopic: topic.id,
/// sendFullResource: true,
/// sendPreviousResourceOnDelete: true,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="fhir-notifications")
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// default = gcp.healthcare.FhirStore("default",
/// name="example-fhir-store",
/// dataset=dataset.id,
/// version="R4",
/// enable_update_create=False,
/// disable_referential_integrity=False,
/// disable_resource_versioning=False,
/// enable_history_import=False,
/// labels={
/// "label1": "labelvalue1",
/// },
/// notification_configs=[{
/// "pubsub_topic": topic.id,
/// "send_full_resource": True,
/// "send_previous_resource_on_delete": True,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var topic = new Gcp.PubSub.Topic("topic", new()
/// {
/// Name = "fhir-notifications",
/// });
///
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var @default = new Gcp.Healthcare.FhirStore("default", new()
/// {
/// Name = "example-fhir-store",
/// Dataset = dataset.Id,
/// Version = "R4",
/// EnableUpdateCreate = false,
/// DisableReferentialIntegrity = false,
/// DisableResourceVersioning = false,
/// EnableHistoryImport = false,
/// Labels =
/// {
/// { "label1", "labelvalue1" },
/// },
/// NotificationConfigs = new[]
/// {
/// new Gcp.Healthcare.Inputs.FhirStoreNotificationConfigArgs
/// {
/// PubsubTopic = topic.Id,
/// SendFullResource = true,
/// SendPreviousResourceOnDelete = true,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// Name: pulumi.String("fhir-notifications"),
/// })
/// if err != nil {
/// return err
/// }
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Name:     pulumi.String("example-dataset"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewFhirStore(ctx, "default", &healthcare.FhirStoreArgs{
/// Name:                        pulumi.String("example-fhir-store"),
/// Dataset:                     dataset.ID(),
/// Version:                     pulumi.String("R4"),
/// EnableUpdateCreate:          pulumi.Bool(false),
/// DisableReferentialIntegrity: pulumi.Bool(false),
/// DisableResourceVersioning:   pulumi.Bool(false),
/// EnableHistoryImport:         pulumi.Bool(false),
/// Labels: pulumi.StringMap{
/// "label1": pulumi.String("labelvalue1"),
/// },
/// NotificationConfigs: healthcare.FhirStoreNotificationConfigArray{
/// &healthcare.FhirStoreNotificationConfigArgs{
/// PubsubTopic:                  topic.ID(),
/// SendFullResource:             pulumi.Bool(true),
/// SendPreviousResourceOnDelete: pulumi.Bool(true),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreNotificationConfigArgs;
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
/// var topic = new Topic("topic", TopicArgs.builder()
/// .name("fhir-notifications")
/// .build());
///
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var default_ = new FhirStore("default", FhirStoreArgs.builder()
/// .name("example-fhir-store")
/// .dataset(dataset.id())
/// .version("R4")
/// .enableUpdateCreate(false)
/// .disableReferentialIntegrity(false)
/// .disableResourceVersioning(false)
/// .enableHistoryImport(false)
/// .labels(Map.of("label1", "labelvalue1"))
/// .notificationConfigs(FhirStoreNotificationConfigArgs.builder()
/// .pubsubTopic(topic.id())
/// .sendFullResource(true)
/// .sendPreviousResourceOnDelete(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:healthcare:FhirStore
/// properties:
/// name: example-fhir-store
/// dataset: ${dataset.id}
/// version: R4
/// enableUpdateCreate: false
/// disableReferentialIntegrity: false
/// disableResourceVersioning: false
/// enableHistoryImport: false
/// labels:
/// label1: labelvalue1
/// notificationConfigs:
/// - pubsubTopic: ${topic.id}
/// sendFullResource: true
/// sendPreviousResourceOnDelete: true
/// topic:
/// type: gcp:pubsub:Topic
/// properties:
/// name: fhir-notifications
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// name: example-dataset
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Fhir Store Consent Config
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "fhir-notifications"});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// name: "example-dataset",
/// location: "us-central1",
/// });
/// const _default = new gcp.healthcare.FhirStore("default", {
/// name: "example-fhir-store",
/// dataset: dataset.id,
/// version: "R4",
/// complexDataTypeReferenceParsing: "DISABLED",
/// enableUpdateCreate: false,
/// disableReferentialIntegrity: false,
/// disableResourceVersioning: false,
/// enableHistoryImport: false,
/// defaultSearchHandlingStrict: false,
/// notificationConfigs: [{
/// pubsubTopic: topic.id,
/// }],
/// labels: {
/// label1: "labelvalue1",
/// },
/// consentConfig: {
/// version: "V1",
/// accessEnforced: true,
/// consentHeaderHandling: {
/// profile: "REQUIRED_ON_READ",
/// },
/// accessDeterminationLogConfig: {
/// logLevel: "VERBOSE",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="fhir-notifications")
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// default = gcp.healthcare.FhirStore("default",
/// name="example-fhir-store",
/// dataset=dataset.id,
/// version="R4",
/// complex_data_type_reference_parsing="DISABLED",
/// enable_update_create=False,
/// disable_referential_integrity=False,
/// disable_resource_versioning=False,
/// enable_history_import=False,
/// default_search_handling_strict=False,
/// notification_configs=[{
/// "pubsub_topic": topic.id,
/// }],
/// labels={
/// "label1": "labelvalue1",
/// },
/// consent_config={
/// "version": "V1",
/// "access_enforced": True,
/// "consent_header_handling": {
/// "profile": "REQUIRED_ON_READ",
/// },
/// "access_determination_log_config": {
/// "log_level": "VERBOSE",
/// },
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
/// var topic = new Gcp.PubSub.Topic("topic", new()
/// {
/// Name = "fhir-notifications",
/// });
///
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var @default = new Gcp.Healthcare.FhirStore("default", new()
/// {
/// Name = "example-fhir-store",
/// Dataset = dataset.Id,
/// Version = "R4",
/// ComplexDataTypeReferenceParsing = "DISABLED",
/// EnableUpdateCreate = false,
/// DisableReferentialIntegrity = false,
/// DisableResourceVersioning = false,
/// EnableHistoryImport = false,
/// DefaultSearchHandlingStrict = false,
/// NotificationConfigs = new[]
/// {
/// new Gcp.Healthcare.Inputs.FhirStoreNotificationConfigArgs
/// {
/// PubsubTopic = topic.Id,
/// },
/// },
/// Labels =
/// {
/// { "label1", "labelvalue1" },
/// },
/// ConsentConfig = new Gcp.Healthcare.Inputs.FhirStoreConsentConfigArgs
/// {
/// Version = "V1",
/// AccessEnforced = true,
/// ConsentHeaderHandling = new Gcp.Healthcare.Inputs.FhirStoreConsentConfigConsentHeaderHandlingArgs
/// {
/// Profile = "REQUIRED_ON_READ",
/// },
/// AccessDeterminationLogConfig = new Gcp.Healthcare.Inputs.FhirStoreConsentConfigAccessDeterminationLogConfigArgs
/// {
/// LogLevel = "VERBOSE",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// Name: pulumi.String("fhir-notifications"),
/// })
/// if err != nil {
/// return err
/// }
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Name:     pulumi.String("example-dataset"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewFhirStore(ctx, "default", &healthcare.FhirStoreArgs{
/// Name:                            pulumi.String("example-fhir-store"),
/// Dataset:                         dataset.ID(),
/// Version:                         pulumi.String("R4"),
/// ComplexDataTypeReferenceParsing: pulumi.String("DISABLED"),
/// EnableUpdateCreate:              pulumi.Bool(false),
/// DisableReferentialIntegrity:     pulumi.Bool(false),
/// DisableResourceVersioning:       pulumi.Bool(false),
/// EnableHistoryImport:             pulumi.Bool(false),
/// DefaultSearchHandlingStrict:     pulumi.Bool(false),
/// NotificationConfigs: healthcare.FhirStoreNotificationConfigArray{
/// &healthcare.FhirStoreNotificationConfigArgs{
/// PubsubTopic: topic.ID(),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "label1": pulumi.String("labelvalue1"),
/// },
/// ConsentConfig: &healthcare.FhirStoreConsentConfigArgs{
/// Version:        pulumi.String("V1"),
/// AccessEnforced: pulumi.Bool(true),
/// ConsentHeaderHandling: &healthcare.FhirStoreConsentConfigConsentHeaderHandlingArgs{
/// Profile: pulumi.String("REQUIRED_ON_READ"),
/// },
/// AccessDeterminationLogConfig: &healthcare.FhirStoreConsentConfigAccessDeterminationLogConfigArgs{
/// LogLevel: pulumi.String("VERBOSE"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreNotificationConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreConsentConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreConsentConfigConsentHeaderHandlingArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreConsentConfigAccessDeterminationLogConfigArgs;
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
/// var topic = new Topic("topic", TopicArgs.builder()
/// .name("fhir-notifications")
/// .build());
///
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var default_ = new FhirStore("default", FhirStoreArgs.builder()
/// .name("example-fhir-store")
/// .dataset(dataset.id())
/// .version("R4")
/// .complexDataTypeReferenceParsing("DISABLED")
/// .enableUpdateCreate(false)
/// .disableReferentialIntegrity(false)
/// .disableResourceVersioning(false)
/// .enableHistoryImport(false)
/// .defaultSearchHandlingStrict(false)
/// .notificationConfigs(FhirStoreNotificationConfigArgs.builder()
/// .pubsubTopic(topic.id())
/// .build())
/// .labels(Map.of("label1", "labelvalue1"))
/// .consentConfig(FhirStoreConsentConfigArgs.builder()
/// .version("V1")
/// .accessEnforced(true)
/// .consentHeaderHandling(FhirStoreConsentConfigConsentHeaderHandlingArgs.builder()
/// .profile("REQUIRED_ON_READ")
/// .build())
/// .accessDeterminationLogConfig(FhirStoreConsentConfigAccessDeterminationLogConfigArgs.builder()
/// .logLevel("VERBOSE")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:healthcare:FhirStore
/// properties:
/// name: example-fhir-store
/// dataset: ${dataset.id}
/// version: R4
/// complexDataTypeReferenceParsing: DISABLED
/// enableUpdateCreate: false
/// disableReferentialIntegrity: false
/// disableResourceVersioning: false
/// enableHistoryImport: false
/// defaultSearchHandlingStrict: false
/// notificationConfigs:
/// - pubsubTopic: ${topic.id}
/// labels:
/// label1: labelvalue1
/// consentConfig:
/// version: V1
/// accessEnforced: true
/// consentHeaderHandling:
/// profile: REQUIRED_ON_READ
/// accessDeterminationLogConfig:
/// logLevel: VERBOSE
/// topic:
/// type: gcp:pubsub:Topic
/// properties:
/// name: fhir-notifications
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// name: example-dataset
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Fhir Store Validation Config
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "fhir-notifications"});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// name: "example-dataset",
/// location: "us-central1",
/// });
/// const _default = new gcp.healthcare.FhirStore("default", {
/// name: "example-fhir-store",
/// dataset: dataset.id,
/// version: "R4",
/// complexDataTypeReferenceParsing: "DISABLED",
/// enableUpdateCreate: false,
/// disableReferentialIntegrity: false,
/// disableResourceVersioning: false,
/// enableHistoryImport: false,
/// defaultSearchHandlingStrict: false,
/// notificationConfigs: [{
/// pubsubTopic: topic.id,
/// }],
/// labels: {
/// label1: "labelvalue1",
/// },
/// validationConfig: {
/// disableProfileValidation: true,
/// enabledImplementationGuides: [],
/// disableRequiredFieldValidation: true,
/// disableReferenceTypeValidation: true,
/// disableFhirpathValidation: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="fhir-notifications")
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// default = gcp.healthcare.FhirStore("default",
/// name="example-fhir-store",
/// dataset=dataset.id,
/// version="R4",
/// complex_data_type_reference_parsing="DISABLED",
/// enable_update_create=False,
/// disable_referential_integrity=False,
/// disable_resource_versioning=False,
/// enable_history_import=False,
/// default_search_handling_strict=False,
/// notification_configs=[{
/// "pubsub_topic": topic.id,
/// }],
/// labels={
/// "label1": "labelvalue1",
/// },
/// validation_config={
/// "disable_profile_validation": True,
/// "enabled_implementation_guides": [],
/// "disable_required_field_validation": True,
/// "disable_reference_type_validation": True,
/// "disable_fhirpath_validation": True,
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
/// var topic = new Gcp.PubSub.Topic("topic", new()
/// {
/// Name = "fhir-notifications",
/// });
///
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var @default = new Gcp.Healthcare.FhirStore("default", new()
/// {
/// Name = "example-fhir-store",
/// Dataset = dataset.Id,
/// Version = "R4",
/// ComplexDataTypeReferenceParsing = "DISABLED",
/// EnableUpdateCreate = false,
/// DisableReferentialIntegrity = false,
/// DisableResourceVersioning = false,
/// EnableHistoryImport = false,
/// DefaultSearchHandlingStrict = false,
/// NotificationConfigs = new[]
/// {
/// new Gcp.Healthcare.Inputs.FhirStoreNotificationConfigArgs
/// {
/// PubsubTopic = topic.Id,
/// },
/// },
/// Labels =
/// {
/// { "label1", "labelvalue1" },
/// },
/// ValidationConfig = new Gcp.Healthcare.Inputs.FhirStoreValidationConfigArgs
/// {
/// DisableProfileValidation = true,
/// EnabledImplementationGuides = new() { },
/// DisableRequiredFieldValidation = true,
/// DisableReferenceTypeValidation = true,
/// DisableFhirpathValidation = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// Name: pulumi.String("fhir-notifications"),
/// })
/// if err != nil {
/// return err
/// }
/// dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// Name:     pulumi.String("example-dataset"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewFhirStore(ctx, "default", &healthcare.FhirStoreArgs{
/// Name:                            pulumi.String("example-fhir-store"),
/// Dataset:                         dataset.ID(),
/// Version:                         pulumi.String("R4"),
/// ComplexDataTypeReferenceParsing: pulumi.String("DISABLED"),
/// EnableUpdateCreate:              pulumi.Bool(false),
/// DisableReferentialIntegrity:     pulumi.Bool(false),
/// DisableResourceVersioning:       pulumi.Bool(false),
/// EnableHistoryImport:             pulumi.Bool(false),
/// DefaultSearchHandlingStrict:     pulumi.Bool(false),
/// NotificationConfigs: healthcare.FhirStoreNotificationConfigArray{
/// &healthcare.FhirStoreNotificationConfigArgs{
/// PubsubTopic: topic.ID(),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "label1": pulumi.String("labelvalue1"),
/// },
/// ValidationConfig: &healthcare.FhirStoreValidationConfigArgs{
/// DisableProfileValidation:       pulumi.Bool(true),
/// EnabledImplementationGuides:    pulumi.StringArray{},
/// DisableRequiredFieldValidation: pulumi.Bool(true),
/// DisableReferenceTypeValidation: pulumi.Bool(true),
/// DisableFhirpathValidation:      pulumi.Bool(true),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.FhirStore;
/// import com.pulumi.gcp.healthcare.FhirStoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreNotificationConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.FhirStoreValidationConfigArgs;
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
/// var topic = new Topic("topic", TopicArgs.builder()
/// .name("fhir-notifications")
/// .build());
///
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var default_ = new FhirStore("default", FhirStoreArgs.builder()
/// .name("example-fhir-store")
/// .dataset(dataset.id())
/// .version("R4")
/// .complexDataTypeReferenceParsing("DISABLED")
/// .enableUpdateCreate(false)
/// .disableReferentialIntegrity(false)
/// .disableResourceVersioning(false)
/// .enableHistoryImport(false)
/// .defaultSearchHandlingStrict(false)
/// .notificationConfigs(FhirStoreNotificationConfigArgs.builder()
/// .pubsubTopic(topic.id())
/// .build())
/// .labels(Map.of("label1", "labelvalue1"))
/// .validationConfig(FhirStoreValidationConfigArgs.builder()
/// .disableProfileValidation(true)
/// .enabledImplementationGuides()
/// .disableRequiredFieldValidation(true)
/// .disableReferenceTypeValidation(true)
/// .disableFhirpathValidation(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:healthcare:FhirStore
/// properties:
/// name: example-fhir-store
/// dataset: ${dataset.id}
/// version: R4
/// complexDataTypeReferenceParsing: DISABLED
/// enableUpdateCreate: false
/// disableReferentialIntegrity: false
/// disableResourceVersioning: false
/// enableHistoryImport: false
/// defaultSearchHandlingStrict: false
/// notificationConfigs:
/// - pubsubTopic: ${topic.id}
/// labels:
/// label1: labelvalue1
/// validationConfig:
/// disableProfileValidation: true
/// enabledImplementationGuides: []
/// disableRequiredFieldValidation: true
/// disableReferenceTypeValidation: true
/// disableFhirpathValidation: true
/// topic:
/// type: gcp:pubsub:Topic
/// properties:
/// name: fhir-notifications
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// name: example-dataset
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FhirStore can be imported using any of these accepted formats:
///
/// * `{{dataset}}/fhirStores/{{name}}`
///
/// * `{{dataset}}/{{name}}`
///
/// When using the `pulumi import` command, FhirStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/fhirStore:FhirStore default {{dataset}}/fhirStores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/fhirStore:FhirStore default {{dataset}}/{{name}}
/// ```
class FhirStore extends CustomResource {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// Possible values are: `COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED`, `DISABLED`, `ENABLED`.
  late final Output<String> complexDataTypeReferenceParsing;

  /// Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources. Not supported for R5 FHIR version.
  /// Structure is documented below.
  late final Output<FhirStoreConsentConfig?> consentConfig;

  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final Output<String> dataset;

  /// If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.
  /// If false, uses the FHIR specification default handling=lenient which ignores unrecognized search parameters.
  /// The handling can always be changed from the default on an individual API call by setting the HTTP header Prefer: handling=strict or Prefer: handling=lenient.
  late final Output<bool?> defaultSearchHandlingStrict;

  /// Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
  /// creation. The default value is false, meaning that the API will enforce referential integrity and fail the
  /// requests that will result in inconsistent state in the FHIR store. When this field is set to true, the API
  /// will skip referential integrity check. Consequently, operations that rely on references, such as
  /// Patient.get$everything, will not return all the results if broken references exist.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  late final Output<bool?> disableReferentialIntegrity;

  /// Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
  /// of FHIR store. If set to false, which is the default behavior, all write operations will cause historical
  /// versions to be recorded automatically. The historical versions can be fetched through the history APIs, but
  /// cannot be updated. If set to true, no historical versions will be kept. The server will send back errors for
  /// attempts to read the historical versions.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  late final Output<bool?> disableResourceVersioning;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether to allow the bulk import API to accept history bundles and directly insert historical resource
  /// versions into the FHIR store. Importing resource histories creates resource interactions that appear to have
  /// occurred in the past, which clients may not want to allow. If set to false, history bundles within an import
  /// will fail with an error.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  /// ** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store **
  late final Output<bool?> enableHistoryImport;

  /// Whether to allow the ExecuteBundle API to accept history bundles, and directly insert and overwrite historical
  /// resource versions into the FHIR store. If set to false, using history bundles fails with an error.
  late final Output<bool?> enableHistoryModifications;

  /// Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
  /// operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through
  /// the Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit
  /// logs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient
  /// identifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub
  /// notifications.
  late final Output<bool?> enableUpdateCreate;

  /// User-supplied key-value pairs used to organize FHIR stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The resource name for the FhirStore.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  late final Output<String> name;

  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`notificationConfig`" pulumi-lang-dotnet="`NotificationConfig`" pulumi-lang-go="`notificationConfig`" pulumi-lang-python="`notification_config`" pulumi-lang-yaml="`notificationConfig`" pulumi-lang-java="`notificationConfig`">`notification_config`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`notificationConfigs`" pulumi-lang-dotnet="`NotificationConfigs`" pulumi-lang-go="`notificationConfigs`" pulumi-lang-python="`notification_configs`" pulumi-lang-yaml="`notificationConfigs`" pulumi-lang-java="`notificationConfigs`">`notification_configs`</span> instead.
  late final Output<FhirStoreNotificationConfig?> notificationConfig;

  /// A list of notifcation configs that configure the notification for every resource mutation in this FHIR store.
  /// Structure is documented below.
  late final Output<List<FhirStoreNotificationConfig>?> notificationConfigs;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The fully qualified name of this dataset
  late final Output<String> selfLink;

  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in
  /// this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next
  /// resource mutation is streamed to the new location in addition to the existing ones. When a location is removed
  /// from the list, the server stops streaming to that location. Before adding a new config, you must add the required
  /// bigquery.dataEditor role to your project's Cloud Healthcare Service Agent service account. Some lag (typically on
  /// the order of dozens of seconds) is expected before the results show up in the streaming destination.
  /// Structure is documented below.
  late final Output<List<FhirStoreStreamConfig>?> streamConfigs;

  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  /// Structure is documented below.
  late final Output<FhirStoreValidationConfig?> validationConfig;

  /// The FHIR specification version.
  /// Default value is `STU3`.
  /// Possible values are: `DSTU2`, `STU3`, `R4`.
  late final Output<String?> version;

  FhirStore(
    String name, {
    FhirStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/fhirStore:FhirStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.complexDataTypeReferenceParsing = Output.createUnknown<String>();
    this.consentConfig = Output.createUnknown<FhirStoreConsentConfig?>();
    this.dataset = Output.createUnknown<String>();
    this.defaultSearchHandlingStrict = Output.createUnknown<bool?>();
    this.disableReferentialIntegrity = Output.createUnknown<bool?>();
    this.disableResourceVersioning = Output.createUnknown<bool?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.enableHistoryImport = Output.createUnknown<bool?>();
    this.enableHistoryModifications = Output.createUnknown<bool?>();
    this.enableUpdateCreate = Output.createUnknown<bool?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.notificationConfig =
        Output.createUnknown<FhirStoreNotificationConfig?>();
    this.notificationConfigs =
        Output.createUnknown<List<FhirStoreNotificationConfig>?>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.selfLink = Output.createUnknown<String>();
    this.streamConfigs = Output.createUnknown<List<FhirStoreStreamConfig>?>();
    this.validationConfig = Output.createUnknown<FhirStoreValidationConfig?>();
    this.version = Output.createUnknown<String?>();
  }
}
