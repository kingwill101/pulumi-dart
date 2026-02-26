import 'package:pulumi/pulumi.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';

/// Get information about Google Compute Images. Check that your service account has the `compute.imageUser` role if you want to share [custom images](https://cloud.google.com/compute/docs/images/sharing-images-across-projects) from another project. If you want to use [public images][pubimg], do not forget to specify the dedicated project. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/images) and its [API](https://cloud.google.com/compute/docs/reference/latest/images).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImages({
/// filter: "name eq my-image.*",
/// });
/// const _default = new gcp.compute.Instance("default", {
/// name: "test",
/// machineType: "f1-micro",
/// zone: "us-central1-a",
/// bootDisk: {
/// initializeParams: {
/// image: debian.then(debian => debian.images?.[0]?.selfLink),
/// },
/// },
/// networkInterfaces: [{
/// network: defaultGoogleComputeNetwork.name,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_images(filter="name eq my-image.*")
/// default = gcp.compute.Instance("default",
/// name="test",
/// machine_type="f1-micro",
/// zone="us-central1-a",
/// boot_disk={
/// "initialize_params": {
/// "image": debian.images[0].self_link,
/// },
/// },
/// network_interfaces=[{
/// "network": default_google_compute_network["name"],
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
/// var debian = Gcp.Compute.GetImages.Invoke(new()
/// {
/// Filter = "name eq my-image.*",
/// });
///
/// var @default = new Gcp.Compute.Instance("default", new()
/// {
/// Name = "test",
/// MachineType = "f1-micro",
/// Zone = "us-central1-a",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = debian.Apply(getImagesResult => getImagesResult.Images[0]?.SelfLink),
/// },
/// },
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// Network = defaultGoogleComputeNetwork.Name,
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// debian, err := compute.GetImages(ctx, &compute.GetImagesArgs{
/// Filter: pulumi.StringRef("name eq my-image.*"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// Name:        pulumi.String("test"),
/// MachineType: pulumi.String("f1-micro"),
/// Zone:        pulumi.String("us-central1-a"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String(debian.Images[0].SelfLink),
/// },
/// },
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// Network: pulumi.Any(defaultGoogleComputeNetwork.Name),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImagesArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
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
/// final var debian = ComputeFunctions.getImages(GetImagesArgs.builder()
/// .filter("name eq my-image.*")
/// .build());
///
/// var default_ = new Instance("default", InstanceArgs.builder()
/// .name("test")
/// .machineType("f1-micro")
/// .zone("us-central1-a")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image(debian.images()[0].selfLink())
/// .build())
/// .build())
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .network(defaultGoogleComputeNetwork.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Instance
/// properties:
/// name: test
/// machineType: f1-micro
/// zone: us-central1-a
/// bootDisk:
/// initializeParams:
/// image: ${debian.images[0].selfLink}
/// networkInterfaces:
/// - network: ${defaultGoogleComputeNetwork.name}
/// variables:
/// debian:
/// fn::invoke:
/// function: gcp:compute:getImages
/// arguments:
/// filter: name eq my-image.*
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getImages:getImages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}
