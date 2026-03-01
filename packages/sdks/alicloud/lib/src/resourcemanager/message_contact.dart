import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_contact_args.dart';
import 'message_contact_state.dart';

/// Provides a Resource Manager Message Contact resource.
///
/// Message contact for Resource Directory account.
///
/// For information about Resource Manager Message Contact and how to use it, see [What is Message Contact](https://next.api.alibabacloud.com/document/ResourceDirectoryMaster/2022-04-19/AddMessageContact).
///
/// > **NOTE:** Available since v1.259.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.resourcemanager.MessageContact("default", {
///     messageTypes: ["AccountExpenses"],
///     phoneNumber: "86-18626811111",
///     title: "TechnicalDirector",
///     emailAddress: "resourceexample@126.com",
///     messageContactName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.MessageContact("default",
///     message_types=["AccountExpenses"],
///     phone_number="86-18626811111",
///     title="TechnicalDirector",
///     email_address="resourceexample@126.com",
///     message_contact_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.ResourceManager.MessageContact("default", new()
///     {
///         MessageTypes = new[]
///         {
///             "AccountExpenses",
///         },
///         PhoneNumber = "86-18626811111",
///         Title = "TechnicalDirector",
///         EmailAddress = "resourceexample@126.com",
///         MessageContactName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := resourcemanager.NewMessageContact(ctx, "default", &resourcemanager.MessageContactArgs{
/// 			MessageTypes: pulumi.StringArray{
/// 				pulumi.String("AccountExpenses"),
/// 			},
/// 			PhoneNumber:        pulumi.String("86-18626811111"),
/// 			Title:              pulumi.String("TechnicalDirector"),
/// 			EmailAddress:       pulumi.String("resourceexample@126.com"),
/// 			MessageContactName: pulumi.String("example"),
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
/// import com.pulumi.alicloud.resourcemanager.MessageContact;
/// import com.pulumi.alicloud.resourcemanager.MessageContactArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new MessageContact("default", MessageContactArgs.builder()
///             .messageTypes("AccountExpenses")
///             .phoneNumber("86-18626811111")
///             .title("TechnicalDirector")
///             .emailAddress("resourceexample@126.com")
///             .messageContactName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:resourcemanager:MessageContact
///     properties:
///       messageTypes:
///         - AccountExpenses
///       phoneNumber: 86-18626811111
///       title: TechnicalDirector
///       emailAddress: resourceexample@126.com
///       messageContactName: example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Message Contact can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/messageContact:MessageContact example <id>
/// ```
class MessageContact extends pulumi.CustomResource {
  /// The time when the contact was created.
  late final pulumi.Output<String> createTime;
  /// The email address of the contact.
  /// After you specify an email address, you need to call SendEmailVerificationForMessageContact to send verification information to the email address. After the verification is passed, the email address takes effect.
  late final pulumi.Output<String> emailAddress;
  /// The name of the contact.
  /// The name must be unique in your resource directory.
  /// The name must be 2 to 12 characters in length and can contain only letters.
  late final pulumi.Output<String> messageContactName;
  /// The types of messages received by the contact.
  late final pulumi.Output<List<String>> messageTypes;
  /// The mobile phone number of the contact.
  ///
  /// Specify the mobile phone number in the `-` format.
  ///
  /// > **NOTE:**  Only mobile phone numbers in the `86-` format in the Chinese mainland are supported.
  ///
  /// After you specify a mobile phone number, you need to call SendPhoneVerificationForMessageContact to send verification information to the mobile phone number. After the verification is passed, the mobile phone number takes effect.
  late final pulumi.Output<String?> phoneNumber;
  /// The status of the contact.
  late final pulumi.Output<String> status;
  /// The job title of the contact.Valid values:
  /// - FinanceDirector
  /// - TechnicalDirector
  /// - MaintenanceDirector
  /// - CEO
  /// - ProjectDirector
  /// - Other
  late final pulumi.Output<String> title;

  /// Creates a new [MessageContact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MessageContact]. {@macro pulumi_resourcemanager_message_contact_message_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MessageContact(
    String name, {
    MessageContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/messageContact:MessageContact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.emailAddress = registerOutput<String>('emailAddress');
    this.messageContactName = registerOutput<String>('messageContactName');
    this.messageTypes = registerOutput<List<String>>('messageTypes');
    this.phoneNumber = registerOutput<String?>('phoneNumber');
    this.status = registerOutput<String>('status');
    this.title = registerOutput<String>('title');
  }

  /// Gets an existing [MessageContact] resource's state with the given [name] and [id].
  static MessageContact get(
    String name,
    pulumi.Input<String> id, {
    MessageContactState? state,
  }) {
    return MessageContact._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MessageContact._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/messageContact:MessageContact',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.emailAddress = registerOutput<String>('emailAddress');
    this.messageContactName = registerOutput<String>('messageContactName');
    this.messageTypes = registerOutput<List<String>>('messageTypes');
    this.phoneNumber = registerOutput<String?>('phoneNumber');
    this.status = registerOutput<String>('status');
    this.title = registerOutput<String>('title');
  }
}
