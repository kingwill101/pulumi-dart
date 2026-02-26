import 'package:pulumi/pulumi.dart';
import '../cluster_broker_capacity_config/cluster_broker_capacity_config.dart';
import '../cluster_capacity_config/cluster_capacity_config.dart';
import '../cluster_gcp_config/cluster_gcp_config.dart';
import '../cluster_rebalance_config/cluster_rebalance_config.dart';
import '../cluster_tls_config/cluster_tls_config.dart';
import 'cluster_args5.dart';

/// A Managed Service for Apache Kafka cluster. Apache Kafka is a trademark owned by the Apache Software Foundation.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Cluster Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.managedkafka.Cluster("example", {
/// clusterId: "my-cluster",
/// location: "us-central1",
/// capacityConfig: {
/// vcpuCount: "3",
/// memoryBytes: "3221225472",
/// },
/// gcpConfig: {
/// accessConfig: {
/// networkConfigs: [{
/// subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
/// }],
/// },
/// },
/// rebalanceConfig: {
/// mode: "AUTO_REBALANCE_ON_SCALE_UP",
/// },
/// labels: {
/// key: "value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.managedkafka.Cluster("example",
/// cluster_id="my-cluster",
/// location="us-central1",
/// capacity_config={
/// "vcpu_count": "3",
/// "memory_bytes": "3221225472",
/// },
/// gcp_config={
/// "access_config": {
/// "network_configs": [{
/// "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
/// }],
/// },
/// },
/// rebalance_config={
/// "mode": "AUTO_REBALANCE_ON_SCALE_UP",
/// },
/// labels={
/// "key": "value",
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
/// var example = new Gcp.ManagedKafka.Cluster("example", new()
/// {
/// ClusterId = "my-cluster",
/// Location = "us-central1",
/// CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
/// {
/// VcpuCount = "3",
/// MemoryBytes = "3221225472",
/// },
/// GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
/// {
/// AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
/// {
/// NetworkConfigs = new[]
/// {
/// new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
/// {
/// Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
/// },
/// },
/// },
/// },
/// RebalanceConfig = new Gcp.ManagedKafka.Inputs.ClusterRebalanceConfigArgs
/// {
/// Mode = "AUTO_REBALANCE_ON_SCALE_UP",
/// },
/// Labels =
/// {
/// { "key", "value" },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/managedkafka"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = managedkafka.NewCluster(ctx, "example", &managedkafka.ClusterArgs{
/// ClusterId: pulumi.String("my-cluster"),
/// Location:  pulumi.String("us-central1"),
/// CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// VcpuCount:   pulumi.String("3"),
/// MemoryBytes: pulumi.String("3221225472"),
/// },
/// GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// &managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// },
/// },
/// },
/// },
/// RebalanceConfig: &managedkafka.ClusterRebalanceConfigArgs{
/// Mode: pulumi.String("AUTO_REBALANCE_ON_SCALE_UP"),
/// },
/// Labels: pulumi.StringMap{
/// "key": pulumi.String("value"),
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
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterRebalanceConfigArgs;
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
/// var example = new Cluster("example", ClusterArgs.builder()
/// .clusterId("my-cluster")
/// .location("us-central1")
/// .capacityConfig(ClusterCapacityConfigArgs.builder()
/// .vcpuCount("3")
/// .memoryBytes("3221225472")
/// .build())
/// .gcpConfig(ClusterGcpConfigArgs.builder()
/// .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
/// .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
/// .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
/// .build())
/// .build())
/// .build())
/// .rebalanceConfig(ClusterRebalanceConfigArgs.builder()
/// .mode("AUTO_REBALANCE_ON_SCALE_UP")
/// .build())
/// .labels(Map.of("key", "value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:managedkafka:Cluster
/// properties:
/// clusterId: my-cluster
/// location: us-central1
/// capacityConfig:
/// vcpuCount: 3
/// memoryBytes: 3.221225472e+09
/// gcpConfig:
/// accessConfig:
/// networkConfigs:
/// - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
/// rebalanceConfig:
/// mode: AUTO_REBALANCE_ON_SCALE_UP
/// labels:
/// key: value
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Managedkafka Cluster Mtls
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const caPool = new gcp.certificateauthority.CaPool("ca_pool", {
/// name: "my-ca-pool",
/// location: "us-central1",
/// tier: "ENTERPRISE",
/// publishingOptions: {
/// publishCaCert: true,
/// publishCrl: true,
/// },
/// });
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.managedkafka.Cluster("example", {
/// clusterId: "my-cluster",
/// location: "us-central1",
/// capacityConfig: {
/// vcpuCount: "3",
/// memoryBytes: "3221225472",
/// },
/// gcpConfig: {
/// accessConfig: {
/// networkConfigs: [{
/// subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
/// }],
/// },
/// },
/// tlsConfig: {
/// trustConfig: {
/// casConfigs: [{
/// caPool: caPool.id,
/// }],
/// },
/// sslPrincipalMappingRules: "RULE:pattern/replacement/L,DEFAULT",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ca_pool = gcp.certificateauthority.CaPool("ca_pool",
/// name="my-ca-pool",
/// location="us-central1",
/// tier="ENTERPRISE",
/// publishing_options={
/// "publish_ca_cert": True,
/// "publish_crl": True,
/// })
/// project = gcp.organizations.get_project()
/// example = gcp.managedkafka.Cluster("example",
/// cluster_id="my-cluster",
/// location="us-central1",
/// capacity_config={
/// "vcpu_count": "3",
/// "memory_bytes": "3221225472",
/// },
/// gcp_config={
/// "access_config": {
/// "network_configs": [{
/// "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
/// }],
/// },
/// },
/// tls_config={
/// "trust_config": {
/// "cas_configs": [{
/// "ca_pool": ca_pool.id,
/// }],
/// },
/// "ssl_principal_mapping_rules": "RULE:pattern/replacement/L,DEFAULT",
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
/// var caPool = new Gcp.CertificateAuthority.CaPool("ca_pool", new()
/// {
/// Name = "my-ca-pool",
/// Location = "us-central1",
/// Tier = "ENTERPRISE",
/// PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
/// {
/// PublishCaCert = true,
/// PublishCrl = true,
/// },
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var example = new Gcp.ManagedKafka.Cluster("example", new()
/// {
/// ClusterId = "my-cluster",
/// Location = "us-central1",
/// CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
/// {
/// VcpuCount = "3",
/// MemoryBytes = "3221225472",
/// },
/// GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
/// {
/// AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
/// {
/// NetworkConfigs = new[]
/// {
/// new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
/// {
/// Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
/// },
/// },
/// },
/// },
/// TlsConfig = new Gcp.ManagedKafka.Inputs.ClusterTlsConfigArgs
/// {
/// TrustConfig = new Gcp.ManagedKafka.Inputs.ClusterTlsConfigTrustConfigArgs
/// {
/// CasConfigs = new[]
/// {
/// new Gcp.ManagedKafka.Inputs.ClusterTlsConfigTrustConfigCasConfigArgs
/// {
/// CaPool = caPool.Id,
/// },
/// },
/// },
/// SslPrincipalMappingRules = "RULE:pattern/replacement/L,DEFAULT",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/managedkafka"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// caPool, err := certificateauthority.NewCaPool(ctx, "ca_pool", &certificateauthority.CaPoolArgs{
/// Name:     pulumi.String("my-ca-pool"),
/// Location: pulumi.String("us-central1"),
/// Tier:     pulumi.String("ENTERPRISE"),
/// PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// PublishCaCert: pulumi.Bool(true),
/// PublishCrl:    pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = managedkafka.NewCluster(ctx, "example", &managedkafka.ClusterArgs{
/// ClusterId: pulumi.String("my-cluster"),
/// Location:  pulumi.String("us-central1"),
/// CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// VcpuCount:   pulumi.String("3"),
/// MemoryBytes: pulumi.String("3221225472"),
/// },
/// GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// &managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// },
/// },
/// },
/// },
/// TlsConfig: &managedkafka.ClusterTlsConfigArgs{
/// TrustConfig: &managedkafka.ClusterTlsConfigTrustConfigArgs{
/// CasConfigs: managedkafka.ClusterTlsConfigTrustConfigCasConfigArray{
/// &managedkafka.ClusterTlsConfigTrustConfigCasConfigArgs{
/// CaPool: caPool.ID(),
/// },
/// },
/// },
/// SslPrincipalMappingRules: pulumi.String("RULE:pattern/replacement/L,DEFAULT"),
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
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterTlsConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterTlsConfigTrustConfigArgs;
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
/// var caPool = new CaPool("caPool", CaPoolArgs.builder()
/// .name("my-ca-pool")
/// .location("us-central1")
/// .tier("ENTERPRISE")
/// .publishingOptions(CaPoolPublishingOptionsArgs.builder()
/// .publishCaCert(true)
/// .publishCrl(true)
/// .build())
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var example = new Cluster("example", ClusterArgs.builder()
/// .clusterId("my-cluster")
/// .location("us-central1")
/// .capacityConfig(ClusterCapacityConfigArgs.builder()
/// .vcpuCount("3")
/// .memoryBytes("3221225472")
/// .build())
/// .gcpConfig(ClusterGcpConfigArgs.builder()
/// .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
/// .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
/// .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
/// .build())
/// .build())
/// .build())
/// .tlsConfig(ClusterTlsConfigArgs.builder()
/// .trustConfig(ClusterTlsConfigTrustConfigArgs.builder()
/// .casConfigs(ClusterTlsConfigTrustConfigCasConfigArgs.builder()
/// .caPool(caPool.id())
/// .build())
/// .build())
/// .sslPrincipalMappingRules("RULE:pattern/replacement/L,DEFAULT")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:managedkafka:Cluster
/// properties:
/// clusterId: my-cluster
/// location: us-central1
/// capacityConfig:
/// vcpuCount: 3
/// memoryBytes: 3.221225472e+09
/// gcpConfig:
/// accessConfig:
/// networkConfigs:
/// - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
/// tlsConfig:
/// trustConfig:
/// casConfigs:
/// - caPool: ${caPool.id}
/// sslPrincipalMappingRules: RULE:pattern/replacement/L,DEFAULT
/// caPool:
/// type: gcp:certificateauthority:CaPool
/// name: ca_pool
/// properties:
/// name: my-ca-pool
/// location: us-central1
/// tier: ENTERPRISE
/// publishingOptions:
/// publishCaCert: true
/// publishCrl: true
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Managedkafka Cluster Cmek
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.managedkafka.Cluster("example", {
/// clusterId: "my-cluster",
/// location: "us-central1",
/// capacityConfig: {
/// vcpuCount: "3",
/// memoryBytes: "3221225472",
/// },
/// gcpConfig: {
/// accessConfig: {
/// networkConfigs: [{
/// subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
/// }],
/// },
/// kmsKey: "example-key",
/// },
/// });
/// const kafkaServiceIdentity = new gcp.projects.ServiceIdentity("kafka_service_identity", {
/// project: project.then(project => project.projectId),
/// service: "managedkafka.googleapis.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.managedkafka.Cluster("example",
/// cluster_id="my-cluster",
/// location="us-central1",
/// capacity_config={
/// "vcpu_count": "3",
/// "memory_bytes": "3221225472",
/// },
/// gcp_config={
/// "access_config": {
/// "network_configs": [{
/// "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
/// }],
/// },
/// "kms_key": "example-key",
/// })
/// kafka_service_identity = gcp.projects.ServiceIdentity("kafka_service_identity",
/// project=project.project_id,
/// service="managedkafka.googleapis.com")
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
/// var example = new Gcp.ManagedKafka.Cluster("example", new()
/// {
/// ClusterId = "my-cluster",
/// Location = "us-central1",
/// CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
/// {
/// VcpuCount = "3",
/// MemoryBytes = "3221225472",
/// },
/// GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
/// {
/// AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
/// {
/// NetworkConfigs = new[]
/// {
/// new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
/// {
/// Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
/// },
/// },
/// },
/// KmsKey = "example-key",
/// },
/// });
///
/// var kafkaServiceIdentity = new Gcp.Projects.ServiceIdentity("kafka_service_identity", new()
/// {
/// Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
/// Service = "managedkafka.googleapis.com",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/managedkafka"
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
/// _, err = managedkafka.NewCluster(ctx, "example", &managedkafka.ClusterArgs{
/// ClusterId: pulumi.String("my-cluster"),
/// Location:  pulumi.String("us-central1"),
/// CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// VcpuCount:   pulumi.String("3"),
/// MemoryBytes: pulumi.String("3221225472"),
/// },
/// GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// &managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// },
/// },
/// },
/// KmsKey: pulumi.String("example-key"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewServiceIdentity(ctx, "kafka_service_identity", &projects.ServiceIdentityArgs{
/// Project: pulumi.String(project.ProjectId),
/// Service: pulumi.String("managedkafka.googleapis.com"),
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
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
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
/// var example = new Cluster("example", ClusterArgs.builder()
/// .clusterId("my-cluster")
/// .location("us-central1")
/// .capacityConfig(ClusterCapacityConfigArgs.builder()
/// .vcpuCount("3")
/// .memoryBytes("3221225472")
/// .build())
/// .gcpConfig(ClusterGcpConfigArgs.builder()
/// .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
/// .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
/// .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
/// .build())
/// .build())
/// .kmsKey("example-key")
/// .build())
/// .build());
///
/// var kafkaServiceIdentity = new ServiceIdentity("kafkaServiceIdentity", ServiceIdentityArgs.builder()
/// .project(project.projectId())
/// .service("managedkafka.googleapis.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:managedkafka:Cluster
/// properties:
/// clusterId: my-cluster
/// location: us-central1
/// capacityConfig:
/// vcpuCount: 3
/// memoryBytes: 3.221225472e+09
/// gcpConfig:
/// accessConfig:
/// networkConfigs:
/// - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
/// kmsKey: example-key
/// kafkaServiceIdentity:
/// type: gcp:projects:ServiceIdentity
/// name: kafka_service_identity
/// properties:
/// project: ${project.projectId}
/// service: managedkafka.googleapis.com
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
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}`
///
/// * `{{project}}/{{location}}/{{cluster_id}}`
///
/// * `{{location}}/{{cluster_id}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/cluster:Cluster default {{project}}/{{location}}/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/cluster:Cluster default {{location}}/{{cluster_id}}
/// ```
class Cluster5 extends CustomResource {
  /// Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// Structure is documented below.
  late final Output<ClusterBrokerCapacityConfig?> brokerCapacityConfig;

  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  late final Output<ClusterCapacityConfig> capacityConfig;

  /// The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  late final Output<String> clusterId;

  /// The time when the cluster was created.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  late final Output<ClusterGcpConfig> gcpConfig;

  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final Output<String> location;

  /// The name of the cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Defines rebalancing behavior of a Kafka cluster.
  /// Structure is documented below.
  late final Output<ClusterRebalanceConfig?> rebalanceConfig;

  /// The current state of the cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  late final Output<String> state;

  /// TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty <span pulumi-lang-nodejs="`tlsConfig`" pulumi-lang-dotnet="`TlsConfig`" pulumi-lang-go="`tlsConfig`" pulumi-lang-python="`tls_config`" pulumi-lang-yaml="`tlsConfig`" pulumi-lang-java="`tlsConfig`">`tls_config`</span> block.
  /// Structure is documented below.
  late final Output<ClusterTlsConfig> tlsConfig;

  /// The time when the cluster was last updated.
  late final Output<String> updateTime;

  Cluster5(
    String name, {
    ClusterArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.brokerCapacityConfig =
        registerOutput<ClusterBrokerCapacityConfig?>('brokerCapacityConfig');
    this.capacityConfig =
        registerOutput<ClusterCapacityConfig>('capacityConfig');
    this.clusterId = registerOutput<String>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gcpConfig = registerOutput<ClusterGcpConfig>('gcpConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rebalanceConfig =
        registerOutput<ClusterRebalanceConfig?>('rebalanceConfig');
    this.state = registerOutput<String>('state');
    this.tlsConfig = registerOutput<ClusterTlsConfig>('tlsConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
