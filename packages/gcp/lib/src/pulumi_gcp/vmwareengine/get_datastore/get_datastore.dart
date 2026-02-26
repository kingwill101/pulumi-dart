import 'package:pulumi/pulumi.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';

/// Use this data source to get details about a datastore resource.
///
/// To get more information about datastore, see:
/// * [API documentation](https://docs.cloud.google.com/vmware-engine/docs/vmware-ecosystem/concepts-nfs-datastores-overview)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testDs = gcp.vmwareengine.getDatastore({
/// name: "example-ds",
/// location: "us-west2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_ds = gcp.vmwareengine.get_datastore(name="example-ds",
/// location="us-west2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testDs = Gcp.VMwareEngine.GetDatastore.Invoke(new()
/// {
/// Name = "example-ds",
/// Location = "us-west2",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vmwareengine.LookupDatastore(ctx, &vmwareengine.LookupDatastoreArgs{
/// Name:     "example-ds",
/// Location: "us-west2",
/// }, nil)
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
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetDatastoreArgs;
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
/// final var testDs = VmwareengineFunctions.getDatastore(GetDatastoreArgs.builder()
/// .name("example-ds")
/// .location("us-west2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// testDs:
/// fn::invoke:
/// function: gcp:vmwareengine:getDatastore
/// arguments:
/// name: example-ds
/// location: us-west2
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getDatastore:getDatastore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}
