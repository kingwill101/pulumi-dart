import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_deployed_model/ai_endpoint_deployed_model.dart';
import '../ai_endpoint_encryption_spec/ai_endpoint_encryption_spec.dart';
import '../ai_endpoint_predict_request_response_logging_config/ai_endpoint_predict_request_response_logging_config.dart';
import '../ai_endpoint_private_service_connect_config/ai_endpoint_private_service_connect_config.dart';
import 'ai_endpoint_args.dart';

/// Models are deployed into it, and afterwards Endpoint is called to obtain predictions and explanations.
///
///
/// To get more information about Endpoint, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Endpoint Network
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vertexNetwork = new gcp.compute.Network("vertex_network", {name: "network-name"});
/// const vertexRange = new gcp.compute.GlobalAddress("vertex_range", {
/// name: "address-name",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 24,
/// network: vertexNetwork.id,
/// });
/// const vertexVpcConnection = new gcp.servicenetworking.Connection("vertex_vpc_connection", {
/// network: vertexNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [vertexRange.name],
/// });
/// const bqDataset = new gcp.bigquery.Dataset("bq_dataset", {
/// datasetId: "some_dataset",
/// friendlyName: "logging dataset",
/// description: "This is a dataset that requests are logged to",
/// location: "US",
/// deleteContentsOnDestroy: true,
/// });
/// const project = gcp.organizations.getProject({});
/// const endpoint = new gcp.vertex.AiEndpoint("endpoint", {
/// name: "endpoint-name",
/// displayName: "sample-endpoint",
/// description: "A sample vertex endpoint",
/// location: "us-central1",
/// region: "us-central1",
/// labels: {
/// "label-one": "value-one",
/// },
/// network: pulumi.all([project, vertexNetwork.name]).apply(([project, name]) => `projects/${project.number}/global/networks/${name}`),
/// encryptionSpec: {
/// kmsKeyName: "kms-name",
/// },
/// predictRequestResponseLoggingConfig: {
/// bigqueryDestination: {
/// outputUri: pulumi.all([project, bqDataset.datasetId]).apply(([project, datasetId]) => `bq://${project.projectId}.${datasetId}.request_response_logging`),
/// },
/// enabled: true,
/// samplingRate: 0.1,
/// },
/// trafficSplit: JSON.stringify({
/// "12345": 100,
/// }),
/// }, {
/// dependsOn: [vertexVpcConnection],
/// });
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
/// cryptoKeyId: "kms-name",
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// vertex_network = gcp.compute.Network("vertex_network", name="network-name")
/// vertex_range = gcp.compute.GlobalAddress("vertex_range",
/// name="address-name",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=24,
/// network=vertex_network.id)
/// vertex_vpc_connection = gcp.servicenetworking.Connection("vertex_vpc_connection",
/// network=vertex_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[vertex_range.name])
/// bq_dataset = gcp.bigquery.Dataset("bq_dataset",
/// dataset_id="some_dataset",
/// friendly_name="logging dataset",
/// description="This is a dataset that requests are logged to",
/// location="US",
/// delete_contents_on_destroy=True)
/// project = gcp.organizations.get_project()
/// endpoint = gcp.vertex.AiEndpoint("endpoint",
/// name="endpoint-name",
/// display_name="sample-endpoint",
/// description="A sample vertex endpoint",
/// location="us-central1",
/// region="us-central1",
/// labels={
/// "label-one": "value-one",
/// },
/// network=vertex_network.name.apply(lambda name: f"projects/{project.number}/global/networks/{name}"),
/// encryption_spec={
/// "kms_key_name": "kms-name",
/// },
/// predict_request_response_logging_config={
/// "bigquery_destination": {
/// "output_uri": bq_dataset.dataset_id.apply(lambda dataset_id: f"bq://{project.project_id}.{dataset_id}.request_response_logging"),
/// },
/// "enabled": True,
/// "sampling_rate": 0.1,
/// },
/// traffic_split=json.dumps({
/// "12345": 100,
/// }),
/// opts = pulumi.ResourceOptions(depends_on=[vertex_vpc_connection]))
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
/// crypto_key_id="kms-name",
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var vertexNetwork = new Gcp.Compute.Network("vertex_network", new()
/// {
/// Name = "network-name",
/// });
///
/// var vertexRange = new Gcp.Compute.GlobalAddress("vertex_range", new()
/// {
/// Name = "address-name",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 24,
/// Network = vertexNetwork.Id,
/// });
///
/// var vertexVpcConnection = new Gcp.ServiceNetworking.Connection("vertex_vpc_connection", new()
/// {
/// Network = vertexNetwork.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// vertexRange.Name,
/// },
/// });
///
/// var bqDataset = new Gcp.BigQuery.Dataset("bq_dataset", new()
/// {
/// DatasetId = "some_dataset",
/// FriendlyName = "logging dataset",
/// Description = "This is a dataset that requests are logged to",
/// Location = "US",
/// DeleteContentsOnDestroy = true,
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var endpoint = new Gcp.Vertex.AiEndpoint("endpoint", new()
/// {
/// Name = "endpoint-name",
/// DisplayName = "sample-endpoint",
/// Description = "A sample vertex endpoint",
/// Location = "us-central1",
/// Region = "us-central1",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// Network = Output.Tuple(project, vertexNetwork.Name).Apply(values =>
/// {
/// var project = values.Item1;
/// var name = values.Item2;
/// return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{name}";
/// }),
/// EncryptionSpec = new Gcp.Vertex.Inputs.AiEndpointEncryptionSpecArgs
/// {
/// KmsKeyName = "kms-name",
/// },
/// PredictRequestResponseLoggingConfig = new Gcp.Vertex.Inputs.AiEndpointPredictRequestResponseLoggingConfigArgs
/// {
/// BigqueryDestination = new Gcp.Vertex.Inputs.AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs
/// {
/// OutputUri = Output.Tuple(project, bqDataset.DatasetId).Apply(values =>
/// {
/// var project = values.Item1;
/// var datasetId = values.Item2;
/// return $"bq://{project.Apply(getProjectResult => getProjectResult.ProjectId)}.{datasetId}.request_response_logging";
/// }),
/// },
/// Enabled = true,
/// SamplingRate = 0.1,
/// },
/// TrafficSplit = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["12345"] = 100,
/// }),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// vertexVpcConnection,
/// },
/// });
///
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
/// {
/// CryptoKeyId = "kms-name",
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform.iam.gserviceaccount.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// vertexNetwork, err := compute.NewNetwork(ctx, "vertex_network", &compute.NetworkArgs{
/// Name: pulumi.String("network-name"),
/// })
/// if err != nil {
/// return err
/// }
/// vertexRange, err := compute.NewGlobalAddress(ctx, "vertex_range", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("address-name"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(24),
/// Network:      vertexNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// vertexVpcConnection, err := servicenetworking.NewConnection(ctx, "vertex_vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: vertexNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// vertexRange.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// bqDataset, err := bigquery.NewDataset(ctx, "bq_dataset", &bigquery.DatasetArgs{
/// DatasetId:               pulumi.String("some_dataset"),
/// FriendlyName:            pulumi.String("logging dataset"),
/// Description:             pulumi.String("This is a dataset that requests are logged to"),
/// Location:                pulumi.String("US"),
/// DeleteContentsOnDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "12345": 100,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = vertex.NewAiEndpoint(ctx, "endpoint", &vertex.AiEndpointArgs{
/// Name:        pulumi.String("endpoint-name"),
/// DisplayName: pulumi.String("sample-endpoint"),
/// Description: pulumi.String("A sample vertex endpoint"),
/// Location:    pulumi.String("us-central1"),
/// Region:      pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// Network: vertexNetwork.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("projects/%v/global/networks/%v", project.Number, name), nil
/// }).(pulumi.StringOutput),
/// EncryptionSpec: &vertex.AiEndpointEncryptionSpecArgs{
/// KmsKeyName: pulumi.String("kms-name"),
/// },
/// PredictRequestResponseLoggingConfig: &vertex.AiEndpointPredictRequestResponseLoggingConfigArgs{
/// BigqueryDestination: &vertex.AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs{
/// OutputUri: bqDataset.DatasetId.ApplyT(func(datasetId string) (string, error) {
/// return fmt.Sprintf("bq://%v.%v.request_response_logging", project.ProjectId, datasetId), nil
/// }).(pulumi.StringOutput),
/// },
/// Enabled:      pulumi.Bool(true),
/// SamplingRate: pulumi.Float64(0.1),
/// },
/// TrafficSplit: pulumi.String(json0),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// vertexVpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.String("kms-name"),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", project.Number),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiEndpoint;
/// import com.pulumi.gcp.vertex.AiEndpointArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointPredictRequestResponseLoggingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var vertexNetwork = new Network("vertexNetwork", NetworkArgs.builder()
/// .name("network-name")
/// .build());
///
/// var vertexRange = new GlobalAddress("vertexRange", GlobalAddressArgs.builder()
/// .name("address-name")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(24)
/// .network(vertexNetwork.id())
/// .build());
///
/// var vertexVpcConnection = new Connection("vertexVpcConnection", ConnectionArgs.builder()
/// .network(vertexNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(vertexRange.name())
/// .build());
///
/// var bqDataset = new Dataset("bqDataset", DatasetArgs.builder()
/// .datasetId("some_dataset")
/// .friendlyName("logging dataset")
/// .description("This is a dataset that requests are logged to")
/// .location("US")
/// .deleteContentsOnDestroy(true)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var endpoint = new AiEndpoint("endpoint", AiEndpointArgs.builder()
/// .name("endpoint-name")
/// .displayName("sample-endpoint")
/// .description("A sample vertex endpoint")
/// .location("us-central1")
/// .region("us-central1")
/// .labels(Map.of("label-one", "value-one"))
/// .network(vertexNetwork.name().applyValue(_name -> String.format("projects/%s/global/networks/%s", project.number(),_name)))
/// .encryptionSpec(AiEndpointEncryptionSpecArgs.builder()
/// .kmsKeyName("kms-name")
/// .build())
/// .predictRequestResponseLoggingConfig(AiEndpointPredictRequestResponseLoggingConfigArgs.builder()
/// .bigqueryDestination(AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs.builder()
/// .outputUri(bqDataset.datasetId().applyValue(_datasetId -> String.format("bq://%s.%s.request_response_logging", project.projectId(),_datasetId)))
/// .build())
/// .enabled(true)
/// .samplingRate(0.1)
/// .build())
/// .trafficSplit(serializeJson(
/// jsonObject(
/// jsonProperty("12345", 100)
/// )))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(vertexVpcConnection)
/// .build());
///
/// var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId("kms-name")
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", project.number()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// endpoint:
/// type: gcp:vertex:AiEndpoint
/// properties:
/// name: endpoint-name
/// displayName: sample-endpoint
/// description: A sample vertex endpoint
/// location: us-central1
/// region: us-central1
/// labels:
/// label-one: value-one
/// network: projects/${project.number}/global/networks/${vertexNetwork.name}
/// encryptionSpec:
/// kmsKeyName: kms-name
/// predictRequestResponseLoggingConfig:
/// bigqueryDestination:
/// outputUri: bq://${project.projectId}.${bqDataset.datasetId}.request_response_logging
/// enabled: true
/// samplingRate: 0.1
/// trafficSplit:
/// fn::toJSON:
/// '12345': 100
/// options:
/// dependsOn:
/// - ${vertexVpcConnection}
/// vertexVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: vertex_vpc_connection
/// properties:
/// network: ${vertexNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${vertexRange.name}
/// vertexRange:
/// type: gcp:compute:GlobalAddress
/// name: vertex_range
/// properties:
/// name: address-name
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 24
/// network: ${vertexNetwork.id}
/// vertexNetwork:
/// type: gcp:compute:Network
/// name: vertex_network
/// properties:
/// name: network-name
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: crypto_key
/// properties:
/// cryptoKeyId: kms-name
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
/// bqDataset:
/// type: gcp:bigquery:Dataset
/// name: bq_dataset
/// properties:
/// datasetId: some_dataset
/// friendlyName: logging dataset
/// description: This is a dataset that requests are logged to
/// location: US
/// deleteContentsOnDestroy: true
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Vertex Ai Endpoint Private Service Connect
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "psc-network-_9723"});
/// const project = gcp.organizations.getProject({});
/// const endpoint = new gcp.vertex.AiEndpoint("endpoint", {
/// name: "endpoint-name_22061",
/// displayName: "sample-endpoint",
/// description: "A sample vertex endpoint",
/// location: "us-central1",
/// region: "us-central1",
/// labels: {
/// "label-one": "value-one",
/// },
/// privateServiceConnectConfig: {
/// enablePrivateServiceConnect: true,
/// projectAllowlists: [project.then(project => project.projectId)],
/// pscAutomationConfigs: [{
/// projectId: project.then(project => project.projectId),
/// network: _default.id,
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="psc-network-_9723")
/// project = gcp.organizations.get_project()
/// endpoint = gcp.vertex.AiEndpoint("endpoint",
/// name="endpoint-name_22061",
/// display_name="sample-endpoint",
/// description="A sample vertex endpoint",
/// location="us-central1",
/// region="us-central1",
/// labels={
/// "label-one": "value-one",
/// },
/// private_service_connect_config={
/// "enable_private_service_connect": True,
/// "project_allowlists": [project.project_id],
/// "psc_automation_configs": [{
/// "project_id": project.project_id,
/// "network": default.id,
/// }],
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
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "psc-network-_9723",
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var endpoint = new Gcp.Vertex.AiEndpoint("endpoint", new()
/// {
/// Name = "endpoint-name_22061",
/// DisplayName = "sample-endpoint",
/// Description = "A sample vertex endpoint",
/// Location = "us-central1",
/// Region = "us-central1",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// PrivateServiceConnectConfig = new Gcp.Vertex.Inputs.AiEndpointPrivateServiceConnectConfigArgs
/// {
/// EnablePrivateServiceConnect = true,
/// ProjectAllowlists = new[]
/// {
/// project.Apply(getProjectResult => getProjectResult.ProjectId),
/// },
/// PscAutomationConfigs = new[]
/// {
/// new Gcp.Vertex.Inputs.AiEndpointPrivateServiceConnectConfigPscAutomationConfigArgs
/// {
/// ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
/// Network = @default.Id,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("psc-network-_9723"),
/// })
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = vertex.NewAiEndpoint(ctx, "endpoint", &vertex.AiEndpointArgs{
/// Name:        pulumi.String("endpoint-name_22061"),
/// DisplayName: pulumi.String("sample-endpoint"),
/// Description: pulumi.String("A sample vertex endpoint"),
/// Location:    pulumi.String("us-central1"),
/// Region:      pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// PrivateServiceConnectConfig: &vertex.AiEndpointPrivateServiceConnectConfigArgs{
/// EnablePrivateServiceConnect: pulumi.Bool(true),
/// ProjectAllowlists: pulumi.StringArray{
/// pulumi.String(project.ProjectId),
/// },
/// PscAutomationConfigs: vertex.AiEndpointPrivateServiceConnectConfigPscAutomationConfigArray{
/// &vertex.AiEndpointPrivateServiceConnectConfigPscAutomationConfigArgs{
/// ProjectId: pulumi.String(project.ProjectId),
/// Network:   _default.ID(),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiEndpoint;
/// import com.pulumi.gcp.vertex.AiEndpointArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointPrivateServiceConnectConfigArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("psc-network-_9723")
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var endpoint = new AiEndpoint("endpoint", AiEndpointArgs.builder()
/// .name("endpoint-name_22061")
/// .displayName("sample-endpoint")
/// .description("A sample vertex endpoint")
/// .location("us-central1")
/// .region("us-central1")
/// .labels(Map.of("label-one", "value-one"))
/// .privateServiceConnectConfig(AiEndpointPrivateServiceConnectConfigArgs.builder()
/// .enablePrivateServiceConnect(true)
/// .projectAllowlists(project.projectId())
/// .pscAutomationConfigs(AiEndpointPrivateServiceConnectConfigPscAutomationConfigArgs.builder()
/// .projectId(project.projectId())
/// .network(default_.id())
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
/// type: gcp:compute:Network
/// properties:
/// name: psc-network-_9723
/// endpoint:
/// type: gcp:vertex:AiEndpoint
/// properties:
/// name: endpoint-name_22061
/// displayName: sample-endpoint
/// description: A sample vertex endpoint
/// location: us-central1
/// region: us-central1
/// labels:
/// label-one: value-one
/// privateServiceConnectConfig:
/// enablePrivateServiceConnect: true
/// projectAllowlists:
/// - ${project.projectId}
/// pscAutomationConfigs:
/// - projectId: ${project.projectId}
/// network: ${default.id}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Vertex Ai Endpoint Dedicated Endpoint
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const endpoint = new gcp.vertex.AiEndpoint("endpoint", {
/// name: "endpoint-name_60461",
/// displayName: "sample-endpoint",
/// description: "A sample vertex endpoint",
/// location: "us-central1",
/// region: "us-central1",
/// labels: {
/// "label-one": "value-one",
/// },
/// dedicatedEndpointEnabled: true,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// endpoint = gcp.vertex.AiEndpoint("endpoint",
/// name="endpoint-name_60461",
/// display_name="sample-endpoint",
/// description="A sample vertex endpoint",
/// location="us-central1",
/// region="us-central1",
/// labels={
/// "label-one": "value-one",
/// },
/// dedicated_endpoint_enabled=True)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var endpoint = new Gcp.Vertex.AiEndpoint("endpoint", new()
/// {
/// Name = "endpoint-name_60461",
/// DisplayName = "sample-endpoint",
/// Description = "A sample vertex endpoint",
/// Location = "us-central1",
/// Region = "us-central1",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// DedicatedEndpointEnabled = true,
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.NewAiEndpoint(ctx, "endpoint", &vertex.AiEndpointArgs{
/// Name:        pulumi.String("endpoint-name_60461"),
/// DisplayName: pulumi.String("sample-endpoint"),
/// Description: pulumi.String("A sample vertex endpoint"),
/// Location:    pulumi.String("us-central1"),
/// Region:      pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// DedicatedEndpointEnabled: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.vertex.AiEndpoint;
/// import com.pulumi.gcp.vertex.AiEndpointArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
/// var endpoint = new AiEndpoint("endpoint", AiEndpointArgs.builder()
/// .name("endpoint-name_60461")
/// .displayName("sample-endpoint")
/// .description("A sample vertex endpoint")
/// .location("us-central1")
/// .region("us-central1")
/// .labels(Map.of("label-one", "value-one"))
/// .dedicatedEndpointEnabled(true)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// endpoint:
/// type: gcp:vertex:AiEndpoint
/// properties:
/// name: endpoint-name_60461
/// displayName: sample-endpoint
/// description: A sample vertex endpoint
/// location: us-central1
/// region: us-central1
/// labels:
/// label-one: value-one
/// dedicatedEndpointEnabled: true
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
/// Endpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpoints/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Endpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default projects/{{project}}/locations/{{location}}/endpoints/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default {{location}}/{{name}}
/// ```
class AiEndpoint extends CustomResource {
  /// (Output)
  /// Output only. Timestamp when the DeployedModel was created.
  late final Output<String> createTime;

  /// Output only. DNS of the dedicated endpoint. Will only be populated if dedicatedEndpointEnabled is true. Format: `https://{endpointId}.{region}-{projectNumber}.prediction.vertexai.goog`.
  late final Output<String> dedicatedEndpointDns;

  /// If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  late final Output<bool?> dedicatedEndpointEnabled;

  /// Output only. The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively. Models can also be deployed and undeployed using the [Cloud Console](https://console.cloud.google.com/vertex-ai/).
  /// Structure is documented below.
  late final Output<List<AiEndpointDeployedModel>> deployedModels;

  /// The description of the Endpoint.
  late final Output<String?> description;

  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// Structure is documented below.
  late final Output<AiEndpointEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the resource
  late final Output<String> location;

  /// Output only. Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  late final Output<String> modelDeploymentMonitoringJob;

  /// The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  late final Output<String> name;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in <span pulumi-lang-nodejs="`12345`" pulumi-lang-dotnet="`12345`" pulumi-lang-go="`12345`" pulumi-lang-python="`12345`" pulumi-lang-yaml="`12345`" pulumi-lang-java="`12345`">`12345`</span>, and `{network}` is network name. Only one of the fields, <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> or `privateServiceConnectConfig`, can be set.
  late final Output<String?> network;

  /// Configures the request-response logging for online prediction.
  /// Structure is documented below.
  late final Output<AiEndpointPredictRequestResponseLoggingConfig?>
      predictRequestResponseLoggingConfig;

  /// Configuration for private service connect. <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  late final Output<AiEndpointPrivateServiceConnectConfig?>
      privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region for the resource
  late final Output<String?> region;

  /// A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  /// If a DeployedModel's id is not listed in this map, then it receives no traffic.
  /// The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment. See
  /// the `deployModel` [example](https://cloud.google.com/vertex-ai/docs/general/deployment#deploy_a_model_to_an_endpoint) and
  /// [documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.endpoints/deployModel) for more information.
  /// > **Note:** To set the map to empty, set `"{}"`, apply, and then remove the field from your config.
  late final Output<String> trafficSplit;

  /// Output only. Timestamp when this Endpoint was last updated.
  late final Output<String> updateTime;

  AiEndpoint(
    String name, {
    AiEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpoint:AiEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedEndpointDns = registerOutput<String>('dedicatedEndpointDns');
    this.dedicatedEndpointEnabled =
        registerOutput<bool?>('dedicatedEndpointEnabled');
    this.deployedModels =
        registerOutput<List<AiEndpointDeployedModel>>('deployedModels');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<AiEndpointEncryptionSpec?>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.modelDeploymentMonitoringJob =
        registerOutput<String>('modelDeploymentMonitoringJob');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.predictRequestResponseLoggingConfig =
        registerOutput<AiEndpointPredictRequestResponseLoggingConfig?>(
            'predictRequestResponseLoggingConfig');
    this.privateServiceConnectConfig =
        registerOutput<AiEndpointPrivateServiceConnectConfig?>(
            'privateServiceConnectConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.trafficSplit = registerOutput<String>('trafficSplit');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
