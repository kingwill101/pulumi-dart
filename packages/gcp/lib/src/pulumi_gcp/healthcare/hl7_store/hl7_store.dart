import 'package:pulumi/pulumi.dart';
import '../hl7_store_notification_config/hl7_store_notification_config.dart';
import '../hl7_store_notification_configs/hl7_store_notification_configs.dart';
import '../hl7_store_parser_config/hl7_store_parser_config.dart';
import 'hl7_store_args.dart';

/// A Hl7V2Store is a datastore inside a Healthcare dataset that conforms to the FHIR (https://www.hl7.org/hl7V2/STU3/)
/// standard for Healthcare information exchange
///
///
/// To get more information about Hl7V2Store, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets.hl7V2Stores)
/// * How-to Guides
/// * [Creating a HL7v2 Store](https://cloud.google.com/healthcare/docs/how-tos/hl7v2)
///
/// ## Example Usage
///
/// ### Healthcare Hl7 V2 Store Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "hl7-v2-notifications"});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
/// name: "example-dataset",
/// location: "us-central1",
/// });
/// const store = new gcp.healthcare.Hl7Store("store", {
/// name: "example-hl7-v2-store",
/// dataset: dataset.id,
/// rejectDuplicateMessage: true,
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
/// topic = gcp.pubsub.Topic("topic", name="hl7-v2-notifications")
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// store = gcp.healthcare.Hl7Store("store",
/// name="example-hl7-v2-store",
/// dataset=dataset.id,
/// reject_duplicate_message=True,
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
/// Name = "hl7-v2-notifications",
/// });
///
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var store = new Gcp.Healthcare.Hl7Store("store", new()
/// {
/// Name = "example-hl7-v2-store",
/// Dataset = dataset.Id,
/// RejectDuplicateMessage = true,
/// NotificationConfigs = new[]
/// {
/// new Gcp.Healthcare.Inputs.Hl7StoreNotificationConfigsArgs
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
/// Name: pulumi.String("hl7-v2-notifications"),
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
/// _, err = healthcare.NewHl7Store(ctx, "store", &healthcare.Hl7StoreArgs{
/// Name:                   pulumi.String("example-hl7-v2-store"),
/// Dataset:                dataset.ID(),
/// RejectDuplicateMessage: pulumi.Bool(true),
/// NotificationConfigs: healthcare.Hl7StoreNotificationConfigsArray{
/// &healthcare.Hl7StoreNotificationConfigsArgs{
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
/// import com.pulumi.gcp.healthcare.Hl7Store;
/// import com.pulumi.gcp.healthcare.Hl7StoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.Hl7StoreNotificationConfigsArgs;
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
/// .name("hl7-v2-notifications")
/// .build());
///
/// var dataset = new Dataset("dataset", DatasetArgs.builder()
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var store = new Hl7Store("store", Hl7StoreArgs.builder()
/// .name("example-hl7-v2-store")
/// .dataset(dataset.id())
/// .rejectDuplicateMessage(true)
/// .notificationConfigs(Hl7StoreNotificationConfigsArgs.builder()
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
/// store:
/// type: gcp:healthcare:Hl7Store
/// properties:
/// name: example-hl7-v2-store
/// dataset: ${dataset.id}
/// rejectDuplicateMessage: true
/// notificationConfigs:
/// - pubsubTopic: ${topic.id}
/// labels:
/// label1: labelvalue1
/// topic:
/// type: gcp:pubsub:Topic
/// properties:
/// name: hl7-v2-notifications
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// name: example-dataset
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Hl7 V2 Store Parser Config
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
/// const store = new gcp.healthcare.Hl7Store("store", {
/// name: "example-hl7-v2-store",
/// dataset: dataset.id,
/// parserConfig: {
/// allowNullHeader: false,
/// segmentTerminator: "Jw==",
/// schema: `{
/// \\"schemas\\": [{
/// \\"messageSchemaConfigs\\": {
/// \\"ADT_A01\\": {
/// \\"name\\": \\"ADT_A01\\",
/// \\"minOccurs\\": 1,
/// \\"maxOccurs\\": 1,
/// \\"members\\": [{
/// \\"segment\\": {
/// \\"type\\": \\"MSH\\",
/// \\"minOccurs\\": 1,
/// \\"maxOccurs\\": 1
/// }
/// },
/// {
/// \\"segment\\": {
/// \\"type\\": \\"EVN\\",
/// \\"minOccurs\\": 1,
/// \\"maxOccurs\\": 1
/// }
/// },
/// {
/// \\"segment\\": {
/// \\"type\\": \\"PID\\",
/// \\"minOccurs\\": 1,
/// \\"maxOccurs\\": 1
/// }
/// },
/// {
/// \\"segment\\": {
/// \\"type\\": \\"ZPD\\",
/// \\"minOccurs\\": 1,
/// \\"maxOccurs\\": 1
/// }
/// },
/// {
/// \\"segment\\": {
/// \\"type\\": \\"OBX\\"
/// }
/// },
/// {
/// \\"group\\": {
/// \\"name\\": \\"PROCEDURE\\",
/// \\"members\\": [{
/// \\"segment\\": {
/// \\"type\\": \\"PR1\\",
/// \\"minOccurs\\": 1,
/// \\"maxOccurs\\": 1
/// }
/// },
/// {
/// \\"segment\\": {
/// \\"type\\": \\"ROL\\"
/// }
/// }
/// ]
/// }
/// },
/// {
/// \\"segment\\": {
/// \\"type\\": \\"PDA\\",
/// \\"maxOccurs\\": 1
/// }
/// }
/// ]
/// }
/// }
/// }],
/// \\"types\\": [{
/// \\"type\\": [{
/// \\"name\\": \\"ZPD\\",
/// \\"primitive\\": \\"VARIES\\"
/// }
///
/// ]
/// }],
/// \\"ignoreMinOccurs\\": true
/// }
/// `,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// store = gcp.healthcare.Hl7Store("store",
/// name="example-hl7-v2-store",
/// dataset=dataset.id,
/// parser_config={
/// "allow_null_header": False,
/// "segment_terminator": "Jw==",
/// "schema": """{
/// \"schemas\": [{
/// \"messageSchemaConfigs\": {
/// \"ADT_A01\": {
/// \"name\": \"ADT_A01\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1,
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"MSH\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"EVN\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PID\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ZPD\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"OBX\"
/// }
/// },
/// {
/// \"group\": {
/// \"name\": \"PROCEDURE\",
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"PR1\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ROL\"
/// }
/// }
/// ]
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PDA\",
/// \"maxOccurs\": 1
/// }
/// }
/// ]
/// }
/// }
/// }],
/// \"types\": [{
/// \"type\": [{
/// \"name\": \"ZPD\",
/// \"primitive\": \"VARIES\"
/// }
///
/// ]
/// }],
/// \"ignoreMinOccurs\": true
/// }
/// """,
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
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var store = new Gcp.Healthcare.Hl7Store("store", new()
/// {
/// Name = "example-hl7-v2-store",
/// Dataset = dataset.Id,
/// ParserConfig = new Gcp.Healthcare.Inputs.Hl7StoreParserConfigArgs
/// {
/// AllowNullHeader = false,
/// SegmentTerminator = "Jw==",
/// Schema = @"{
/// \""schemas\"": [{
/// \""messageSchemaConfigs\"": {
/// \""ADT_A01\"": {
/// \""name\"": \""ADT_A01\"",
/// \""minOccurs\"": 1,
/// \""maxOccurs\"": 1,
/// \""members\"": [{
/// \""segment\"": {
/// \""type\"": \""MSH\"",
/// \""minOccurs\"": 1,
/// \""maxOccurs\"": 1
/// }
/// },
/// {
/// \""segment\"": {
/// \""type\"": \""EVN\"",
/// \""minOccurs\"": 1,
/// \""maxOccurs\"": 1
/// }
/// },
/// {
/// \""segment\"": {
/// \""type\"": \""PID\"",
/// \""minOccurs\"": 1,
/// \""maxOccurs\"": 1
/// }
/// },
/// {
/// \""segment\"": {
/// \""type\"": \""ZPD\"",
/// \""minOccurs\"": 1,
/// \""maxOccurs\"": 1
/// }
/// },
/// {
/// \""segment\"": {
/// \""type\"": \""OBX\""
/// }
/// },
/// {
/// \""group\"": {
/// \""name\"": \""PROCEDURE\"",
/// \""members\"": [{
/// \""segment\"": {
/// \""type\"": \""PR1\"",
/// \""minOccurs\"": 1,
/// \""maxOccurs\"": 1
/// }
/// },
/// {
/// \""segment\"": {
/// \""type\"": \""ROL\""
/// }
/// }
/// ]
/// }
/// },
/// {
/// \""segment\"": {
/// \""type\"": \""PDA\"",
/// \""maxOccurs\"": 1
/// }
/// }
/// ]
/// }
/// }
/// }],
/// \""types\"": [{
/// \""type\"": [{
/// \""name\"": \""ZPD\"",
/// \""primitive\"": \""VARIES\""
/// }
///
/// ]
/// }],
/// \""ignoreMinOccurs\"": true
/// }
/// ",
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
/// _, err = healthcare.NewHl7Store(ctx, "store", &healthcare.Hl7StoreArgs{
/// Name:    pulumi.String("example-hl7-v2-store"),
/// Dataset: dataset.ID(),
/// ParserConfig: &healthcare.Hl7StoreParserConfigArgs{
/// AllowNullHeader:   pulumi.Bool(false),
/// SegmentTerminator: pulumi.String("Jw=="),
/// Schema: pulumi.String(`{
/// \"schemas\": [{
/// \"messageSchemaConfigs\": {
/// \"ADT_A01\": {
/// \"name\": \"ADT_A01\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1,
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"MSH\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"EVN\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PID\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ZPD\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"OBX\"
/// }
/// },
/// {
/// \"group\": {
/// \"name\": \"PROCEDURE\",
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"PR1\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ROL\"
/// }
/// }
/// ]
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PDA\",
/// \"maxOccurs\": 1
/// }
/// }
/// ]
/// }
/// }
/// }],
/// \"types\": [{
/// \"type\": [{
/// \"name\": \"ZPD\",
/// \"primitive\": \"VARIES\"
/// }
///
/// ]
/// }],
/// \"ignoreMinOccurs\": true
/// }
/// `),
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
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.Hl7Store;
/// import com.pulumi.gcp.healthcare.Hl7StoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.Hl7StoreParserConfigArgs;
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
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var store = new Hl7Store("store", Hl7StoreArgs.builder()
/// .name("example-hl7-v2-store")
/// .dataset(dataset.id())
/// .parserConfig(Hl7StoreParserConfigArgs.builder()
/// .allowNullHeader(false)
/// .segmentTerminator("Jw==")
/// .schema("""
/// {
/// \"schemas\": [{
/// \"messageSchemaConfigs\": {
/// \"ADT_A01\": {
/// \"name\": \"ADT_A01\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1,
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"MSH\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"EVN\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PID\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ZPD\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"OBX\"
/// }
/// },
/// {
/// \"group\": {
/// \"name\": \"PROCEDURE\",
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"PR1\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ROL\"
/// }
/// }
/// ]
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PDA\",
/// \"maxOccurs\": 1
/// }
/// }
/// ]
/// }
/// }
/// }],
/// \"types\": [{
/// \"type\": [{
/// \"name\": \"ZPD\",
/// \"primitive\": \"VARIES\"
/// }
///
/// ]
/// }],
/// \"ignoreMinOccurs\": true
/// }
/// """)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// store:
/// type: gcp:healthcare:Hl7Store
/// properties:
/// name: example-hl7-v2-store
/// dataset: ${dataset.id}
/// parserConfig:
/// allowNullHeader: false
/// segmentTerminator: Jw==
/// schema: |
/// {
/// \"schemas\": [{
/// \"messageSchemaConfigs\": {
/// \"ADT_A01\": {
/// \"name\": \"ADT_A01\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1,
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"MSH\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"EVN\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PID\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ZPD\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"OBX\"
/// }
/// },
/// {
/// \"group\": {
/// \"name\": \"PROCEDURE\",
/// \"members\": [{
/// \"segment\": {
/// \"type\": \"PR1\",
/// \"minOccurs\": 1,
/// \"maxOccurs\": 1
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"ROL\"
/// }
/// }
/// ]
/// }
/// },
/// {
/// \"segment\": {
/// \"type\": \"PDA\",
/// \"maxOccurs\": 1
/// }
/// }
/// ]
/// }
/// }
/// }],
/// \"types\": [{
/// \"type\": [{
/// \"name\": \"ZPD\",
/// \"primitive\": \"VARIES\"
/// }
///
/// ]
/// }],
/// \"ignoreMinOccurs\": true
/// }
/// dataset:
/// type: gcp:healthcare:Dataset
/// properties:
/// name: example-dataset
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Healthcare Hl7 V2 Store Unschematized
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
/// const store = new gcp.healthcare.Hl7Store("store", {
/// name: "example-hl7-v2-store",
/// dataset: dataset.id,
/// parserConfig: {
/// allowNullHeader: false,
/// segmentTerminator: "Jw==",
/// version: "V2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
/// name="example-dataset",
/// location="us-central1")
/// store = gcp.healthcare.Hl7Store("store",
/// name="example-hl7-v2-store",
/// dataset=dataset.id,
/// parser_config={
/// "allow_null_header": False,
/// "segment_terminator": "Jw==",
/// "version": "V2",
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
/// var dataset = new Gcp.Healthcare.Dataset("dataset", new()
/// {
/// Name = "example-dataset",
/// Location = "us-central1",
/// });
///
/// var store = new Gcp.Healthcare.Hl7Store("store", new()
/// {
/// Name = "example-hl7-v2-store",
/// Dataset = dataset.Id,
/// ParserConfig = new Gcp.Healthcare.Inputs.Hl7StoreParserConfigArgs
/// {
/// AllowNullHeader = false,
/// SegmentTerminator = "Jw==",
/// Version = "V2",
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
/// _, err = healthcare.NewHl7Store(ctx, "store", &healthcare.Hl7StoreArgs{
/// Name:    pulumi.String("example-hl7-v2-store"),
/// Dataset: dataset.ID(),
/// ParserConfig: &healthcare.Hl7StoreParserConfigArgs{
/// AllowNullHeader:   pulumi.Bool(false),
/// SegmentTerminator: pulumi.String("Jw=="),
/// Version:           pulumi.String("V2"),
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
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.Hl7Store;
/// import com.pulumi.gcp.healthcare.Hl7StoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.Hl7StoreParserConfigArgs;
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
/// .name("example-dataset")
/// .location("us-central1")
/// .build());
///
/// var store = new Hl7Store("store", Hl7StoreArgs.builder()
/// .name("example-hl7-v2-store")
/// .dataset(dataset.id())
/// .parserConfig(Hl7StoreParserConfigArgs.builder()
/// .allowNullHeader(false)
/// .segmentTerminator("Jw==")
/// .version("V2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// store:
/// type: gcp:healthcare:Hl7Store
/// properties:
/// name: example-hl7-v2-store
/// dataset: ${dataset.id}
/// parserConfig:
/// allowNullHeader: false
/// segmentTerminator: Jw==
/// version: V2
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
/// Hl7V2Store can be imported using any of these accepted formats:
///
/// * `{{dataset}}/hl7V2Stores/{{name}}`
///
/// * `{{dataset}}/{{name}}`
///
/// When using the `pulumi import` command, Hl7V2Store can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/hl7Store:Hl7Store default {{dataset}}/hl7V2Stores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/hl7Store:Hl7Store default {{dataset}}/{{name}}
/// ```
class Hl7Store extends CustomResource {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final Output<String> dataset;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// User-supplied key-value pairs used to organize HL7v2 stores.
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

  /// The resource name for the Hl7V2Store.
  /// ** Changing this property may recreate the Hl7v2 store (removing all data) **
  late final Output<String> name;

  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`notificationConfig`" pulumi-lang-dotnet="`NotificationConfig`" pulumi-lang-go="`notificationConfig`" pulumi-lang-python="`notification_config`" pulumi-lang-yaml="`notificationConfig`" pulumi-lang-java="`notificationConfig`">`notification_config`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`notificationConfigs`" pulumi-lang-dotnet="`NotificationConfigs`" pulumi-lang-go="`notificationConfigs`" pulumi-lang-python="`notification_configs`" pulumi-lang-yaml="`notificationConfigs`" pulumi-lang-java="`notificationConfigs`">`notification_configs`</span> instead.
  late final Output<Hl7StoreNotificationConfig?> notificationConfig;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// message (both Ingest & Create) on the corresponding notification destination. Only the message name
  /// is sent as part of the notification. Supplied by the client.
  /// Structure is documented below.
  late final Output<List<Hl7StoreNotificationConfigs>?> notificationConfigs;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<Hl7StoreParserConfig> parserConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Determines whether duplicate messages are allowed.
  late final Output<bool?> rejectDuplicateMessage;

  /// The fully qualified name of this dataset
  late final Output<String> selfLink;

  Hl7Store(
    String name, {
    Hl7StoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/hl7Store:Hl7Store',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataset = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.notificationConfig =
        Output.createUnknown<Hl7StoreNotificationConfig?>();
    this.notificationConfigs =
        Output.createUnknown<List<Hl7StoreNotificationConfigs>?>();
    this.parserConfig = Output.createUnknown<Hl7StoreParserConfig>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.rejectDuplicateMessage = Output.createUnknown<bool?>();
    this.selfLink = Output.createUnknown<String>();
  }
}
