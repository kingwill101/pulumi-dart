import 'package:pulumi/pulumi.dart';
import 'get_signing_profile_args.dart';
import 'get_signing_profile_result.dart';

/// Provides information about a Signer Signing Profile.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const productionSigningProfile = aws.signer.getSigningProfile({
/// name: "prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production_signing_profile = aws.signer.get_signing_profile(name="prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var productionSigningProfile = Aws.Signer.GetSigningProfile.Invoke(new()
/// {
/// Name = "prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := signer.LookupSigningProfile(ctx, &signer.LookupSigningProfileArgs{
/// Name: "prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK",
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
/// import com.pulumi.aws.signer.SignerFunctions;
/// import com.pulumi.aws.signer.inputs.GetSigningProfileArgs;
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
/// final var productionSigningProfile = SignerFunctions.getSigningProfile(GetSigningProfileArgs.builder()
/// .name("prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// productionSigningProfile:
/// fn::invoke:
/// function: aws:signer:getSigningProfile
/// arguments:
/// name: prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSigningProfileResult> getSigningProfile(
  GetSigningProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:signer/getSigningProfile:getSigningProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSigningProfileResult.fromMap(result);
}
