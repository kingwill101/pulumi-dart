import 'package:pulumi/pulumi.dart';
import 'delegated_administrator_args.dart';

/// Provides a resource to manage an [AWS Organizations Delegated Administrator](https://docs.aws.amazon.com/organizations/latest/APIReference/API_RegisterDelegatedAdministrator.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.DelegatedAdministrator("example", {
/// accountId: "123456789012",
/// servicePrincipal: "principal",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.DelegatedAdministrator("example",
/// account_id="123456789012",
/// service_principal="principal")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Organizations.DelegatedAdministrator("example", new()
/// {
/// AccountId = "123456789012",
/// ServicePrincipal = "principal",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewDelegatedAdministrator(ctx, "example", &organizations.DelegatedAdministratorArgs{
/// AccountId:        pulumi.String("123456789012"),
/// ServicePrincipal: pulumi.String("principal"),
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
/// import com.pulumi.aws.organizations.DelegatedAdministrator;
/// import com.pulumi.aws.organizations.DelegatedAdministratorArgs;
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
/// var example = new DelegatedAdministrator("example", DelegatedAdministratorArgs.builder()
/// .accountId("123456789012")
/// .servicePrincipal("principal")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:organizations:DelegatedAdministrator
/// properties:
/// accountId: '123456789012'
/// servicePrincipal: principal
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`servicePrincipal`" pulumi-lang-dotnet="`ServicePrincipal`" pulumi-lang-go="`servicePrincipal`" pulumi-lang-python="`service_principal`" pulumi-lang-yaml="`servicePrincipal`" pulumi-lang-java="`servicePrincipal`">`service_principal`</span> (String) Service principal for the AWS service.
/// * <span pulumi-lang-nodejs="`delegatedAccountId`" pulumi-lang-dotnet="`DelegatedAccountId`" pulumi-lang-go="`delegatedAccountId`" pulumi-lang-python="`delegated_account_id`" pulumi-lang-yaml="`delegatedAccountId`" pulumi-lang-java="`delegatedAccountId`">`delegated_account_id`</span> (String) Account ID to be designated as a delegated administrator.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.organizations.DelegatedAdministrator`" pulumi-lang-dotnet="`aws.organizations.DelegatedAdministrator`" pulumi-lang-go="`organizations.DelegatedAdministrator`" pulumi-lang-python="`organizations.DelegatedAdministrator`" pulumi-lang-yaml="`aws.organizations.DelegatedAdministrator`" pulumi-lang-java="`aws.organizations.DelegatedAdministrator`">`aws.organizations.DelegatedAdministrator`</span> using the account ID and its service principal. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/delegatedAdministrator:DelegatedAdministrator example 123456789012/config.amazonaws.com
/// ```
class DelegatedAdministrator extends CustomResource {
  /// The account ID number of the member account in the organization to register as a delegated administrator.
  late final Output<String> accountId;

  /// The Amazon Resource Name (ARN) of the delegated administrator's account.
  late final Output<String> arn;

  /// The date when the account was made a delegated administrator.
  late final Output<String> delegationEnabledDate;

  /// The email address that is associated with the delegated administrator's AWS account.
  late final Output<String> email;

  /// The method by which the delegated administrator's account joined the organization.
  late final Output<String> joinedMethod;

  /// The date when the delegated administrator's account became a part of the organization.
  late final Output<String> joinedTimestamp;

  /// The friendly name of the delegated administrator's account.
  late final Output<String> name;

  /// The service principal of the AWS service for which you want to make the member account a delegated administrator.
  late final Output<String> servicePrincipal;

  /// The status of the delegated administrator's account in the organization.
  late final Output<String> status;

  DelegatedAdministrator(
    String name, {
    DelegatedAdministratorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/delegatedAdministrator:DelegatedAdministrator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.delegationEnabledDate = Output.createUnknown<String>();
    this.email = Output.createUnknown<String>();
    this.joinedMethod = Output.createUnknown<String>();
    this.joinedTimestamp = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.servicePrincipal = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
