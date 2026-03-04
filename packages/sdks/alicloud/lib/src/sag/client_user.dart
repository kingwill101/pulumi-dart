import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_user_args.dart';
import 'client_user_state.dart';

/// Provides a Sag ClientUser resource. This topic describes how to manage accounts as an administrator. After you configure the network, you can create multiple accounts and distribute them to end users so that clients can access Alibaba Cloud.
///
/// For information about Sag ClientUser and how to use it, see [What is Sag ClientUser](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/createsmartaccessgatewayclientuser).
///
/// &gt; **NOTE:** Available since v1.65.0.
///
/// &gt; **NOTE:** Only the following regions support. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const name = config.get("name") || "tf-example";
/// const sagId = config.get("sagId") || "sag-9bifkfaz4fg***";
/// const _default = new alicloud.sag.ClientUser("default", {
///     sagId: sagId,
///     bandwidth: 20,
///     userMail: "tf-example@abc.com",
///     userName: name,
///     password: "example1234",
///     clientIp: "192.1.10.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// sag_id = config.get("sagId")
/// if sag_id is None:
///     sag_id = "sag-9bifkfaz4fg***"
/// default = alicloud.sag.ClientUser("default",
///     sag_id=sag_id,
///     bandwidth=20,
///     user_mail="tf-example@abc.com",
///     user_name=name,
///     password="example1234",
///     client_ip="192.1.10.0")
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
///     var name = config.Get("name") ?? "tf-example";
///     var sagId = config.Get("sagId") ?? "sag-9bifkfaz4fg***";
///     var @default = new AliCloud.Sag.ClientUser("default", new()
///     {
///         SagId = sagId,
///         Bandwidth = 20,
///         UserMail = "tf-example@abc.com",
///         UserName = name,
///         Password = "example1234",
///         ClientIp = "192.1.10.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		sagId := "sag-9bifkfaz4fg***"
/// 		if param := cfg.Get("sagId"); param != "" {
/// 			sagId = param
/// 		}
/// 		_, err := sag.NewClientUser(ctx, "default", &sag.ClientUserArgs{
/// 			SagId:     pulumi.String(sagId),
/// 			Bandwidth: pulumi.Int(20),
/// 			UserMail:  pulumi.String("tf-example@abc.com"),
/// 			UserName:  pulumi.String(name),
/// 			Password:  pulumi.String("example1234"),
/// 			ClientIp:  pulumi.String("192.1.10.0"),
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
/// import com.pulumi.alicloud.sag.ClientUser;
/// import com.pulumi.alicloud.sag.ClientUserArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var sagId = config.get("sagId").orElse("sag-9bifkfaz4fg***");
///         var default_ = new ClientUser("default", ClientUserArgs.builder()
///             .sagId(sagId)
///             .bandwidth(20)
///             .userMail("tf-example@abc.com")
///             .userName(name)
///             .password("example1234")
///             .clientIp("192.1.10.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
///   sagId:
///     type: string
///     default: sag-9bifkfaz4fg***
/// resources:
///   default:
///     type: alicloud:sag:ClientUser
///     properties:
///       sagId: ${sagId}
///       bandwidth: '20'
///       userMail: tf-example@abc.com
///       userName: ${name}
///       password: example1234
///       clientIp: 192.1.10.0
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Sag ClientUser can be imported using the name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sag/clientUser:ClientUser example sag-abc123456:tf-username-abc123456
/// ```
class ClientUser extends pulumi.CustomResource {
  /// The SAG APP bandwidth that the user can use. Unit: Kbit/s. Maximum value: 2000 Kbit/s.
  late final pulumi.Output<int> bandwidth;

  /// The IP address of the SAG APP. If you specify this parameter, the current account always uses the specified IP address.Note The IP address must be in the private CIDR block of the SAG client.If you do not specify this parameter, the system automatically allocates an IP address from the private CIDR block of the SAG client. In this case, each re-connection uses a different IP address.
  late final pulumi.Output<String?> clientIp;

  /// The password of the KMS Encryption.
  late final pulumi.Output<String?> kmsEncryptedPassword;

  /// The context of the KMS Encryption.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;

  /// The password used to log on to the SAG APP.Both the user name and the password must be specified. If you specify the user name, the password must be specified, too.
  late final pulumi.Output<String> password;

  /// The ID of the SAG instance created for the SAG APP.
  late final pulumi.Output<String> sagId;

  /// The email address of the user. The administrator uses this address to send the account information for logging on to the APP to the user.
  late final pulumi.Output<String> userMail;

  /// The user name. User names in the same SAG APP must be unique.Both the user name and the password must be specified. If you specify the user name, the password must be specified, too.
  late final pulumi.Output<String> userName;

  /// Creates a new [ClientUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientUser]. {@macro pulumi_sag_client_user_client_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientUser(
    String name, {
    ClientUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sag/clientUser:ClientUser',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidth = registerOutput<int>('bandwidth');
    clientIp = registerOutput<String?>('clientIp');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
    password = registerOutput<String>('password');
    sagId = registerOutput<String>('sagId');
    userMail = registerOutput<String>('userMail');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [ClientUser] resource's state with the given [name] and [id].
  static ClientUser get(
    String name,
    pulumi.Input<String> id, {
    ClientUserState? state,
  }) {
    return ClientUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClientUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sag/clientUser:ClientUser',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidth = registerOutput<int>('bandwidth');
    clientIp = registerOutput<String?>('clientIp');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
    password = registerOutput<String>('password');
    sagId = registerOutput<String>('sagId');
    userMail = registerOutput<String>('userMail');
    userName = registerOutput<String>('userName');
  }
}
