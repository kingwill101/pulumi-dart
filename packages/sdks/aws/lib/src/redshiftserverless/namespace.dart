import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_state.dart';

/// Creates a new Amazon Redshift Serverless Namespace.
///
/// &gt; **Note:** Write-Only argument `adminPasswordWo` is available to use in place of `adminPassword`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_redshiftserverless_namespace" "example" {
///   namespace_name = "concurrency-scaling"
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
/// Using `pulumi import`, import Redshift Serverless Namespaces using the `namespaceName`. For example:
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
  /// Conflicts with `manageAdminPassword` and `adminUserPasswordWo`.
  late final pulumi.Output<String?> adminUserPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manageAdminPassword` and `adminUserPassword`.
  late final pulumi.Output<String?> adminUserPasswordWo;
  /// Used together with `adminUserPasswordWo` to trigger an update. Increment this value when an update to the `adminUserPasswordWo` is required
  late final pulumi.Output<int?> adminUserPasswordWoVersion;
  /// The username of the administrator for the first database created in the namespace.
  late final pulumi.Output<String> adminUsername;
  /// Amazon Resource Name (ARN) of the Redshift Serverless Namespace.
  late final pulumi.Output<String> arn;
  /// The name of the first database created in the namespace.
  late final pulumi.Output<String> dbName;
  /// The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying `defaultIamRoleArn`, it also must be part of `iamRoles`.
  late final pulumi.Output<String?> defaultIamRoleArn;
  /// A list of IAM roles to associate with the namespace.
  late final pulumi.Output<List<String>> iamRoles;
  /// The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  late final pulumi.Output<String> kmsKeyId;
  /// The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  late final pulumi.Output<List<String>?> logExports;
  /// Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// Conflicts with `adminUserPassword` and `adminUserPasswordWo`.
  late final pulumi.Output<bool?> manageAdminPassword;
  /// The Redshift Namespace ID.
  late final pulumi.Output<String> namespaceId;
  /// The name of the namespace.
  late final pulumi.Output<String> namespaceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
    adminPasswordSecretArn = registerOutput<String>('adminPasswordSecretArn');
    adminPasswordSecretKmsKeyId = registerOutput<String>('adminPasswordSecretKmsKeyId');
    adminUserPassword = registerOutput<String?>('adminUserPassword');
    adminUserPasswordWo = registerOutput<String?>('adminUserPasswordWo');
    adminUserPasswordWoVersion = registerOutput<int?>('adminUserPasswordWoVersion');
    adminUsername = registerOutput<String>('adminUsername');
    arn = registerOutput<String>('arn');
    dbName = registerOutput<String>('dbName');
    defaultIamRoleArn = registerOutput<String?>('defaultIamRoleArn');
    iamRoles = registerOutput<List<String>>('iamRoles');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    logExports = registerOutput<List<String>?>('logExports');
    manageAdminPassword = registerOutput<bool?>('manageAdminPassword');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminPasswordSecretArn = registerOutput<String>('adminPasswordSecretArn');
    adminPasswordSecretKmsKeyId = registerOutput<String>('adminPasswordSecretKmsKeyId');
    adminUserPassword = registerOutput<String?>('adminUserPassword');
    adminUserPasswordWo = registerOutput<String?>('adminUserPasswordWo');
    adminUserPasswordWoVersion = registerOutput<int?>('adminUserPasswordWoVersion');
    adminUsername = registerOutput<String>('adminUsername');
    arn = registerOutput<String>('arn');
    dbName = registerOutput<String>('dbName');
    defaultIamRoleArn = registerOutput<String?>('defaultIamRoleArn');
    iamRoles = registerOutput<List<String>>('iamRoles');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    logExports = registerOutput<List<String>?>('logExports');
    manageAdminPassword = registerOutput<bool?>('manageAdminPassword');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
