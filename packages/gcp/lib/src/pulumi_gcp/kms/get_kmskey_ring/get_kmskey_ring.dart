import 'package:pulumi/pulumi.dart';
import 'get_kmskey_ring_args.dart';
import 'get_kmskey_ring_result.dart';

/// Provides access to Google Cloud Platform KMS KeyRing. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_ring)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings).
///
/// A KeyRing is a grouping of CryptoKeys for organizational purposes. A KeyRing belongs to a Google Cloud Platform Project
/// and resides in a specific location.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = gcp.kms.getKMSKeyRing({
/// name: "my-key-ring",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.get_kms_key_ring(name="my-key-ring",
/// location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
/// {
/// Name = "my-key-ring",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// Name:     "my-key-ring",
/// Location: "us-central1",
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
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
/// final var myKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
/// .name("my-key-ring")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myKeyRing:
/// fn::invoke:
/// function: gcp:kms:getKMSKeyRing
/// arguments:
/// name: my-key-ring
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetKMSKeyRingResult> getKMSKeyRing(
  GetKMSKeyRingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSKeyRing:getKMSKeyRing',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKMSKeyRingResult.fromMap(result);
}
