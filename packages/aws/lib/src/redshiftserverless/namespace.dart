import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';

/// Creates a new Amazon Redshift Serverless Namespace.
///
/// > **Note:** Write-Only argument `admin_password_wo` is available to use in place of `admin_password`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.Namespace("example", {namespaceName: "concurrency-scaling"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.Namespace("example", namespace_name="concurrency-scaling")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftServerless.Namespace("example", new()
///     {
///         NamespaceName = "concurrency-scaling",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftserverless.NewNamespace(ctx, "example", &redshiftserverless.NamespaceArgs{
/// 			NamespaceName: pulumi.String("concurrency-scaling"),
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
/// import com.pulumi.aws.redshiftserverless.Namespace;
/// import com.pulumi.aws.redshiftserverless.NamespaceArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceName("concurrency-scaling")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftserverless:Namespace
///     properties:
///       namespaceName: concurrency-scaling
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Namespaces using the `namespace_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/namespace:Namespace example example
/// ```
class Namespace extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of namespace's admin user credentials secret.
  late final pulumi.Output<String> adminPasswordSecretArn;
  /// ID of the KMS key used to encrypt the namespace's admin credentials secret.
  late final pulumi.Output<String> adminPasswordSecretKmsKeyId;
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manage_admin_password` and `admin_user_password_wo`.
  late final pulumi.Output<String?> adminUserPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manage_admin_password` and `admin_user_password`.
  late final pulumi.Output<String?> adminUserPasswordWo;
  /// Used together with `admin_user_password_wo` to trigger an update. Increment this value when an update to the `admin_user_password_wo` is required
  late final pulumi.Output<int?> adminUserPasswordWoVersion;
  /// The username of the administrator for the first database created in the namespace.
  late final pulumi.Output<String> adminUsername;
  /// Amazon Resource Name (ARN) of the Redshift Serverless Namespace.
  late final pulumi.Output<String> arn;
  /// The name of the first database created in the namespace.
  late final pulumi.Output<String> dbName;
  /// The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying `default_iam_role_arn`, it also must be part of `iam_roles`.
  late final pulumi.Output<String?> defaultIamRoleArn;
  /// A list of IAM roles to associate with the namespace.
  late final pulumi.Output<List<String>> iamRoles;
  /// The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  late final pulumi.Output<String> kmsKeyId;
  /// The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  late final pulumi.Output<List<String>?> logExports;
  /// Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// Conflicts with `admin_user_password` and `admin_user_password_wo`.
  late final pulumi.Output<bool?> manageAdminPassword;
  /// The Redshift Namespace ID.
  late final pulumi.Output<String> namespaceId;
  /// The name of the namespace.
  late final pulumi.Output<String> namespaceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_redshiftserverless_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminPasswordSecretArn = registerOutput<String>('adminPasswordSecretArn');
    this.adminPasswordSecretKmsKeyId = registerOutput<String>('adminPasswordSecretKmsKeyId');
    this.adminUserPassword = registerOutput<String?>('adminUserPassword');
    this.adminUserPasswordWo = registerOutput<String?>('adminUserPasswordWo');
    this.adminUserPasswordWoVersion = registerOutput<int?>('adminUserPasswordWoVersion');
    this.adminUsername = registerOutput<String>('adminUsername');
    this.arn = registerOutput<String>('arn');
    this.dbName = registerOutput<String>('dbName');
    this.defaultIamRoleArn = registerOutput<String?>('defaultIamRoleArn');
    this.iamRoles = registerOutput<List<String>>('iamRoles');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.logExports = registerOutput<List<String>?>('logExports');
    this.manageAdminPassword = registerOutput<bool?>('manageAdminPassword');
    this.namespaceId = registerOutput<String>('namespaceId');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
