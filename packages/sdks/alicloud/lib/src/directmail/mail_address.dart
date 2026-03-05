import 'package:pulumi/pulumi.dart' as pulumi;
import 'mail_address_args.dart';
import 'mail_address_state.dart';

/// Provides a Direct Mail Mail Address resource.
///
/// For information about Direct Mail Mail Address and how to use it, see [What is Mail Address](https://www.alibabacloud.com/help/en/directmail/latest/set-up-sender-addresses).
///
/// &gt; **NOTE:** Available since v1.134.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const accountName = config.get("accountName") || "tfexample";
/// const domainName = config.get("domainName") || "alicloud-provider.online";
/// const example = new alicloud.directmail.Domain("example", {domainName: domainName});
/// const exampleMailAddress = new alicloud.directmail.MailAddress("example", {
///     accountName: std.format({
///         input: "%s@%s",
///         args: [
///             accountName,
///             example.domainName,
///         ],
///     }).then(invoke => invoke.result),
///     sendtype: "batch",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// account_name = config.get("accountName")
/// if account_name is None:
///     account_name = "tfexample"
/// domain_name = config.get("domainName")
/// if domain_name is None:
///     domain_name = "alicloud-provider.online"
/// example = alicloud.directmail.Domain("example", domain_name=domain_name)
/// example_mail_address = alicloud.directmail.MailAddress("example",
///     account_name=std.format(input="%s@%s",
///         args=[
///             account_name,
///             example.domain_name,
///         ]).result,
///     sendtype="batch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var accountName = config.Get("accountName") ?? "tfexample";
///     var domainName = config.Get("domainName") ?? "alicloud-provider.online";
///     var example = new AliCloud.DirectMail.Domain("example", new()
///     {
///         DomainName = domainName,
///     });
///
///     var exampleMailAddress = new AliCloud.DirectMail.MailAddress("example", new()
///     {
///         AccountName = Std.Format.Invoke(new()
///         {
///             Input = "%s@%s",
///             Args = new[]
///             {
///                 accountName,
///                 example.DomainName,
///             },
///         }).Apply(invoke => invoke.Result),
///         Sendtype = "batch",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/directmail"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		accountName := "tfexample"
/// 		if param := cfg.Get("accountName"); param != "" {
/// 			accountName = param
/// 		}
/// 		domainName := "alicloud-provider.online"
/// 		if param := cfg.Get("domainName"); param != "" {
/// 			domainName = param
/// 		}
/// 		example, err := directmail.NewDomain(ctx, "example", &directmail.DomainArgs{
/// 			DomainName: pulumi.String(domainName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s@%s",
/// 			Args: []interface{}{
/// 				accountName,
/// 				example.DomainName,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directmail.NewMailAddress(ctx, "example", &directmail.MailAddressArgs{
/// 			AccountName: pulumi.String(invokeFormat.Result),
/// 			Sendtype:    pulumi.String("batch"),
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
/// import com.pulumi.alicloud.directmail.Domain;
/// import com.pulumi.alicloud.directmail.DomainArgs;
/// import com.pulumi.alicloud.directmail.MailAddress;
/// import com.pulumi.alicloud.directmail.MailAddressArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         final var config = ctx.config();
///         final var accountName = config.get("accountName").orElse("tfexample");
///         final var domainName = config.get("domainName").orElse("alicloud-provider.online");
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName(domainName)
///             .build());
///
///         var exampleMailAddress = new MailAddress("exampleMailAddress", MailAddressArgs.builder()
///             .accountName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s@%s")
///                 .args(
///                     accountName,
///                     example.domainName())
///                 .build()).result())
///             .sendtype("batch")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   accountName:
///     type: string
///     default: tfexample
///   domainName:
///     type: string
///     default: alicloud-provider.online
/// resources:
///   example:
///     type: alicloud:directmail:Domain
///     properties:
///       domainName: ${domainName}
///   exampleMailAddress:
///     type: alicloud:directmail:MailAddress
///     name: example
///     properties:
///       accountName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s@%s'
///             args:
///               - ${accountName}
///               - ${example.domainName}
///           return: result
///       sendtype: batch
/// ```
///
///
/// &gt; **Note:**
/// A maximum of 10 mailing addresses can be added.
/// Individual users: Up to 10 mailing addresses can be deleted within a month.
/// Enterprise users: Up to 10 mailing addresses can be deleted within a month.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Direct Mail Mail Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:directmail/mailAddress:MailAddress example <id>
/// ```
class MailAddress extends pulumi.CustomResource {
  /// The sender address. The email address must be filled in the format of account@domain, and only lowercase letters or numbers can be used.
  late final pulumi.Output<String> accountName;
  /// Account password. The password must be length 10-20 string, contains numbers, uppercase letters, lowercase letters at the same time.
  late final pulumi.Output<String?> password;
  /// Return address.
  late final pulumi.Output<String?> replyAddress;
  /// Account type. Valid values: `batch`, `trigger`.
  late final pulumi.Output<String> sendtype;
  /// Account Status freeze: 1, normal: 0.
  late final pulumi.Output<String> status;

  /// Creates a new [MailAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MailAddress]. {@macro pulumi_directmail_mail_address_mail_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MailAddress(
    String name, {
    MailAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:directmail/mailAddress:MailAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    password = registerOutput<String?>('password');
    replyAddress = registerOutput<String?>('replyAddress');
    sendtype = registerOutput<String>('sendtype');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [MailAddress] resource's state with the given [name] and [id].
  static MailAddress get(
    String name,
    pulumi.Input<String> id, {
    MailAddressState? state,
  }) {
    return MailAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MailAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:directmail/mailAddress:MailAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    password = registerOutput<String?>('password');
    replyAddress = registerOutput<String?>('replyAddress');
    sendtype = registerOutput<String>('sendtype');
    status = registerOutput<String>('status');
  }
}
