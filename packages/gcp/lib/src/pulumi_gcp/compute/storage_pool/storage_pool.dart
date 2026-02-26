import 'package:pulumi/pulumi.dart';
import '../storage_pool_resource_status/storage_pool_resource_status.dart';
import '../storage_pool_status/storage_pool_status.dart';
import 'storage_pool_args.dart';

/// A Hyperdisk Storage Pool is a pre-purchased collection of capacity, throughput, and IOPS
/// which you can then provision to your applications as needed.
/// You can use Hyperdisk Storage Pools to create and manage disks in pools and use the disks across multiple workloads.
///
///
/// To get more information about StoragePool, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools)
/// * How-to Guides
/// * [Create Hyperdisk Storage Pools](https://cloud.google.com/compute/docs/disks/create-storage-pools)
///
/// ## Example Usage
///
/// ### Compute Storage Pool Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test_storage_pool_basic = new gcp.compute.StoragePool("test-storage-pool-basic", {
/// name: "storage-pool-basic",
/// poolProvisionedCapacityGb: "10240",
/// poolProvisionedThroughput: "100",
/// storagePoolType: "hyperdisk-throughput",
/// zone: "us-central1-a",
/// labels: {
/// environment: "test",
/// purpose: "storage-pool-testing",
/// team: "infrastructure",
/// cost_center: "engineering",
/// },
/// deletionProtection: false,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_storage_pool_basic = gcp.compute.StoragePool("test-storage-pool-basic",
/// name="storage-pool-basic",
/// pool_provisioned_capacity_gb="10240",
/// pool_provisioned_throughput="100",
/// storage_pool_type="hyperdisk-throughput",
/// zone="us-central1-a",
/// labels={
/// "environment": "test",
/// "purpose": "storage-pool-testing",
/// "team": "infrastructure",
/// "cost_center": "engineering",
/// },
/// deletion_protection=False)
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
/// var test_storage_pool_basic = new Gcp.Compute.StoragePool("test-storage-pool-basic", new()
/// {
/// Name = "storage-pool-basic",
/// PoolProvisionedCapacityGb = "10240",
/// PoolProvisionedThroughput = "100",
/// StoragePoolType = "hyperdisk-throughput",
/// Zone = "us-central1-a",
/// Labels =
/// {
/// { "environment", "test" },
/// { "purpose", "storage-pool-testing" },
/// { "team", "infrastructure" },
/// { "cost_center", "engineering" },
/// },
/// DeletionProtection = false,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewStoragePool(ctx, "test-storage-pool-basic", &compute.StoragePoolArgs{
/// Name:                      pulumi.String("storage-pool-basic"),
/// PoolProvisionedCapacityGb: pulumi.String("10240"),
/// PoolProvisionedThroughput: pulumi.String("100"),
/// StoragePoolType:           pulumi.String("hyperdisk-throughput"),
/// Zone:                      pulumi.String("us-central1-a"),
/// Labels: pulumi.StringMap{
/// "environment": pulumi.String("test"),
/// "purpose":     pulumi.String("storage-pool-testing"),
/// "team":        pulumi.String("infrastructure"),
/// "cost_center": pulumi.String("engineering"),
/// },
/// DeletionProtection: pulumi.Bool(false),
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
/// import com.pulumi.gcp.compute.StoragePool;
/// import com.pulumi.gcp.compute.StoragePoolArgs;
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
/// var test_storage_pool_basic = new StoragePool("test-storage-pool-basic", StoragePoolArgs.builder()
/// .name("storage-pool-basic")
/// .poolProvisionedCapacityGb("10240")
/// .poolProvisionedThroughput("100")
/// .storagePoolType("hyperdisk-throughput")
/// .zone("us-central1-a")
/// .labels(Map.ofEntries(
/// Map.entry("environment", "test"),
/// Map.entry("purpose", "storage-pool-testing"),
/// Map.entry("team", "infrastructure"),
/// Map.entry("cost_center", "engineering")
/// ))
/// .deletionProtection(false)
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
/// test-storage-pool-basic:
/// type: gcp:compute:StoragePool
/// properties:
/// name: storage-pool-basic
/// poolProvisionedCapacityGb: '10240'
/// poolProvisionedThroughput: 100
/// storagePoolType: hyperdisk-throughput
/// zone: us-central1-a
/// labels:
/// environment: test
/// purpose: storage-pool-testing
/// team: infrastructure
/// cost_center: engineering
/// deletionProtection: false
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Compute Storage Pool Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const balanced = gcp.compute.getStoragePoolTypes({
/// zone: "us-central1-a",
/// storagePoolType: "hyperdisk-balanced",
/// });
/// const test_storage_pool_full = new gcp.compute.StoragePool("test-storage-pool-full", {
/// name: "storage-pool-full",
/// description: "Hyperdisk Balanced storage pool",
/// capacityProvisioningType: "STANDARD",
/// poolProvisionedCapacityGb: "10240",
/// performanceProvisioningType: "STANDARD",
/// poolProvisionedIops: "10000",
/// poolProvisionedThroughput: "1024",
/// storagePoolType: balanced.then(balanced => balanced.selfLink),
/// labels: {
/// environment: "test",
/// purpose: "storage-pool-testing",
/// team: "infrastructure",
/// cost_center: "engineering",
/// },
/// deletionProtection: false,
/// zone: "us-central1-a",
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// balanced = gcp.compute.get_storage_pool_types(zone="us-central1-a",
/// storage_pool_type="hyperdisk-balanced")
/// test_storage_pool_full = gcp.compute.StoragePool("test-storage-pool-full",
/// name="storage-pool-full",
/// description="Hyperdisk Balanced storage pool",
/// capacity_provisioning_type="STANDARD",
/// pool_provisioned_capacity_gb="10240",
/// performance_provisioning_type="STANDARD",
/// pool_provisioned_iops="10000",
/// pool_provisioned_throughput="1024",
/// storage_pool_type=balanced.self_link,
/// labels={
/// "environment": "test",
/// "purpose": "storage-pool-testing",
/// "team": "infrastructure",
/// "cost_center": "engineering",
/// },
/// deletion_protection=False,
/// zone="us-central1-a")
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
/// var balanced = Gcp.Compute.GetStoragePoolTypes.Invoke(new()
/// {
/// Zone = "us-central1-a",
/// StoragePoolType = "hyperdisk-balanced",
/// });
///
/// var test_storage_pool_full = new Gcp.Compute.StoragePool("test-storage-pool-full", new()
/// {
/// Name = "storage-pool-full",
/// Description = "Hyperdisk Balanced storage pool",
/// CapacityProvisioningType = "STANDARD",
/// PoolProvisionedCapacityGb = "10240",
/// PerformanceProvisioningType = "STANDARD",
/// PoolProvisionedIops = "10000",
/// PoolProvisionedThroughput = "1024",
/// StoragePoolType = balanced.Apply(getStoragePoolTypesResult => getStoragePoolTypesResult.SelfLink),
/// Labels =
/// {
/// { "environment", "test" },
/// { "purpose", "storage-pool-testing" },
/// { "team", "infrastructure" },
/// { "cost_center", "engineering" },
/// },
/// DeletionProtection = false,
/// Zone = "us-central1-a",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// balanced, err := compute.GetStoragePoolTypes(ctx, &compute.GetStoragePoolTypesArgs{
/// Zone:            "us-central1-a",
/// StoragePoolType: "hyperdisk-balanced",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewStoragePool(ctx, "test-storage-pool-full", &compute.StoragePoolArgs{
/// Name:                        pulumi.String("storage-pool-full"),
/// Description:                 pulumi.String("Hyperdisk Balanced storage pool"),
/// CapacityProvisioningType:    pulumi.String("STANDARD"),
/// PoolProvisionedCapacityGb:   pulumi.String("10240"),
/// PerformanceProvisioningType: pulumi.String("STANDARD"),
/// PoolProvisionedIops:         pulumi.String("10000"),
/// PoolProvisionedThroughput:   pulumi.String("1024"),
/// StoragePoolType:             pulumi.String(balanced.SelfLink),
/// Labels: pulumi.StringMap{
/// "environment": pulumi.String("test"),
/// "purpose":     pulumi.String("storage-pool-testing"),
/// "team":        pulumi.String("infrastructure"),
/// "cost_center": pulumi.String("engineering"),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// Zone:               pulumi.String("us-central1-a"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetStoragePoolTypesArgs;
/// import com.pulumi.gcp.compute.StoragePool;
/// import com.pulumi.gcp.compute.StoragePoolArgs;
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
/// final var balanced = ComputeFunctions.getStoragePoolTypes(GetStoragePoolTypesArgs.builder()
/// .zone("us-central1-a")
/// .storagePoolType("hyperdisk-balanced")
/// .build());
///
/// var test_storage_pool_full = new StoragePool("test-storage-pool-full", StoragePoolArgs.builder()
/// .name("storage-pool-full")
/// .description("Hyperdisk Balanced storage pool")
/// .capacityProvisioningType("STANDARD")
/// .poolProvisionedCapacityGb("10240")
/// .performanceProvisioningType("STANDARD")
/// .poolProvisionedIops("10000")
/// .poolProvisionedThroughput("1024")
/// .storagePoolType(balanced.selfLink())
/// .labels(Map.ofEntries(
/// Map.entry("environment", "test"),
/// Map.entry("purpose", "storage-pool-testing"),
/// Map.entry("team", "infrastructure"),
/// Map.entry("cost_center", "engineering")
/// ))
/// .deletionProtection(false)
/// .zone("us-central1-a")
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
/// test-storage-pool-full:
/// type: gcp:compute:StoragePool
/// properties:
/// name: storage-pool-full
/// description: Hyperdisk Balanced storage pool
/// capacityProvisioningType: STANDARD
/// poolProvisionedCapacityGb: '10240'
/// performanceProvisioningType: STANDARD
/// poolProvisionedIops: '10000'
/// poolProvisionedThroughput: '1024'
/// storagePoolType: ${balanced.selfLink}
/// labels:
/// environment: test
/// purpose: storage-pool-testing
/// team: infrastructure
/// cost_center: engineering
/// deletionProtection: false
/// zone: us-central1-a
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// balanced:
/// fn::invoke:
/// function: gcp:compute:getStoragePoolTypes
/// arguments:
/// zone: us-central1-a
/// storagePoolType: hyperdisk-balanced
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// StoragePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/storagePools/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, StoragePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default projects/{{project}}/zones/{{zone}}/storagePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{name}}
/// ```
class StoragePool extends CustomResource {
  /// Provisioning type of the byte capacity of the pool.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  late final Output<String> capacityProvisioningType;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;
  late final Output<bool?> deletionProtection;

  /// A description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Type of the resource.
  late final Output<String> kind;

  /// The fingerprint used for optimistic locking of this resource.
  /// Used internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?`
  /// which means the first character must be a lowercase letter,
  /// and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  late final Output<String> performanceProvisioningType;

  /// Size, in GiB, of the storage pool. For more information about the size limits,
  /// see https://cloud.google.com/compute/docs/disks/storage-pools.
  late final Output<String> poolProvisionedCapacityGb;

  /// Provisioned IOPS of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced`.
  late final Output<String?> poolProvisionedIops;

  /// Provisioned throughput, in MB/s, of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced` or `hyperdisk-throughput`.
  late final Output<String> poolProvisionedThroughput;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Status information for the storage pool resource.
  /// Structure is documented below.
  late final Output<List<StoragePoolResourceStatus>> resourceStatuses;

  /// Status information for the storage pool resource.
  /// Structure is documented below.
  late final Output<List<StoragePoolStatus>> statuses;

  /// Type of the storage pool. For example, the
  /// following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone}/storagePoolTypes/hyperdisk-balanced`
  /// * `hyperdisk-throughput`
  late final Output<String> storagePoolType;

  /// A reference to the zone where the storage pool resides.
  late final Output<String> zone;

  StoragePool(
    String name, {
    StoragePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/storagePool:StoragePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacityProvisioningType =
        registerOutput<String>('capacityProvisioningType');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.kind = registerOutput<String>('kind');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.performanceProvisioningType =
        registerOutput<String>('performanceProvisioningType');
    this.poolProvisionedCapacityGb =
        registerOutput<String>('poolProvisionedCapacityGb');
    this.poolProvisionedIops = registerOutput<String?>('poolProvisionedIops');
    this.poolProvisionedThroughput =
        registerOutput<String>('poolProvisionedThroughput');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceStatuses =
        registerOutput<List<StoragePoolResourceStatus>>('resourceStatuses');
    this.statuses = registerOutput<List<StoragePoolStatus>>('statuses');
    this.storagePoolType = registerOutput<String>('storagePoolType');
    this.zone = registerOutput<String>('zone');
  }
}
