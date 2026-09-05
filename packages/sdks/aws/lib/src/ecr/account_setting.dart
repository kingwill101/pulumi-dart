import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_setting_args.dart';
import 'account_setting_state.dart';

/// Provides a resource to manage AWS ECR account settings
///
/// ## Example Usage
///
/// ### Configuring Basic Scanning
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const basicScanTypeVersion = new aws.ecr.AccountSetting("basic_scan_type_version", {
///     name: "BASIC_SCAN_TYPE_VERSION",
///     value: "AWS_NATIVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// basic_scan_type_version = aws.ecr.AccountSetting("basic_scan_type_version",
///     name="BASIC_SCAN_TYPE_VERSION",
///     value="AWS_NATIVE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicScanTypeVersion = new Aws.Ecr.AccountSetting("basic_scan_type_version", new()
///     {
///         Name = "BASIC_SCAN_TYPE_VERSION",
///         Value = "AWS_NATIVE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.NewAccountSetting(ctx, "basic_scan_type_version", &ecr.AccountSettingArgs{
/// 			Name:  pulumi.String("BASIC_SCAN_TYPE_VERSION"),
/// 			Value: pulumi.String("AWS_NATIVE"),
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
/// resource "aws_ecr_accountsetting" "basic_scan_type_version" {
///   name  = "BASIC_SCAN_TYPE_VERSION"
///   value = "AWS_NATIVE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.AccountSetting;
/// import com.pulumi.aws.ecr.AccountSettingArgs;
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
///         var basicScanTypeVersion = new AccountSetting("basicScanTypeVersion", AccountSettingArgs.builder()
///             .name("BASIC_SCAN_TYPE_VERSION")
///             .value("AWS_NATIVE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicScanTypeVersion:
///     type: aws:ecr:AccountSetting
///     name: basic_scan_type_version
///     properties:
///       name: BASIC_SCAN_TYPE_VERSION
///       value: AWS_NATIVE
/// ```
///
///
/// ### Configuring Blob Mounting (Cross-Repository Layer Sharing)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const blobMounting = new aws.ecr.AccountSetting("blob_mounting", {
///     name: "BLOB_MOUNTING",
///     value: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// blob_mounting = aws.ecr.AccountSetting("blob_mounting",
///     name="BLOB_MOUNTING",
///     value="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobMounting = new Aws.Ecr.AccountSetting("blob_mounting", new()
///     {
///         Name = "BLOB_MOUNTING",
///         Value = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.NewAccountSetting(ctx, "blob_mounting", &ecr.AccountSettingArgs{
/// 			Name:  pulumi.String("BLOB_MOUNTING"),
/// 			Value: pulumi.String("ENABLED"),
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
/// resource "aws_ecr_accountsetting" "blob_mounting" {
///   name  = "BLOB_MOUNTING"
///   value = "ENABLED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.AccountSetting;
/// import com.pulumi.aws.ecr.AccountSettingArgs;
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
///         var blobMounting = new AccountSetting("blobMounting", AccountSettingArgs.builder()
///             .name("BLOB_MOUNTING")
///             .value("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   blobMounting:
///     type: aws:ecr:AccountSetting
///     name: blob_mounting
///     properties:
///       name: BLOB_MOUNTING
///       value: ENABLED
/// ```
///
///
/// ### Configuring Registry Policy Scope
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const registryPolicyScope = new aws.ecr.AccountSetting("registry_policy_scope", {
///     name: "REGISTRY_POLICY_SCOPE",
///     value: "V2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// registry_policy_scope = aws.ecr.AccountSetting("registry_policy_scope",
///     name="REGISTRY_POLICY_SCOPE",
///     value="V2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryPolicyScope = new Aws.Ecr.AccountSetting("registry_policy_scope", new()
///     {
///         Name = "REGISTRY_POLICY_SCOPE",
///         Value = "V2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.NewAccountSetting(ctx, "registry_policy_scope", &ecr.AccountSettingArgs{
/// 			Name:  pulumi.String("REGISTRY_POLICY_SCOPE"),
/// 			Value: pulumi.String("V2"),
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
/// resource "aws_ecr_accountsetting" "registry_policy_scope" {
///   name  = "REGISTRY_POLICY_SCOPE"
///   value = "V2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.AccountSetting;
/// import com.pulumi.aws.ecr.AccountSettingArgs;
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
///         var registryPolicyScope = new AccountSetting("registryPolicyScope", AccountSettingArgs.builder()
///             .name("REGISTRY_POLICY_SCOPE")
///             .value("V2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   registryPolicyScope:
///     type: aws:ecr:AccountSetting
///     name: registry_policy_scope
///     properties:
///       name: REGISTRY_POLICY_SCOPE
///       value: V2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Security Configurations using the account setting name. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/accountSetting:AccountSetting foo BASIC_SCAN_TYPE_VERSION
/// ```
class AccountSetting extends pulumi.CustomResource {
  /// Name of the account setting. One of: `BASIC_SCAN_TYPE_VERSION`, `BLOB_MOUNTING`, `REGISTRY_POLICY_SCOPE`.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Setting value that is specified. Valid values are:
  /// * If `name` is specified as `BASIC_SCAN_TYPE_VERSION`, one of: `AWS_NATIVE`, `CLAIR`.
  /// * If `name` is specified as `BLOB_MOUNTING`, one of: `ENABLED`, `DISABLED`.
  /// * If `name` is specified as `REGISTRY_POLICY_SCOPE`, one of: `V1`, `V2`.
  late final pulumi.Output<String> value;

  /// Creates a new [AccountSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSetting]. {@macro pulumi_ecr_account_setting_account_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSetting(
    String name, {
    AccountSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/accountSetting:AccountSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [AccountSetting] resource's state with the given [name] and [id].
  static AccountSetting get(
    String name,
    pulumi.Input<String> id, {
    AccountSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/accountSetting:AccountSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [AccountSetting] resource.
  AccountSetting.reference(String urn)
    : super(
        'aws:ecr/accountSetting:AccountSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    value = registerOutput<String>('value');
  }
}
