import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_registration_args.dart';
import 'account_registration_state.dart';

/// Resource for managing AWS Audit Manager Account Registration.
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
/// const example = new aws.auditmanager.AccountRegistration("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.AccountRegistration("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Auditmanager.AccountRegistration("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewAccountRegistration(ctx, "example", nil)
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
/// import com.pulumi.aws.auditmanager.AccountRegistration;
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
///         var example = new AccountRegistration("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:auditmanager:AccountRegistration
/// ```
///
///
/// ### Deregister On Destroy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.auditmanager.AccountRegistration("example", {deregisterOnDestroy: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.AccountRegistration("example", deregister_on_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Auditmanager.AccountRegistration("example", new()
///     {
///         DeregisterOnDestroy = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewAccountRegistration(ctx, "example", &auditmanager.AccountRegistrationArgs{
/// 			DeregisterOnDestroy: pulumi.Bool(true),
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
/// import com.pulumi.aws.auditmanager.AccountRegistration;
/// import com.pulumi.aws.auditmanager.AccountRegistrationArgs;
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
///         var example = new AccountRegistration("example", AccountRegistrationArgs.builder()
///             .deregisterOnDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:auditmanager:AccountRegistration
///     properties:
///       deregisterOnDestroy: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Account Registration resources using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/accountRegistration:AccountRegistration example us-east-1
/// ```
class AccountRegistration extends pulumi.CustomResource {
  /// Identifier for the delegated administrator account.
  late final pulumi.Output<String?> delegatedAdminAccount;

  /// Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  late final pulumi.Output<bool?> deregisterOnDestroy;

  /// KMS key identifier.
  late final pulumi.Output<String?> kmsKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of the account registration request.
  late final pulumi.Output<String> status;

  /// Creates a new [AccountRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountRegistration]. {@macro pulumi_auditmanager_account_registration_account_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountRegistration(
    String name, {
    AccountRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:auditmanager/accountRegistration:AccountRegistration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    delegatedAdminAccount = registerOutput<String?>('delegatedAdminAccount');
    deregisterOnDestroy = registerOutput<bool?>('deregisterOnDestroy');
    kmsKey = registerOutput<String?>('kmsKey');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AccountRegistration] resource's state with the given [name] and [id].
  static AccountRegistration get(
    String name,
    pulumi.Input<String> id, {
    AccountRegistrationState? state,
  }) {
    return AccountRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:auditmanager/accountRegistration:AccountRegistration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    delegatedAdminAccount = registerOutput<String?>('delegatedAdminAccount');
    deregisterOnDestroy = registerOutput<bool?>('deregisterOnDestroy');
    kmsKey = registerOutput<String?>('kmsKey');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }
}
