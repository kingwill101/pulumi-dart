import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_administrator_args.dart';

/// Provides a resource to manage an [AWS Organizations Delegated Administrator](https://docs.aws.amazon.com/organizations/latest/APIReference/API_RegisterDelegatedAdministrator.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.DelegatedAdministrator("example", {
///     accountId: "123456789012",
///     servicePrincipal: "principal",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.DelegatedAdministrator("example",
///     account_id="123456789012",
///     service_principal="principal")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Organizations.DelegatedAdministrator("example", new()
///     {
///         AccountId = "123456789012",
///         ServicePrincipal = "principal",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewDelegatedAdministrator(ctx, "example", &organizations.DelegatedAdministratorArgs{
/// 			AccountId:        pulumi.String("123456789012"),
/// 			ServicePrincipal: pulumi.String("principal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DelegatedAdministrator("example", DelegatedAdministratorArgs.builder()
///             .accountId("123456789012")
///             .servicePrincipal("principal")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:organizations:DelegatedAdministrator
///     properties:
///       accountId: '123456789012'
///       servicePrincipal: principal
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `service_principal` (String) Service principal for the AWS service.
/// * `delegated_account_id` (String) Account ID to be designated as a delegated administrator.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.organizations.DelegatedAdministrator` using the account ID and its service principal. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/delegatedAdministrator:DelegatedAdministrator example 123456789012/config.amazonaws.com
/// ```
class DelegatedAdministrator extends pulumi.CustomResource {
  /// The account ID number of the member account in the organization to register as a delegated administrator.
  late final pulumi.Output<String> accountId;

  /// The Amazon Resource Name (ARN) of the delegated administrator's account.
  late final pulumi.Output<String> arn;

  /// The date when the account was made a delegated administrator.
  late final pulumi.Output<String> delegationEnabledDate;

  /// The email address that is associated with the delegated administrator's AWS account.
  late final pulumi.Output<String> email;

  /// The method by which the delegated administrator's account joined the organization.
  late final pulumi.Output<String> joinedMethod;

  /// The date when the delegated administrator's account became a part of the organization.
  late final pulumi.Output<String> joinedTimestamp;

  /// The friendly name of the delegated administrator's account.
  late final pulumi.Output<String> name;

  /// The service principal of the AWS service for which you want to make the member account a delegated administrator.
  late final pulumi.Output<String> servicePrincipal;

  /// The status of the delegated administrator's account in the organization.
  late final pulumi.Output<String> status;

  /// Creates a new [DelegatedAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DelegatedAdministrator]. {@macro pulumi_organizations_delegated_administrator_delegated_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DelegatedAdministrator(
    String name, {
    DelegatedAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/delegatedAdministrator:DelegatedAdministrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.delegationEnabledDate =
        registerOutput<String>('delegationEnabledDate');
    this.email = registerOutput<String>('email');
    this.joinedMethod = registerOutput<String>('joinedMethod');
    this.joinedTimestamp = registerOutput<String>('joinedTimestamp');
    this.name = registerOutput<String>('name');
    this.servicePrincipal = registerOutput<String>('servicePrincipal');
    this.status = registerOutput<String>('status');
  }
}
