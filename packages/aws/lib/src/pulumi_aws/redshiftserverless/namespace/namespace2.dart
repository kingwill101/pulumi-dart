import 'package:pulumi/pulumi.dart';
import 'namespace_args2.dart';

/// Creates a new Amazon Redshift Serverless Namespace.
///
/// > **Note:** Write-Only argument <span pulumi-lang-nodejs="`adminPasswordWo`" pulumi-lang-dotnet="`AdminPasswordWo`" pulumi-lang-go="`adminPasswordWo`" pulumi-lang-python="`admin_password_wo`" pulumi-lang-yaml="`adminPasswordWo`" pulumi-lang-java="`adminPasswordWo`">`admin_password_wo`</span> is available to use in place of <span pulumi-lang-nodejs="`adminPassword`" pulumi-lang-dotnet="`AdminPassword`" pulumi-lang-go="`adminPassword`" pulumi-lang-python="`admin_password`" pulumi-lang-yaml="`adminPassword`" pulumi-lang-java="`adminPassword`">`admin_password`</span>. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.RedshiftServerless.Namespace("example", new()
/// {
/// NamespaceName = "concurrency-scaling",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshiftserverless.NewNamespace(ctx, "example", &redshiftserverless.NamespaceArgs{
/// NamespaceName: pulumi.String("concurrency-scaling"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Namespace("example", NamespaceArgs.builder()
/// .namespaceName("concurrency-scaling")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshiftserverless:Namespace
/// properties:
/// namespaceName: concurrency-scaling
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Namespaces using the <span pulumi-lang-nodejs="`namespaceName`" pulumi-lang-dotnet="`NamespaceName`" pulumi-lang-go="`namespaceName`" pulumi-lang-python="`namespace_name`" pulumi-lang-yaml="`namespaceName`" pulumi-lang-java="`namespaceName`">`namespace_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/namespace:Namespace example example
/// ```
class Namespace2 extends CustomResource {
  /// Amazon Resource Name (ARN) of namespace's admin user credentials secret.
  late final Output<String> adminPasswordSecretArn;

  /// ID of the KMS key used to encrypt the namespace's admin credentials secret.
  late final Output<String> adminPasswordSecretKmsKeyId;

  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with <span pulumi-lang-nodejs="`manageAdminPassword`" pulumi-lang-dotnet="`ManageAdminPassword`" pulumi-lang-go="`manageAdminPassword`" pulumi-lang-python="`manage_admin_password`" pulumi-lang-yaml="`manageAdminPassword`" pulumi-lang-java="`manageAdminPassword`">`manage_admin_password`</span> and <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span>.
  late final Output<String?> adminUserPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with <span pulumi-lang-nodejs="`manageAdminPassword`" pulumi-lang-dotnet="`ManageAdminPassword`" pulumi-lang-go="`manageAdminPassword`" pulumi-lang-python="`manage_admin_password`" pulumi-lang-yaml="`manageAdminPassword`" pulumi-lang-java="`manageAdminPassword`">`manage_admin_password`</span> and <span pulumi-lang-nodejs="`adminUserPassword`" pulumi-lang-dotnet="`AdminUserPassword`" pulumi-lang-go="`adminUserPassword`" pulumi-lang-python="`admin_user_password`" pulumi-lang-yaml="`adminUserPassword`" pulumi-lang-java="`adminUserPassword`">`admin_user_password`</span>.
  late final Output<String?> adminUserPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span> is required
  late final Output<int?> adminUserPasswordWoVersion;

  /// The username of the administrator for the first database created in the namespace.
  late final Output<String> adminUsername;

  /// Amazon Resource Name (ARN) of the Redshift Serverless Namespace.
  late final Output<String> arn;

  /// The name of the first database created in the namespace.
  late final Output<String> dbName;

  /// The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying <span pulumi-lang-nodejs="`defaultIamRoleArn`" pulumi-lang-dotnet="`DefaultIamRoleArn`" pulumi-lang-go="`defaultIamRoleArn`" pulumi-lang-python="`default_iam_role_arn`" pulumi-lang-yaml="`defaultIamRoleArn`" pulumi-lang-java="`defaultIamRoleArn`">`default_iam_role_arn`</span>, it also must be part of <span pulumi-lang-nodejs="`iamRoles`" pulumi-lang-dotnet="`IamRoles`" pulumi-lang-go="`iamRoles`" pulumi-lang-python="`iam_roles`" pulumi-lang-yaml="`iamRoles`" pulumi-lang-java="`iamRoles`">`iam_roles`</span>.
  late final Output<String?> defaultIamRoleArn;

  /// A list of IAM roles to associate with the namespace.
  late final Output<List<String>> iamRoles;

  /// The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  late final Output<String> kmsKeyId;

  /// The types of logs the namespace can export. Available export types are <span pulumi-lang-nodejs="`userlog`" pulumi-lang-dotnet="`Userlog`" pulumi-lang-go="`userlog`" pulumi-lang-python="`userlog`" pulumi-lang-yaml="`userlog`" pulumi-lang-java="`userlog`">`userlog`</span>, <span pulumi-lang-nodejs="`connectionlog`" pulumi-lang-dotnet="`Connectionlog`" pulumi-lang-go="`connectionlog`" pulumi-lang-python="`connectionlog`" pulumi-lang-yaml="`connectionlog`" pulumi-lang-java="`connectionlog`">`connectionlog`</span>, and <span pulumi-lang-nodejs="`useractivitylog`" pulumi-lang-dotnet="`Useractivitylog`" pulumi-lang-go="`useractivitylog`" pulumi-lang-python="`useractivitylog`" pulumi-lang-yaml="`useractivitylog`" pulumi-lang-java="`useractivitylog`">`useractivitylog`</span>.
  late final Output<List<String>?> logExports;

  /// Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// Conflicts with <span pulumi-lang-nodejs="`adminUserPassword`" pulumi-lang-dotnet="`AdminUserPassword`" pulumi-lang-go="`adminUserPassword`" pulumi-lang-python="`admin_user_password`" pulumi-lang-yaml="`adminUserPassword`" pulumi-lang-java="`adminUserPassword`">`admin_user_password`</span> and <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span>.
  late final Output<bool?> manageAdminPassword;

  /// The Redshift Namespace ID.
  late final Output<String> namespaceId;

  /// The name of the namespace.
  late final Output<String> namespaceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Namespace2(
    String name, {
    NamespaceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/namespace:Namespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminPasswordSecretArn =
        registerOutput<String>('adminPasswordSecretArn');
    this.adminPasswordSecretKmsKeyId =
        registerOutput<String>('adminPasswordSecretKmsKeyId');
    this.adminUserPassword = registerOutput<String?>('adminUserPassword');
    this.adminUserPasswordWo = registerOutput<String?>('adminUserPasswordWo');
    this.adminUserPasswordWoVersion =
        registerOutput<int?>('adminUserPasswordWoVersion');
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
