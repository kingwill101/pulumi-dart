import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signing_job_args.dart';
import 'get_signing_job_result.dart';
import 'get_signing_profile_args.dart';
import 'get_signing_profile_result.dart';

/// Provides information about a Signer Signing Job.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const buildSigningJob = aws.signer.getSigningJob({
///     jobId: "9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// build_signing_job = aws.signer.get_signing_job(job_id="9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var buildSigningJob = Aws.Signer.GetSigningJob.Invoke(new()
///     {
///         JobId = "9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signer.LookupSigningJob(ctx, &signer.LookupSigningJobArgs{
/// 			JobId: "9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_signer_getsigningjob" "buildSigningJob" {
///   job_id = "9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.signer.SignerFunctions;
/// import com.pulumi.aws.signer.inputs.GetSigningJobArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var buildSigningJob = SignerFunctions.getSigningJob(GetSigningJobArgs.builder()
///             .jobId("9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   buildSigningJob:
///     fn::invoke:
///       function: aws:signer:getSigningJob
///       arguments:
///         jobId: 9ed7e5c3-b8d4-4da0-8459-44e0b068f7ee
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_signer_get_signing_job_get_signing_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSigningJobResult> getSigningJob(
  GetSigningJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:signer/getSigningJob:getSigningJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSigningJobResult.fromMap(result);
}

pulumi.Output<GetSigningJobResult> getSigningJobOutput(
  GetSigningJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:signer/getSigningJob:getSigningJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSigningJobResult.fromMap);
}

/// Provides information about a Signer Signing Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const productionSigningProfile = aws.signer.getSigningProfile({
///     name: "prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK",
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
///     var productionSigningProfile = Aws.Signer.GetSigningProfile.Invoke(new()
///     {
///         Name = "prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signer.LookupSigningProfile(ctx, &signer.LookupSigningProfileArgs{
/// 			Name: "prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_signer_getsigningprofile" "productionSigningProfile" {
///   name = "prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var productionSigningProfile = SignerFunctions.getSigningProfile(GetSigningProfileArgs.builder()
///             .name("prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   productionSigningProfile:
///     fn::invoke:
///       function: aws:signer:getSigningProfile
///       arguments:
///         name: prod_profile_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_signer_get_signing_profile_get_signing_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSigningProfileResult> getSigningProfile(
  GetSigningProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:signer/getSigningProfile:getSigningProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSigningProfileResult.fromMap(result);
}

pulumi.Output<GetSigningProfileResult> getSigningProfileOutput(
  GetSigningProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:signer/getSigningProfile:getSigningProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSigningProfileResult.fromMap);
}
