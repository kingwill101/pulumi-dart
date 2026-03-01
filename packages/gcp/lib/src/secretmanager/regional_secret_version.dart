import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_version_args.dart';
import 'regional_secret_version_customer_managed_encryption.dart';

/// ## Example Usage
///
/// ### Regional Secret Version Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.RegionalSecret("secret-basic", {
///     secretId: "secret-version",
///     location: "us-central1",
/// });
/// const regionalSecretVersionBasic = new gcp.secretmanager.RegionalSecretVersion("regional_secret_version_basic", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.RegionalSecret("secret-basic",
///     secret_id="secret-version",
///     location="us-central1")
/// regional_secret_version_basic = gcp.secretmanager.RegionalSecretVersion("regional_secret_version_basic",
///     secret=secret_basic.id,
///     secret_data="secret-data")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.RegionalSecret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Location = "us-central1",
///     });
///
///     var regionalSecretVersionBasic = new Gcp.SecretManager.RegionalSecretVersion("regional_secret_version_basic", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewRegionalSecret(ctx, "secret-basic", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecretVersion(ctx, "regional_secret_version_basic", &secretmanager.RegionalSecretVersionArgs{
/// 			Secret:     secret_basic.ID(),
/// 			SecretData: pulumi.String("secret-data"),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersion;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersionArgs;
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
///         var secret_basic = new RegionalSecret("secret-basic", RegionalSecretArgs.builder()
///             .secretId("secret-version")
///             .location("us-central1")
///             .build());
///
///         var regionalSecretVersionBasic = new RegionalSecretVersion("regionalSecretVersionBasic", RegionalSecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: secret-version
///       location: us-central1
///   regionalSecretVersionBasic:
///     type: gcp:secretmanager:RegionalSecretVersion
///     name: regional_secret_version_basic
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
/// ```
///
/// ### Regional Secret Version With Base64 Data
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const secret_basic = new gcp.secretmanager.RegionalSecret("secret-basic", {
///     secretId: "secret-version",
///     location: "us-central1",
/// });
/// const regionalSecretVersionBase64 = new gcp.secretmanager.RegionalSecretVersion("regional_secret_version_base64", {
///     secret: secret_basic.id,
///     secretData: std.filebase64({
///         input: "secret-data.pfx",
///     }).then(invoke => invoke.result),
///     isSecretDataBase64: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// secret_basic = gcp.secretmanager.RegionalSecret("secret-basic",
///     secret_id="secret-version",
///     location="us-central1")
/// regional_secret_version_base64 = gcp.secretmanager.RegionalSecretVersion("regional_secret_version_base64",
///     secret=secret_basic.id,
///     secret_data=std.filebase64(input="secret-data.pfx").result,
///     is_secret_data_base64=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.RegionalSecret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Location = "us-central1",
///     });
///
///     var regionalSecretVersionBase64 = new Gcp.SecretManager.RegionalSecretVersion("regional_secret_version_base64", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = Std.Filebase64.Invoke(new()
///         {
///             Input = "secret-data.pfx",
///         }).Apply(invoke => invoke.Result),
///         IsSecretDataBase64 = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewRegionalSecret(ctx, "secret-basic", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "secret-data.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecretVersion(ctx, "regional_secret_version_base64", &secretmanager.RegionalSecretVersionArgs{
/// 			Secret:             secret_basic.ID(),
/// 			SecretData:         pulumi.String(invokeFilebase64.Result),
/// 			IsSecretDataBase64: pulumi.Bool(true),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersion;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var secret_basic = new RegionalSecret("secret-basic", RegionalSecretArgs.builder()
///             .secretId("secret-version")
///             .location("us-central1")
///             .build());
///
///         var regionalSecretVersionBase64 = new RegionalSecretVersion("regionalSecretVersionBase64", RegionalSecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("secret-data.pfx")
///                 .build()).result())
///             .isSecretDataBase64(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: secret-version
///       location: us-central1
///   regionalSecretVersionBase64:
///     type: gcp:secretmanager:RegionalSecretVersion
///     name: regional_secret_version_base64
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: secret-data.pfx
///           return: result
///       isSecretDataBase64: true
/// ```
///
/// ### Regional Secret Version Disabled
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.RegionalSecret("secret-basic", {
///     secretId: "secret-version",
///     location: "us-central1",
/// });
/// const regionalSecretVersionDisabled = new gcp.secretmanager.RegionalSecretVersion("regional_secret_version_disabled", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
///     enabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.RegionalSecret("secret-basic",
///     secret_id="secret-version",
///     location="us-central1")
/// regional_secret_version_disabled = gcp.secretmanager.RegionalSecretVersion("regional_secret_version_disabled",
///     secret=secret_basic.id,
///     secret_data="secret-data",
///     enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.RegionalSecret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Location = "us-central1",
///     });
///
///     var regionalSecretVersionDisabled = new Gcp.SecretManager.RegionalSecretVersion("regional_secret_version_disabled", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///         Enabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewRegionalSecret(ctx, "secret-basic", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecretVersion(ctx, "regional_secret_version_disabled", &secretmanager.RegionalSecretVersionArgs{
/// 			Secret:     secret_basic.ID(),
/// 			SecretData: pulumi.String("secret-data"),
/// 			Enabled:    pulumi.Bool(false),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersion;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersionArgs;
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
///         var secret_basic = new RegionalSecret("secret-basic", RegionalSecretArgs.builder()
///             .secretId("secret-version")
///             .location("us-central1")
///             .build());
///
///         var regionalSecretVersionDisabled = new RegionalSecretVersion("regionalSecretVersionDisabled", RegionalSecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .enabled(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: secret-version
///       location: us-central1
///   regionalSecretVersionDisabled:
///     type: gcp:secretmanager:RegionalSecretVersion
///     name: regional_secret_version_disabled
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///       enabled: false
/// ```
///
/// ### Regional Secret Version Deletion Policy Abandon
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.RegionalSecret("secret-basic", {
///     secretId: "secret-version",
///     location: "us-central1",
/// });
/// const regionalSecretVersionDeletionPolicy = new gcp.secretmanager.RegionalSecretVersion("regional_secret_version_deletion_policy", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
///     deletionPolicy: "ABANDON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.RegionalSecret("secret-basic",
///     secret_id="secret-version",
///     location="us-central1")
/// regional_secret_version_deletion_policy = gcp.secretmanager.RegionalSecretVersion("regional_secret_version_deletion_policy",
///     secret=secret_basic.id,
///     secret_data="secret-data",
///     deletion_policy="ABANDON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.RegionalSecret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Location = "us-central1",
///     });
///
///     var regionalSecretVersionDeletionPolicy = new Gcp.SecretManager.RegionalSecretVersion("regional_secret_version_deletion_policy", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///         DeletionPolicy = "ABANDON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewRegionalSecret(ctx, "secret-basic", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecretVersion(ctx, "regional_secret_version_deletion_policy", &secretmanager.RegionalSecretVersionArgs{
/// 			Secret:         secret_basic.ID(),
/// 			SecretData:     pulumi.String("secret-data"),
/// 			DeletionPolicy: pulumi.String("ABANDON"),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersion;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersionArgs;
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
///         var secret_basic = new RegionalSecret("secret-basic", RegionalSecretArgs.builder()
///             .secretId("secret-version")
///             .location("us-central1")
///             .build());
///
///         var regionalSecretVersionDeletionPolicy = new RegionalSecretVersion("regionalSecretVersionDeletionPolicy", RegionalSecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .deletionPolicy("ABANDON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: secret-version
///       location: us-central1
///   regionalSecretVersionDeletionPolicy:
///     type: gcp:secretmanager:RegionalSecretVersion
///     name: regional_secret_version_deletion_policy
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///       deletionPolicy: ABANDON
/// ```
///
/// ### Regional Secret Version Deletion Policy Disable
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.RegionalSecret("secret-basic", {
///     secretId: "secret-version",
///     location: "us-central1",
/// });
/// const regionalSecretVersionDeletionPolicy = new gcp.secretmanager.RegionalSecretVersion("regional_secret_version_deletion_policy", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
///     deletionPolicy: "DISABLE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.RegionalSecret("secret-basic",
///     secret_id="secret-version",
///     location="us-central1")
/// regional_secret_version_deletion_policy = gcp.secretmanager.RegionalSecretVersion("regional_secret_version_deletion_policy",
///     secret=secret_basic.id,
///     secret_data="secret-data",
///     deletion_policy="DISABLE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.RegionalSecret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Location = "us-central1",
///     });
///
///     var regionalSecretVersionDeletionPolicy = new Gcp.SecretManager.RegionalSecretVersion("regional_secret_version_deletion_policy", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///         DeletionPolicy = "DISABLE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewRegionalSecret(ctx, "secret-basic", &secretmanager.RegionalSecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewRegionalSecretVersion(ctx, "regional_secret_version_deletion_policy", &secretmanager.RegionalSecretVersionArgs{
/// 			Secret:         secret_basic.ID(),
/// 			SecretData:     pulumi.String("secret-data"),
/// 			DeletionPolicy: pulumi.String("DISABLE"),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecret;
/// import com.pulumi.gcp.secretmanager.RegionalSecretArgs;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersion;
/// import com.pulumi.gcp.secretmanager.RegionalSecretVersionArgs;
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
///         var secret_basic = new RegionalSecret("secret-basic", RegionalSecretArgs.builder()
///             .secretId("secret-version")
///             .location("us-central1")
///             .build());
///
///         var regionalSecretVersionDeletionPolicy = new RegionalSecretVersion("regionalSecretVersionDeletionPolicy", RegionalSecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .deletionPolicy("DISABLE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:RegionalSecret
///     properties:
///       secretId: secret-version
///       location: us-central1
///   regionalSecretVersionDeletionPolicy:
///     type: gcp:secretmanager:RegionalSecretVersion
///     name: regional_secret_version_deletion_policy
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///       deletionPolicy: DISABLE
/// ```
///
///
/// ## Import
///
/// RegionalSecretVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
///
/// When using the `pulumi import` command, RegionalSecretVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecretVersion:RegionalSecretVersion default projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}
/// ```
class RegionalSecretVersion extends pulumi.CustomResource {
  /// The time at which the regional secret version was created.
  late final pulumi.Output<String> createTime;
  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionalSecretVersionCustomerManagedEncryption>> customerManagedEncryptions;
  /// The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  late final pulumi.Output<String?> deletionPolicy;
  /// The time at which the regional secret version was destroyed. Only present if state is DESTROYED.
  late final pulumi.Output<String> destroyTime;
  /// The current state of the regional secret version.
  late final pulumi.Output<bool?> enabled;
  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  late final pulumi.Output<bool?> isSecretDataBase64;
  /// Location of Secret Manager regional secret resource.
  late final pulumi.Output<String> location;
  /// The resource name of the regional secret version. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  late final pulumi.Output<String> name;
  /// Secret Manager regional secret resource.
  late final pulumi.Output<String> secret;
  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> secretData;
  /// The version of the Regional Secret.
  late final pulumi.Output<String> version;

  /// Creates a new [RegionalSecretVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalSecretVersion]. {@macro pulumi_secretmanager_regional_secret_version_regional_secret_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalSecretVersion(
    String name, {
    RegionalSecretVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecretVersion:RegionalSecretVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customerManagedEncryptions = registerOutput<List<RegionalSecretVersionCustomerManagedEncryption>>('customerManagedEncryptions');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.destroyTime = registerOutput<String>('destroyTime');
    this.enabled = registerOutput<bool?>('enabled');
    this.isSecretDataBase64 = registerOutput<bool?>('isSecretDataBase64');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.secret = registerOutput<String>('secret');
    this.secretData = registerOutput<String>('secretData');
    this.version = registerOutput<String>('version');
  }
}
