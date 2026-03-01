import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_assignment_args.dart';

/// Resource for managing an AWS SSO Admin Application Assignment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssoadmin.ApplicationAssignment("example", {
///     applicationArn: exampleAwsSsoadminApplication.arn,
///     principalId: exampleAwsIdentitystoreUser.userId,
///     principalType: "USER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.ApplicationAssignment("example",
///     application_arn=example_aws_ssoadmin_application["arn"],
///     principal_id=example_aws_identitystore_user["userId"],
///     principal_type="USER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsoAdmin.ApplicationAssignment("example", new()
///     {
///         ApplicationArn = exampleAwsSsoadminApplication.Arn,
///         PrincipalId = exampleAwsIdentitystoreUser.UserId,
///         PrincipalType = "USER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.NewApplicationAssignment(ctx, "example", &ssoadmin.ApplicationAssignmentArgs{
/// 			ApplicationArn: pulumi.Any(exampleAwsSsoadminApplication.Arn),
/// 			PrincipalId:    pulumi.Any(exampleAwsIdentitystoreUser.UserId),
/// 			PrincipalType:  pulumi.String("USER"),
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
/// import com.pulumi.aws.ssoadmin.ApplicationAssignment;
/// import com.pulumi.aws.ssoadmin.ApplicationAssignmentArgs;
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
///         var example = new ApplicationAssignment("example", ApplicationAssignmentArgs.builder()
///             .applicationArn(exampleAwsSsoadminApplication.arn())
///             .principalId(exampleAwsIdentitystoreUser.userId())
///             .principalType("USER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssoadmin:ApplicationAssignment
///     properties:
///       applicationArn: ${exampleAwsSsoadminApplication.arn}
///       principalId: ${exampleAwsIdentitystoreUser.userId}
///       principalType: USER
/// ```
///
///
/// ### Group Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssoadmin.ApplicationAssignment("example", {
///     applicationArn: exampleAwsSsoadminApplication.arn,
///     principalId: exampleAwsIdentitystoreGroup.groupId,
///     principalType: "GROUP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.ApplicationAssignment("example",
///     application_arn=example_aws_ssoadmin_application["arn"],
///     principal_id=example_aws_identitystore_group["groupId"],
///     principal_type="GROUP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsoAdmin.ApplicationAssignment("example", new()
///     {
///         ApplicationArn = exampleAwsSsoadminApplication.Arn,
///         PrincipalId = exampleAwsIdentitystoreGroup.GroupId,
///         PrincipalType = "GROUP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.NewApplicationAssignment(ctx, "example", &ssoadmin.ApplicationAssignmentArgs{
/// 			ApplicationArn: pulumi.Any(exampleAwsSsoadminApplication.Arn),
/// 			PrincipalId:    pulumi.Any(exampleAwsIdentitystoreGroup.GroupId),
/// 			PrincipalType:  pulumi.String("GROUP"),
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
/// import com.pulumi.aws.ssoadmin.ApplicationAssignment;
/// import com.pulumi.aws.ssoadmin.ApplicationAssignmentArgs;
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
///         var example = new ApplicationAssignment("example", ApplicationAssignmentArgs.builder()
///             .applicationArn(exampleAwsSsoadminApplication.arn())
///             .principalId(exampleAwsIdentitystoreGroup.groupId())
///             .principalType("GROUP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssoadmin:ApplicationAssignment
///     properties:
///       applicationArn: ${exampleAwsSsoadminApplication.arn}
///       principalId: ${exampleAwsIdentitystoreGroup.groupId}
///       principalType: GROUP
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Admin Application Assignment using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/applicationAssignment:ApplicationAssignment example arn:aws:sso::123456789012:application/id-12345678,abcd1234,USER
/// ```
class ApplicationAssignment extends pulumi.CustomResource {
  /// ARN of the application.
  late final pulumi.Output<String> applicationArn;

  /// An identifier for an object in IAM Identity Center, such as a user or group.
  late final pulumi.Output<String> principalId;

  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  late final pulumi.Output<String> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ApplicationAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationAssignment]. {@macro pulumi_ssoadmin_application_assignment_application_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationAssignment(
    String name, {
    ApplicationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ssoadmin/applicationAssignment:ApplicationAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.applicationArn = registerOutput<String>('applicationArn');
    this.principalId = registerOutput<String>('principalId');
    this.principalType = registerOutput<String>('principalType');
    this.region = registerOutput<String>('region');
  }
}
