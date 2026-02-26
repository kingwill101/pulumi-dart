import 'package:pulumi/pulumi.dart';
import 'get_standards_control_associations_args.dart';
import 'get_standards_control_associations_result.dart';

/// Data source for managing an AWS Security Hub Standards Control Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testAccount = new aws.securityhub.Account("test", {});
/// const test = aws.securityhub.getStandardsControlAssociations({
/// securityControlId: "IAM.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_account = aws.securityhub.Account("test")
/// test = aws.securityhub.get_standards_control_associations(security_control_id="IAM.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testAccount = new Aws.SecurityHub.Account("test");
///
/// var test = Aws.SecurityHub.GetStandardsControlAssociations.Invoke(new()
/// {
/// SecurityControlId = "IAM.1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securityhub.NewAccount(ctx, "test", nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.GetStandardsControlAssociations(ctx, &securityhub.GetStandardsControlAssociationsArgs{
/// SecurityControlId: "IAM.1",
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.SecurityhubFunctions;
/// import com.pulumi.aws.securityhub.inputs.GetStandardsControlAssociationsArgs;
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
/// var testAccount = new Account("testAccount");
///
/// final var test = SecurityhubFunctions.getStandardsControlAssociations(GetStandardsControlAssociationsArgs.builder()
/// .securityControlId("IAM.1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testAccount:
/// type: aws:securityhub:Account
/// name: test
/// variables:
/// test:
/// fn::invoke:
/// function: aws:securityhub:getStandardsControlAssociations
/// arguments:
/// securityControlId: IAM.1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetStandardsControlAssociationsResult> getStandardsControlAssociations(
  GetStandardsControlAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:securityhub/getStandardsControlAssociations:getStandardsControlAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStandardsControlAssociationsResult.fromMap(result);
}
