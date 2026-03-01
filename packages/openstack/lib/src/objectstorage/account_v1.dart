import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_v1_args.dart';

/// Manages a V1 account resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const account1 = new openstack.objectstorage.AccountV1("account_1", {
///     region: "RegionOne",
///     metadata: {
///         "Temp-Url-Key": "testkey",
///         test: "true",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// account1 = openstack.objectstorage.AccountV1("account_1",
///     region="RegionOne",
///     metadata={
///         "Temp-Url-Key": "testkey",
///         "test": "true",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account1 = new OpenStack.ObjectStorage.AccountV1("account_1", new()
///     {
///         Region = "RegionOne",
///         Metadata =
///         {
///             { "Temp-Url-Key", "testkey" },
///             { "test", "true" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := objectstorage.NewAccountV1(ctx, "account_1", &objectstorage.AccountV1Args{
/// 			Region: pulumi.String("RegionOne"),
/// 			Metadata: pulumi.StringMap{
/// 				"Temp-Url-Key": pulumi.String("testkey"),
/// 				"test":         pulumi.String("true"),
/// 			},
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
/// import com.pulumi.openstack.objectstorage.AccountV1;
/// import com.pulumi.openstack.objectstorage.AccountV1Args;
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
///         var account1 = new AccountV1("account1", AccountV1Args.builder()
///             .region("RegionOne")
///             .metadata(Map.ofEntries(
///                 Map.entry("Temp-Url-Key", "testkey"),
///                 Map.entry("test", "true")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account1:
///     type: openstack:objectstorage:AccountV1
///     name: account_1
///     properties:
///       region: RegionOne
///       metadata:
///         Temp-Url-Key: testkey
///         test: 'true'
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the project ID of the account:
///
/// ```sh
/// $ pulumi import openstack:objectstorage/accountV1:AccountV1 account_1 1202b3d0aaa44cfc8b79475c007b0711
/// ```
class AccountV1 extends pulumi.CustomResource {
  /// The number of bytes used by the account.
  late final pulumi.Output<int> bytesUsed;
  /// The number of containers in the account.
  late final pulumi.Output<int> containerCount;
  /// A map of headers returned for the account.
  late final pulumi.Output<Map<String, String>> headers;
  /// A map of custom key/value pairs to associate with the
  /// account metadata. Changing the `Quota-Bytes` key value is allowed to be
  /// updated only by the cloud administrator.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The number of objects in the account.
  late final pulumi.Output<int> objectCount;
  /// The project ID of the corresponding account. If
  /// omitted, the token's project ID is used. Changing this creates a new account.
  late final pulumi.Output<String> projectId;
  /// The number of bytes allowed for the account.
  late final pulumi.Output<int> quotaBytes;
  /// The region in which to create the account. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// account.
  late final pulumi.Output<String> region;

  /// Creates a new [AccountV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountV1]. {@macro pulumi_objectstorage_account_v1_account_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountV1(
    String name, {
    AccountV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:objectstorage/accountV1:AccountV1',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bytesUsed = registerOutput<int>('bytesUsed');
    this.containerCount = registerOutput<int>('containerCount');
    this.headers = registerOutput<Map<String, String>>('headers');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.objectCount = registerOutput<int>('objectCount');
    this.projectId = registerOutput<String>('projectId');
    this.quotaBytes = registerOutput<int>('quotaBytes');
    this.region = registerOutput<String>('region');
  }
}
