import 'package:pulumi/pulumi.dart';
import 'get_job_iam_policy_args2.dart';
import 'get_job_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for a Dataproc job.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getJobIamPolicy({
/// jobId: pyspark.reference[0].jobId,
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_job_iam_policy(job_id=pyspark["reference"][0]["jobId"],
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Dataproc.GetJobIamPolicy.Invoke(new()
/// {
/// JobId = pyspark.Reference[0].JobId,
/// Region = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.GetJobIamPolicy(ctx, &dataproc.GetJobIamPolicyArgs{
/// JobId:  pyspark.Reference[0].JobId,
/// Region: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetJobIamPolicyArgs;
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
/// final var policy = DataprocFunctions.getJobIamPolicy(GetJobIamPolicyArgs.builder()
/// .jobId(pyspark.reference()[0].jobId())
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataproc:getJobIamPolicy
/// arguments:
/// jobId: ${pyspark.reference[0].jobId}
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetJobIamPolicyResult2> getJobIamPolicy2(
  GetJobIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getJobIamPolicy:getJobIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult2.fromMap(result);
}
