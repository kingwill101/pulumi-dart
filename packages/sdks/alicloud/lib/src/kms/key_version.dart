import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_version_args.dart';
import 'key_version_state.dart';

/// Provides a Alikms Key Version resource. For information about Alikms Key Version and how to use it, see [What is Resource Alikms Key Version](https://www.alibabacloud.com/help/doc-detail/133838.htm).
///
/// &gt; **NOTE:** Available in v1.85.0+.
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
/// const _this = new alicloud.kms.Key("this", {});
/// const keyversion = new alicloud.kms.KeyVersion("keyversion", {keyId: _this.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.kms.Key("this")
/// keyversion = alicloud.kms.KeyVersion("keyversion", key_id=this.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = new AliCloud.Kms.Key("this");
///
///     var keyversion = new AliCloud.Kms.KeyVersion("keyversion", new()
///     {
///         KeyId = @this.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := kms.NewKey(ctx, "this", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewKeyVersion(ctx, "keyversion", &kms.KeyVersionArgs{
/// 			KeyId: this.ID(),
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
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyVersion;
/// import com.pulumi.alicloud.kms.KeyVersionArgs;
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
///         var this_ = new Key("this");
///
///         var keyversion = new KeyVersion("keyversion", KeyVersionArgs.builder()
///             .keyId(this_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   this:
///     type: alicloud:kms:Key
///   keyversion:
///     type: alicloud:kms:KeyVersion
///     properties:
///       keyId: ${this.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alikms key version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/keyVersion:KeyVersion example 72da539a-2fa8-4f2d-b854-*****
/// ```
class KeyVersion extends pulumi.CustomResource {
  /// The id of the master key (CMK).
  ///
  /// &gt; **NOTE:** The minimum interval for creating a Alikms key version is 7 days.
  late final pulumi.Output<String> keyId;
  /// The id of the Alikms key version.
  late final pulumi.Output<String> keyVersionId;

  /// Creates a new [KeyVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyVersion]. {@macro pulumi_kms_key_version_key_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyVersion(
    String name, {
    KeyVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/keyVersion:KeyVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyId = registerOutput<String>('keyId');
    keyVersionId = registerOutput<String>('keyVersionId');
  }

  /// Gets an existing [KeyVersion] resource's state with the given [name] and [id].
  static KeyVersion get(
    String name,
    pulumi.Input<String> id, {
    KeyVersionState? state,
  }) {
    return KeyVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/keyVersion:KeyVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyId = registerOutput<String>('keyId');
    keyVersionId = registerOutput<String>('keyVersionId');
  }
}
