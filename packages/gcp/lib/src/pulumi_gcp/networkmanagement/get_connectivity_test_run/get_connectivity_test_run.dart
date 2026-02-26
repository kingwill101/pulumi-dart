import 'package:pulumi/pulumi.dart';
import 'get_connectivity_test_run_args.dart';
import 'get_connectivity_test_run_result.dart';

/// !> This datasource triggers side effects on the target resource. It will take a long time to refresh (i.e. `pulumi preview` will take much longer than usual) and may modify the state of the parent resource or other copies of the resource copying the same parent.
///
/// A connectivity test is a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud
/// resources in your Virtual Private Cloud (VPC) network. This data source allows
/// you to trigger a rerun operation on a connectivity test and return the results.
///
/// To get more information about connectivity tests, see:
///
/// * [API documentation](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests/rerun)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-intelligence-center/docs)
///
/// ## Example Usage
///
/// ### Network Management Connectivity Test Run Instances
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpc = new gcp.compute.Network("vpc", {name: "conn-test-net"});
/// const debian9 = gcp.compute.getImage({
/// family: "debian-11",
/// project: "debian-cloud",
/// });
/// const source = new gcp.compute.Instance("source", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: vpc.id,
/// }],
/// name: "source-vm",
/// machineType: "e2-medium",
/// bootDisk: {
/// initializeParams: {
/// image: debian9.then(debian9 => debian9.id),
/// },
/// },
/// });
/// const destination = new gcp.compute.Instance("destination", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: vpc.id,
/// }],
/// name: "dest-vm",
/// machineType: "e2-medium",
/// bootDisk: {
/// initializeParams: {
/// image: debian9.then(debian9 => debian9.id),
/// },
/// },
/// });
/// const instance_test = new gcp.networkmanagement.ConnectivityTest("instance-test", {
/// name: "conn-test-instances",
/// source: {
/// instance: source.id,
/// },
/// destination: {
/// instance: destination.id,
/// },
/// protocol: "TCP",
/// labels: {
/// env: "test",
/// },
/// });
/// const instance_test_run = gcp.networkmanagement.getConnectivityTestRunOutput({
/// name: instance_test.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc = gcp.compute.Network("vpc", name="conn-test-net")
/// debian9 = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// source = gcp.compute.Instance("source",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "network": vpc.id,
/// }],
/// name="source-vm",
/// machine_type="e2-medium",
/// boot_disk={
/// "initialize_params": {
/// "image": debian9.id,
/// },
/// })
/// destination = gcp.compute.Instance("destination",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "network": vpc.id,
/// }],
/// name="dest-vm",
/// machine_type="e2-medium",
/// boot_disk={
/// "initialize_params": {
/// "image": debian9.id,
/// },
/// })
/// instance_test = gcp.networkmanagement.ConnectivityTest("instance-test",
/// name="conn-test-instances",
/// source={
/// "instance": source.id,
/// },
/// destination={
/// "instance": destination.id,
/// },
/// protocol="TCP",
/// labels={
/// "env": "test",
/// })
/// instance_test_run = gcp.networkmanagement.get_connectivity_test_run_output(name=instance_test.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var vpc = new Gcp.Compute.Network("vpc", new()
/// {
/// Name = "conn-test-net",
/// });
///
/// var debian9 = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-11",
/// Project = "debian-cloud",
/// });
///
/// var source = new Gcp.Compute.Instance("source", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = vpc.Id,
/// },
/// },
/// Name = "source-vm",
/// MachineType = "e2-medium",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = debian9.Apply(getImageResult => getImageResult.Id),
/// },
/// },
/// });
///
/// var destination = new Gcp.Compute.Instance("destination", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = vpc.Id,
/// },
/// },
/// Name = "dest-vm",
/// MachineType = "e2-medium",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = debian9.Apply(getImageResult => getImageResult.Id),
/// },
/// },
/// });
///
/// var instance_test = new Gcp.NetworkManagement.ConnectivityTest("instance-test", new()
/// {
/// Name = "conn-test-instances",
/// Source = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceArgs
/// {
/// Instance = source.Id,
/// },
/// Destination = new Gcp.NetworkManagement.Inputs.ConnectivityTestDestinationArgs
/// {
/// Instance = destination.Id,
/// },
/// Protocol = "TCP",
/// Labels =
/// {
/// { "env", "test" },
/// },
/// });
///
/// var instance_test_run = Gcp.NetworkManagement.GetConnectivityTestRun.Invoke(new()
/// {
/// Name = instance_test.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// vpc, err := compute.NewNetwork(ctx, "vpc", &compute.NetworkArgs{
/// Name: pulumi.String("conn-test-net"),
/// })
/// if err != nil {
/// return err
/// }
/// debian9, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-11"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// source, err := compute.NewInstance(ctx, "source", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Network: vpc.ID(),
/// },
/// },
/// Name:        pulumi.String("source-vm"),
/// MachineType: pulumi.String("e2-medium"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String(debian9.Id),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// destination, err := compute.NewInstance(ctx, "destination", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Network: vpc.ID(),
/// },
/// },
/// Name:        pulumi.String("dest-vm"),
/// MachineType: pulumi.String("e2-medium"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String(debian9.Id),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// instance_test, err := networkmanagement.NewConnectivityTest(ctx, "instance-test", &networkmanagement.ConnectivityTestArgs{
/// Name: pulumi.String("conn-test-instances"),
/// Source: &networkmanagement.ConnectivityTestSourceArgs{
/// Instance: source.ID(),
/// },
/// Destination: &networkmanagement.ConnectivityTestDestinationArgs{
/// Instance: destination.ID(),
/// },
/// Protocol: pulumi.String("TCP"),
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("test"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _ = networkmanagement.GetConnectivityTestRunOutput(ctx, networkmanagement.GetConnectivityTestRunOutputArgs{
/// Name: instance_test.Name,
/// }, nil)
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTest;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTestArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestDestinationArgs;
/// import com.pulumi.gcp.networkmanagement.NetworkmanagementFunctions;
/// import com.pulumi.gcp.networkmanagement.inputs.GetConnectivityTestRunArgs;
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
/// var vpc = new Network("vpc", NetworkArgs.builder()
/// .name("conn-test-net")
/// .build());
///
/// final var debian9 = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-11")
/// .project("debian-cloud")
/// .build());
///
/// var source = new Instance("source", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .network(vpc.id())
/// .build())
/// .name("source-vm")
/// .machineType("e2-medium")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image(debian9.id())
/// .build())
/// .build())
/// .build());
///
/// var destination = new Instance("destination", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .network(vpc.id())
/// .build())
/// .name("dest-vm")
/// .machineType("e2-medium")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image(debian9.id())
/// .build())
/// .build())
/// .build());
///
/// var instance_test = new ConnectivityTest("instance-test", ConnectivityTestArgs.builder()
/// .name("conn-test-instances")
/// .source(ConnectivityTestSourceArgs.builder()
/// .instance(source.id())
/// .build())
/// .destination(ConnectivityTestDestinationArgs.builder()
/// .instance(destination.id())
/// .build())
/// .protocol("TCP")
/// .labels(Map.of("env", "test"))
/// .build());
///
/// final var instance-test-run = NetworkmanagementFunctions.getConnectivityTestRun(GetConnectivityTestRunArgs.builder()
/// .name(instance_test.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance-test:
/// type: gcp:networkmanagement:ConnectivityTest
/// properties:
/// name: conn-test-instances
/// source:
/// instance: ${source.id}
/// destination:
/// instance: ${destination.id}
/// protocol: TCP
/// labels:
/// env: test
/// source:
/// type: gcp:compute:Instance
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// network: ${vpc.id}
/// name: source-vm
/// machineType: e2-medium
/// bootDisk:
/// initializeParams:
/// image: ${debian9.id}
/// destination:
/// type: gcp:compute:Instance
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// network: ${vpc.id}
/// name: dest-vm
/// machineType: e2-medium
/// bootDisk:
/// initializeParams:
/// image: ${debian9.id}
/// vpc:
/// type: gcp:compute:Network
/// properties:
/// name: conn-test-net
/// variables:
/// instance-test-run:
/// fn::invoke:
/// function: gcp:networkmanagement:getConnectivityTestRun
/// arguments:
/// name: ${["instance-test"].name}
/// debian9:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectivityTestRunResult> getConnectivityTestRun(
  GetConnectivityTestRunArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networkmanagement/getConnectivityTestRun:getConnectivityTestRun',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestRunResult.fromMap(result);
}
