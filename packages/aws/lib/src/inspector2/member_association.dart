import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_association_args.dart';

/// Resource for associating accounts to existing Inspector instances.
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
/// const example = new aws.inspector2.MemberAssociation("example", {accountId: "123456789012"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.inspector2.MemberAssociation("example", account_id="123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Inspector2.MemberAssociation("example", new()
///     {
///         AccountId = "123456789012",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := inspector2.NewMemberAssociation(ctx, "example", &inspector2.MemberAssociationArgs{
/// 			AccountId: pulumi.String("123456789012"),
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
/// import com.pulumi.aws.inspector2.MemberAssociation;
/// import com.pulumi.aws.inspector2.MemberAssociationArgs;
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
///         var example = new MemberAssociation("example", MemberAssociationArgs.builder()
///             .accountId("123456789012")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:inspector2:MemberAssociation
///     properties:
///       accountId: '123456789012'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Inspector Member Association using the `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/memberAssociation:MemberAssociation example 123456789012
/// ```
class MemberAssociation extends pulumi.CustomResource {
  /// ID of the account to associate
  late final pulumi.Output<String> accountId;
  /// Account ID of the delegated administrator account
  late final pulumi.Output<String> delegatedAdminAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the member relationship
  late final pulumi.Output<String> relationshipStatus;
  /// Date and time of the last update of the relationship
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [MemberAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MemberAssociation]. {@macro pulumi_inspector2_member_association_member_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MemberAssociation(
    String name, {
    MemberAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/memberAssociation:MemberAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.delegatedAdminAccountId = registerOutput<String>('delegatedAdminAccountId');
    this.region = registerOutput<String>('region');
    this.relationshipStatus = registerOutput<String>('relationshipStatus');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
