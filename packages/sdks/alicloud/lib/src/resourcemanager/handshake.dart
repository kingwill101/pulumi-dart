import 'package:pulumi/pulumi.dart' as pulumi;
import 'handshake_args.dart';
import 'handshake_state.dart';

/// Provides a Resource Manager Handshake resource.
///
///
///
/// For information about Resource Manager Handshake and how to use it, see [What is Handshake](https://www.alibabacloud.com/help/en/doc-detail/135287.htm).
///
/// &gt; **NOTE:** Available since v1.82.0.
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
/// // Add a Resource Manager handshake.
/// const example = new alicloud.resourcemanager.Handshake("example", {
///     targetEntity: "1182775234******",
///     targetType: "Account",
///     note: "test resource manager handshake",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Add a Resource Manager handshake.
/// example = alicloud.resourcemanager.Handshake("example",
///     target_entity="1182775234******",
///     target_type="Account",
///     note="test resource manager handshake")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Add a Resource Manager handshake.
///     var example = new AliCloud.ResourceManager.Handshake("example", new()
///     {
///         TargetEntity = "1182775234******",
///         TargetType = "Account",
///         Note = "test resource manager handshake",
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Add a Resource Manager handshake.
/// 		_, err := resourcemanager.NewHandshake(ctx, "example", &resourcemanager.HandshakeArgs{
/// 			TargetEntity: pulumi.String("1182775234******"),
/// 			TargetType:   pulumi.String("Account"),
/// 			Note:         pulumi.String("test resource manager handshake"),
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
/// import com.pulumi.alicloud.resourcemanager.Handshake;
/// import com.pulumi.alicloud.resourcemanager.HandshakeArgs;
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
///         // Add a Resource Manager handshake.
///         var example = new Handshake("example", HandshakeArgs.builder()
///             .targetEntity("1182775234******")
///             .targetType("Account")
///             .note("test resource manager handshake")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Add a Resource Manager handshake.
///   example:
///     type: alicloud:resourcemanager:Handshake
///     properties:
///       targetEntity: 1182775234******
///       targetType: Account
///       note: test resource manager handshake
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Handshake can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/handshake:Handshake example <id>
/// ```
class Handshake extends pulumi.CustomResource {
  /// The time when the invitation was created. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// The time when the invitation expires. The time is displayed in UTC.
  late final pulumi.Output<String> expireTime;
  /// The ID of the management account of the resource directory.
  late final pulumi.Output<String> masterAccountId;
  /// The name of the management account of the resource directory.
  late final pulumi.Output<String> masterAccountName;
  /// The time when the invitation was modified. The time is displayed in UTC.
  late final pulumi.Output<String> modifyTime;
  /// The description of the invitation.
  /// The description can be up to 1,024 characters in length.
  late final pulumi.Output<String?> note;
  /// The ID of the resource directory.
  late final pulumi.Output<String> resourceDirectoryId;
  /// The status of the invitation.
  late final pulumi.Output<String> status;
  /// The ID or logon email address of the account that you want to invite.
  late final pulumi.Output<String> targetEntity;
  /// The type of the invited account. Valid values:
  ///
  /// - Account: indicates the ID of the account.
  /// - Email: indicates the logon email address of the account.
  late final pulumi.Output<String> targetType;

  /// Creates a new [Handshake].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Handshake]. {@macro pulumi_resourcemanager_handshake_handshake_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Handshake(
    String name, {
    HandshakeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/handshake:Handshake',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    expireTime = registerOutput<String>('expireTime');
    masterAccountId = registerOutput<String>('masterAccountId');
    masterAccountName = registerOutput<String>('masterAccountName');
    modifyTime = registerOutput<String>('modifyTime');
    note = registerOutput<String?>('note');
    resourceDirectoryId = registerOutput<String>('resourceDirectoryId');
    status = registerOutput<String>('status');
    targetEntity = registerOutput<String>('targetEntity');
    targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [Handshake] resource's state with the given [name] and [id].
  static Handshake get(
    String name,
    pulumi.Input<String> id, {
    HandshakeState? state,
  }) {
    return Handshake._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Handshake._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/handshake:Handshake',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    expireTime = registerOutput<String>('expireTime');
    masterAccountId = registerOutput<String>('masterAccountId');
    masterAccountName = registerOutput<String>('masterAccountName');
    modifyTime = registerOutput<String>('modifyTime');
    note = registerOutput<String?>('note');
    resourceDirectoryId = registerOutput<String>('resourceDirectoryId');
    status = registerOutput<String>('status');
    targetEntity = registerOutput<String>('targetEntity');
    targetType = registerOutput<String>('targetType');
  }
}
