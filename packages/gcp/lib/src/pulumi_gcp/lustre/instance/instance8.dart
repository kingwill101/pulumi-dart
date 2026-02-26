import 'package:pulumi/pulumi.dart';
import '../instance_access_rules_options/instance_access_rules_options.dart';
import 'instance_args8.dart';

/// A Managed Lustre instance
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/managed-lustre/docs/create-instance)
///
/// ## Example Usage
///
/// ### Lustre Instance Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Lustre instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// const lustre_network = gcp.compute.getNetwork({
/// name: "my-network",
/// });
/// const instance = new gcp.lustre.Instance("instance", {
/// instanceId: "my-instance",
/// location: "us-central1-a",
/// description: "test lustre instance",
/// filesystem: "testfs",
/// capacityGib: "18000",
/// network: lustre_network.then(lustre_network => lustre_network.id),
/// perUnitStorageThroughput: "1000",
/// labels: {
/// test: "value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This example assumes this network already exists.
/// # The API creates a tenant network per network authorized for a
/// # Lustre instance and that network is not deleted when the user-created
/// # network (authorized_network) is deleted, so this prevents issues
/// # with tenant network quota.
/// # If this network hasn't been created and you are using this example in your
/// # config, add an additional network resource or change
/// # this from "data"to "resource"
/// lustre_network = gcp.compute.get_network(name="my-network")
/// instance = gcp.lustre.Instance("instance",
/// instance_id="my-instance",
/// location="us-central1-a",
/// description="test lustre instance",
/// filesystem="testfs",
/// capacity_gib="18000",
/// network=lustre_network.id,
/// per_unit_storage_throughput="1000",
/// labels={
/// "test": "value",
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
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Lustre instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// var lustre_network = Gcp.Compute.GetNetwork.Invoke(new()
/// {
/// Name = "my-network",
/// });
///
/// var instance = new Gcp.Lustre.Instance("instance", new()
/// {
/// InstanceId = "my-instance",
/// Location = "us-central1-a",
/// Description = "test lustre instance",
/// Filesystem = "testfs",
/// CapacityGib = "18000",
/// Network = lustre_network.Apply(lustre_network => lustre_network.Apply(getNetworkResult => getNetworkResult.Id)),
/// PerUnitStorageThroughput = "1000",
/// Labels =
/// {
/// { "test", "value" },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/lustre"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Lustre instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// lustre_network, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// Name: "my-network",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = lustre.NewInstance(ctx, "instance", &lustre.InstanceArgs{
/// InstanceId:               pulumi.String("my-instance"),
/// Location:                 pulumi.String("us-central1-a"),
/// Description:              pulumi.String("test lustre instance"),
/// Filesystem:               pulumi.String("testfs"),
/// CapacityGib:              pulumi.String("18000"),
/// Network:                  pulumi.String(lustre_network.Id),
/// PerUnitStorageThroughput: pulumi.String("1000"),
/// Labels: pulumi.StringMap{
/// "test": pulumi.String("value"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.lustre.Instance;
/// import com.pulumi.gcp.lustre.InstanceArgs;
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
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Lustre instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// final var lustre-network = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
/// .name("my-network")
/// .build());
///
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .instanceId("my-instance")
/// .location("us-central1-a")
/// .description("test lustre instance")
/// .filesystem("testfs")
/// .capacityGib("18000")
/// .network(lustre_network.id())
/// .perUnitStorageThroughput("1000")
/// .labels(Map.of("test", "value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:lustre:Instance
/// properties:
/// instanceId: my-instance
/// location: us-central1-a
/// description: test lustre instance
/// filesystem: testfs
/// capacityGib: 18000
/// network: ${["lustre-network"].id}
/// perUnitStorageThroughput: 1000
/// labels:
/// test: value
/// variables:
/// # This example assumes this network already exists.
/// # // The API creates a tenant network per network authorized for a
/// # // Lustre instance and that network is not deleted when the user-created
/// # // network (authorized_network) is deleted, so this prevents issues
/// # // with tenant network quota.
/// # // If this network hasn't been created and you are using this example in your
/// # // config, add an additional network resource or change
/// # // this from "data"to "resource"
/// lustre-network:
/// fn::invoke:
/// function: gcp:compute:getNetwork
/// arguments:
/// name: my-network
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance8 extends CustomResource {
  /// Access control rules for the Lustre instance. Configures default root
  /// squashing behavior and specific access rules based on IP addresses.
  /// Structure is documented below.
  late final Output<InstanceAccessRulesOptions?> accessRulesOptions;

  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from <span pulumi-lang-nodejs="`18000`" pulumi-lang-dotnet="`18000`" pulumi-lang-go="`18000`" pulumi-lang-python="`18000`" pulumi-lang-yaml="`18000`" pulumi-lang-java="`18000`">`18000`</span> to <span pulumi-lang-nodejs="`954000`" pulumi-lang-dotnet="`954000`" pulumi-lang-go="`954000`" pulumi-lang-python="`954000`" pulumi-lang-yaml="`954000`" pulumi-lang-java="`954000`">`954000`</span>, in increments of 9000.
  late final Output<String> capacityGib;

  /// Timestamp when the instance was created.
  late final Output<String> createTime;

  /// A user-readable description of the instance.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The filesystem name for this instance. This name is used by client-side
  /// tools, including when mounting the instance. Must be eight characters or
  /// less and can only contain letters and numbers.
  late final Output<String> filesystem;

  /// Indicates whether you want to enable support for GKE clients. By default,
  /// GKE clients are not supported.
  late final Output<bool?> gkeSupportEnabled;

  /// The name of the Managed Lustre instance.
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  late final Output<String> instanceId;

  /// The KMS key id to use for encryption of the Lustre instance.
  late final Output<String?> kmsKey;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Mount point of the instance in the format `IP_ADDRESS@tcp:/FILESYSTEM`.
  late final Output<String> mountPoint;

  /// Identifier. The name of the instance.
  late final Output<String> name;

  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  late final Output<String> network;

  /// The throughput of the instance in MB/s/TiB.
  /// Valid values are 125, 250, 500, 1000.
  late final Output<String> perUnitStorageThroughput;

  /// The placement policy name for the instance in the format of
  /// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
  late final Output<String?> placementPolicy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The state of the instance.
  /// Please see https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances#state for values
  late final Output<String> state;

  /// The reason why the instance is in a certain state.
  late final Output<String> stateReason;

  /// Timestamp when the instance was last updated.
  late final Output<String> updateTime;

  Instance8(
    String name, {
    InstanceArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:lustre/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessRulesOptions =
        Output.createUnknown<InstanceAccessRulesOptions?>();
    this.capacityGib = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.filesystem = Output.createUnknown<String>();
    this.gkeSupportEnabled = Output.createUnknown<bool?>();
    this.instanceId = Output.createUnknown<String>();
    this.kmsKey = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.mountPoint = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.perUnitStorageThroughput = Output.createUnknown<String>();
    this.placementPolicy = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.state = Output.createUnknown<String>();
    this.stateReason = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
