import 'package:pulumi/pulumi.dart';
import 'get_billing_account_args.dart';
import 'get_billing_account_result.dart';

/// Use this data source to get information about a Google Billing Account.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const acct = gcp.organizations.getBillingAccount({
/// displayName: "My Billing Account",
/// open: true,
/// });
/// const myProject = new gcp.organizations.Project("my_project", {
/// name: "My Project",
/// projectId: "your-project-id",
/// orgId: "1234567",
/// billingAccount: acct.then(acct => acct.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// acct = gcp.organizations.get_billing_account(display_name="My Billing Account",
/// open=True)
/// my_project = gcp.organizations.Project("my_project",
/// name="My Project",
/// project_id="your-project-id",
/// org_id="1234567",
/// billing_account=acct.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var acct = Gcp.Organizations.GetBillingAccount.Invoke(new()
/// {
/// DisplayName = "My Billing Account",
/// Open = true,
/// });
///
/// var myProject = new Gcp.Organizations.Project("my_project", new()
/// {
/// Name = "My Project",
/// ProjectId = "your-project-id",
/// OrgId = "1234567",
/// BillingAccount = acct.Apply(getBillingAccountResult => getBillingAccountResult.Id),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// acct, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// DisplayName: pulumi.StringRef("My Billing Account"),
/// Open:        pulumi.BoolRef(true),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// Name:           pulumi.String("My Project"),
/// ProjectId:      pulumi.String("your-project-id"),
/// OrgId:          pulumi.String("1234567"),
/// BillingAccount: pulumi.String(acct.Id),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
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
/// final var acct = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
/// .displayName("My Billing Account")
/// .open(true)
/// .build());
///
/// var myProject = new Project("myProject", ProjectArgs.builder()
/// .name("My Project")
/// .projectId("your-project-id")
/// .orgId("1234567")
/// .billingAccount(acct.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myProject:
/// type: gcp:organizations:Project
/// name: my_project
/// properties:
/// name: My Project
/// projectId: your-project-id
/// orgId: '1234567'
/// billingAccount: ${acct.id}
/// variables:
/// acct:
/// fn::invoke:
/// function: gcp:organizations:getBillingAccount
/// arguments:
/// displayName: My Billing Account
/// open: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBillingAccountResult> getBillingAccount(
  GetBillingAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getBillingAccount:getBillingAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountResult.fromMap(result);
}
