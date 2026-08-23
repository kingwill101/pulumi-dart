import 'package:pulumi/pulumi.dart' as pulumi;
import 'idc_application_args.dart';
import 'idc_application_authorized_token_issuer.dart';
import 'idc_application_service_integration.dart';
import 'idc_application_state.dart';

/// Creates a new Amazon Redshift IDC application.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.IdcApplication("example", {
///     iamRoleArn: exampleAwsIamRole.arn,
///     idcDisplayName: "example",
///     idcInstanceArn: exampleAwsSsoadminInstances.arns[0],
///     identityNamespace: "example",
///     redshiftIdcApplicationName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.IdcApplication("example",
///     iam_role_arn=example_aws_iam_role["arn"],
///     idc_display_name="example",
///     idc_instance_arn=example_aws_ssoadmin_instances["arns"][0],
///     identity_namespace="example",
///     redshift_idc_application_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.IdcApplication("example", new()
///     {
///         IamRoleArn = exampleAwsIamRole.Arn,
///         IdcDisplayName = "example",
///         IdcInstanceArn = exampleAwsSsoadminInstances.Arns[0],
///         IdentityNamespace = "example",
///         RedshiftIdcApplicationName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewIdcApplication(ctx, "example", &redshift.IdcApplicationArgs{
/// 			IamRoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// 			IdcDisplayName:             pulumi.String("example"),
/// 			IdcInstanceArn:             pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// 			IdentityNamespace:          pulumi.String("example"),
/// 			RedshiftIdcApplicationName: pulumi.String("example"),
/// 		})
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
/// resource "aws_redshift_idcapplication" "example" {
///   iam_role_arn                  = exampleAwsIamRole.arn
///   idc_display_name              = "example"
///   idc_instance_arn              = exampleAwsSsoadminInstances.arns[0]
///   identity_namespace            = "example"
///   redshift_idc_application_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.IdcApplication;
/// import com.pulumi.aws.redshift.IdcApplicationArgs;
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
///         var example = new IdcApplication("example", IdcApplicationArgs.builder()
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .idcDisplayName("example")
///             .idcInstanceArn(exampleAwsSsoadminInstances.arns()[0])
///             .identityNamespace("example")
///             .redshiftIdcApplicationName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:IdcApplication
///     properties:
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       idcDisplayName: example
///       idcInstanceArn: ${exampleAwsSsoadminInstances.arns[0]}
///       identityNamespace: example
///       redshiftIdcApplicationName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint access using the `redshiftIdcApplicationArn`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/idcApplication:IdcApplication example example
/// ```
class IdcApplication extends pulumi.CustomResource {
  /// Type of application being created. Valid values are `None` or `Lakehouse`.
  late final pulumi.Output<String> applicationType;
  /// Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorizedTokenIssuer documentation for more details.
  late final pulumi.Output<IdcApplicationAuthorizedTokenIssuer?> authorizedTokenIssuer;
  /// IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  late final pulumi.Output<String> iamRoleArn;
  /// Display name for the Amazon Redshift IAM Identity Center application instance.
  late final pulumi.Output<String> idcDisplayName;
  /// ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  late final pulumi.Output<String> idcInstanceArn;
  /// ARN for the Amazon Redshift IAM Identity Center application.
  late final pulumi.Output<String> idcManagedApplicationArn;
  /// Namespace for the Amazon Redshift IAM Identity Center application instance.
  late final pulumi.Output<String> identityNamespace;
  /// ARN of the Redshift application in IAM Identity Center.
  late final pulumi.Output<String> redshiftIdcApplicationArn;
  /// Name of the Redshift application in IAM Identity Center.
  late final pulumi.Output<String> redshiftIdcApplicationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Collection of service integrations for the Redshift IAM Identity Center application. Refer to the serviceIntegration documentation for more details.
  late final pulumi.Output<IdcApplicationServiceIntegration?> serviceIntegration;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [IdcApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdcApplication]. {@macro pulumi_redshift_idc_application_idc_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdcApplication(
    String name, {
    IdcApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/idcApplication:IdcApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationType = registerOutput<String>('applicationType');
    authorizedTokenIssuer = registerOutput<IdcApplicationAuthorizedTokenIssuer?>('authorizedTokenIssuer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdcApplicationAuthorizedTokenIssuer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamRoleArn = registerOutput<String>('iamRoleArn');
    idcDisplayName = registerOutput<String>('idcDisplayName');
    idcInstanceArn = registerOutput<String>('idcInstanceArn');
    idcManagedApplicationArn = registerOutput<String>('idcManagedApplicationArn');
    identityNamespace = registerOutput<String>('identityNamespace');
    redshiftIdcApplicationArn = registerOutput<String>('redshiftIdcApplicationArn');
    redshiftIdcApplicationName = registerOutput<String>('redshiftIdcApplicationName');
    region = registerOutput<String>('region');
    serviceIntegration = registerOutput<IdcApplicationServiceIntegration?>('serviceIntegration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdcApplicationServiceIntegration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [IdcApplication] resource's state with the given [name] and [id].
  static IdcApplication get(
    String name,
    pulumi.Input<String> id, {
    IdcApplicationState? state,
  }) {
    return IdcApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdcApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/idcApplication:IdcApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationType = registerOutput<String>('applicationType');
    authorizedTokenIssuer = registerOutput<IdcApplicationAuthorizedTokenIssuer?>('authorizedTokenIssuer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdcApplicationAuthorizedTokenIssuer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamRoleArn = registerOutput<String>('iamRoleArn');
    idcDisplayName = registerOutput<String>('idcDisplayName');
    idcInstanceArn = registerOutput<String>('idcInstanceArn');
    idcManagedApplicationArn = registerOutput<String>('idcManagedApplicationArn');
    identityNamespace = registerOutput<String>('identityNamespace');
    redshiftIdcApplicationArn = registerOutput<String>('redshiftIdcApplicationArn');
    redshiftIdcApplicationName = registerOutput<String>('redshiftIdcApplicationName');
    region = registerOutput<String>('region');
    serviceIntegration = registerOutput<IdcApplicationServiceIntegration?>('serviceIntegration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdcApplicationServiceIntegration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
